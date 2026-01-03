import 'package:flutter/material.dart';
import 'package:cloudkeja/app/data/models/admin/withdraw.dart';
import 'package:cloudkeja/app/data/models/admin/withdraw_method.dart';
import 'package:cloudkeja/app/data/repositories/admin_repository/admin_repository.dart';

import 'package:auto_route/auto_route.dart';

@RoutePage(name: 'WithdrawalManagementRoute')
class WithdrawalManagementPage extends StatefulWidget {
  const WithdrawalManagementPage({super.key});

  @override
  State<WithdrawalManagementPage> createState() => _WithdrawalManagementState();
}

class _WithdrawalManagementState extends State<WithdrawalManagementPage> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  List<Withdraw> withdrawals = [];
  List<WithdrawMethod> methods = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    loadData();
  }

  Future<void> loadData() async {
    setState(() => isLoading = true);
    try {
      final results = await Future.wait([
        AdminRepository().getWithdrawals(),
        AdminRepository().getWithdrawMethods(),
      ]);
      withdrawals = results[0] as List<Withdraw>;
      methods = results[1] as List<WithdrawMethod>;
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Failed to load data: $e'), backgroundColor: Colors.red),
      );
    } finally {
      if (mounted) setState(() => isLoading = false);
    }
  }

  void approveWithdraw(Withdraw withdraw) async {
    try {
      await AdminRepository().updateWithdraw(Withdraw(
        id: withdraw.id,
        landlordId: withdraw.landlordId,
        amount: withdraw.amount,
        status: 'approved',
        date: withdraw.date,
      ));
      loadData();
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Failed to approve withdrawal: $e'), backgroundColor: Colors.red),
      );
    }
  }

  void rejectWithdraw(Withdraw withdraw) async {
    try {
      await AdminRepository().updateWithdraw(Withdraw(
        id: withdraw.id,
        landlordId: withdraw.landlordId,
        amount: withdraw.amount,
        status: 'rejected',
        date: withdraw.date,
      ));
      loadData();
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Failed to reject withdrawal: $e'), backgroundColor: Colors.red),
      );
    }
  }

  void showAddEditMethod({WithdrawMethod? method}) {
    final formKey = GlobalKey<FormState>();
    String name = method?.name ?? '';
    String details = method?.details ?? '';

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(method == null ? 'Add Withdraw Method' : 'Edit Withdraw Method'),
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
                initialValue: details,
                decoration: const InputDecoration(labelText: 'Details'),
                validator: (value) => value!.isEmpty ? 'Required' : null,
                onChanged: (v) => details = v,
              ),
            ],
          ),
        ),
        actions: [
          TextButton(onPressed: () => Navigator.pop(context), child: const Text('Cancel')),
          TextButton(
            onPressed: () async {
              if (formKey.currentState!.validate()) {
                final newMethod = WithdrawMethod(id: method?.id ?? 0, name: name, details: details);
                try {
                  if (method == null) {
                    await AdminRepository().createWithdrawMethod(newMethod);
                  } else {
                    await AdminRepository().updateWithdrawMethod(newMethod);
                  }
                  if (mounted) Navigator.pop(context);
                  loadData();
                } catch (e) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Failed to save method: $e'), backgroundColor: Colors.red),
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
      appBar: AppBar(
        title: const Text('Withdrawal Management'),
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(text: 'Withdrawals'),
            Tab(text: 'Methods'),
          ],
        ),
      ),
      body: isLoading
          ? const Center(child: CircularProgressIndicator())
          : TabBarView(
              controller: _tabController,
              children: [
                withdrawals.isEmpty
                    ? const Center(child: Text('No withdrawals'))
                    : ListView.builder(
                        itemCount: withdrawals.length,
                        itemBuilder: (context, index) {
                          final withdraw = withdrawals[index];
                          return ListTile(
                            title: Text('Landlord ${withdraw.landlordId} - \$${withdraw.amount}'),
                            subtitle: Text('Status: ${withdraw.status} - Date: ${withdraw.date.toString().split(' ')[0]}'),
                            trailing: withdraw.status == 'pending'
                                ? Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      IconButton(icon: const Icon(Icons.check), onPressed: () => approveWithdraw(withdraw)),
                                      IconButton(icon: const Icon(Icons.close), onPressed: () => rejectWithdraw(withdraw)),
                                    ],
                                  )
                                : null,
                          );
                        },
                      ),
                methods.isEmpty
                    ? const Center(child: Text('No methods'))
                    : ListView.builder(
                        itemCount: methods.length,
                        itemBuilder: (context, index) {
                          final method = methods[index];
                          return ListTile(
                            title: Text(method.name),
                            subtitle: Text(method.details),
                            trailing: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                IconButton(
                                  icon: const Icon(Icons.edit),
                                  onPressed: () => showAddEditMethod(method: method),
                                ),
                                IconButton(
                                  icon: const Icon(Icons.delete),
                                  onPressed: () async {
                                    try {
                                      await AdminRepository().deleteWithdrawMethod(method.id);
                                      loadData();
                                    } catch (e) {
                                      ScaffoldMessenger.of(context).showSnackBar(
                                        SnackBar(content: Text('Failed to delete method: $e'), backgroundColor: Colors.red),
                                      );
                                    }
                                  },
                                ),
                              ],
                            ),
                          );
                        },
                      ),
              ],
            ),
      floatingActionButton: _tabController.index == 1
          ? FloatingActionButton(
              onPressed: () => showAddEditMethod(),
              child: const Icon(Icons.add),
            )
          : null,
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}