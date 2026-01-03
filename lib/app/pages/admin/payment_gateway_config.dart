import 'package:flutter/material.dart';
import 'package:cloudkeja/app/data/models/admin/gateway.dart';
import 'package:cloudkeja/app/data/repositories/admin_repository/admin_repository.dart';

import 'package:auto_route/auto_route.dart';

@RoutePage(name: 'PaymentGatewayConfigRoute')
class PaymentGatewayConfigPage extends StatefulWidget {
  const PaymentGatewayConfigPage({super.key});

  @override
  State<PaymentGatewayConfigPage> createState() => _PaymentGatewayConfigState();
}

class _PaymentGatewayConfigState extends State<PaymentGatewayConfigPage> {
  List<Gateway> gateways = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    loadGateways();
  }

  Future<void> loadGateways() async {
    setState(() => isLoading = true);
    try {
      gateways = await AdminRepository().getGateways();
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Failed to load gateways: $e'), backgroundColor: Colors.red),
      );
    } finally {
      if (mounted) setState(() => isLoading = false);
    }
  }

  void showAddEditDialog({Gateway? gateway}) {
    final formKey = GlobalKey<FormState>();
    String name = gateway?.name ?? '';
    String apiKey = gateway?.apiKey ?? '';

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(gateway == null ? 'Add Gateway' : 'Edit Gateway'),
        content: Form(
          key: formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextFormField(
                initialValue: name,
                decoration: const InputDecoration(labelText: 'Name'),
                validator: (value) => value!.isEmpty ? 'Required' : null,
                onChanged: (v) => name = v,
              ),
              TextFormField(
                initialValue: apiKey,
                decoration: const InputDecoration(labelText: 'API Key'),
                validator: (value) => value!.isEmpty ? 'Required' : null,
                onChanged: (v) => apiKey = v,
              ),
            ],
          ),
        ),
        actions: [
          TextButton(onPressed: () => Navigator.pop(context), child: const Text('Cancel')),
          TextButton(
            onPressed: () async {
              if (formKey.currentState!.validate()) {
                final newGateway = Gateway(id: gateway?.id ?? 0, name: name, apiKey: apiKey);
                try {
                  if (gateway == null) {
                    await AdminRepository().createGateway(newGateway);
                  } else {
                    await AdminRepository().updateGateway(newGateway);
                  }
                  if (mounted) Navigator.pop(context);
                  loadGateways();
                } catch (e) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Failed to save gateway: $e'), backgroundColor: Colors.red),
                  );
                }
              }
            },
            child: const Text('Save'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Payment Gateway Configuration')),
      body: isLoading
          ? const Center(child: CircularProgressIndicator())
          : gateways.isEmpty
              ? const Center(child: Text('No gateways configured'))
              : ListView.builder(
                  itemCount: gateways.length,
                  itemBuilder: (context, index) {
                    final gateway = gateways[index];
                    return ListTile(
                      title: Text(gateway.name),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            icon: const Icon(Icons.edit),
                            onPressed: () => showAddEditDialog(gateway: gateway),
                          ),
                          IconButton(
                            icon: const Icon(Icons.delete),
                            onPressed: () async {
                              try {
                                await AdminRepository().deleteGateway(gateway.id);
                                loadGateways();
                              } catch (e) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(content: Text('Failed to delete gateway: $e'), backgroundColor: Colors.red),
                                );
                              }
                            },
                          ),
                        ],
                      ),
                    );
                  },
                ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => showAddEditDialog(),
        child: const Icon(Icons.add),
      ),
    );
  }
}