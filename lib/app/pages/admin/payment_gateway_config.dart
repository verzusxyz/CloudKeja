import 'package:flutter/material.dart';
import 'package:get/Get.dart';
import 'package:cloudkeja/app/data/models/gateway.dart';
import 'package:cloudkeja/app/data/repositories/admin_repository.dart';

class PaymentGatewayConfigPage extends StatefulWidget {
  const PaymentGatewayConfigPage({super.key});

  @override
  State<PaymentGatewayConfigPage> createState() => _PaymentGatewayConfigState();
}

class _PaymentGatewayConfigState extends State<PaymentGatewayConfigPage> {
  List<Gateway> gateways = [];

  @override
  void initState() {
    super.initState();
    loadGateways();
  }

  Future<void> loadGateways() async {
    try {
      gateways = await AdminRepository().getGateways();
      setState(() {});
    } catch (e) {
      Get.snackbar('Error', 'Failed to load gateways: $e');
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
                decoration: InputDecoration(labelText: 'Name'),
                validator: (value) => value!.isEmpty ? 'Required' : null,
                onChanged: (value) => name = value,
              ),
              TextFormField(
                initialValue: apiKey,
                decoration: InputDecoration(labelText: 'API Key'),
                validator: (value) => value!.isEmpty ? 'Required' : null,
                onChanged: (value) => apiKey = value,
              ),
            ],
          ),
        ),
        actions: [
          TextButton(onPressed: () => Navigator.pop(context), child: Text('Cancel')),
          TextButton(
            onPressed: () async {
              if (formKey.currentState!.validate()) {
                Gateway newGateway = Gateway(id: gateway?.id ?? 0, name: name, apiKey: apiKey);
                try {
                  if (gateway == null) {
                    await AdminRepository().createGateway(newGateway);
                  } else {
                    await AdminRepository().updateGateway(newGateway);
                  }
                  Navigator.pop(context);
                  loadGateways();
                } catch (e) {
                  Get.snackbar('Error', 'Failed to save gateway: $e');
                }
              }
            },
            child: Text('Save'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Payment Gateway Configuration')),
      body: ListView.builder(
        itemCount: gateways.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(gateways[index].name),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(icon: Icon(Icons.edit), onPressed: () => showAddEditDialog(gateway: gateways[index])),
                IconButton(icon: Icon(Icons.delete), onPressed: () async {
                  try {
                    await AdminRepository().deleteGateway(gateways[index].id);
                    loadGateways();
                  } catch (e) {
                    Get.snackbar('Error', 'Failed to delete gateway: $e');
                  }
                }),
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => showAddEditDialog(),
        child: Icon(Icons.add),
      ),
    );
  }
}