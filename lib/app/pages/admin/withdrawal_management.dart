import 'package:flutter/material.dart';
import 'package:get/Get.dart';
import 'package:cloudkeja/app/data/models/withdraw.dart';
import 'package:cloudkeja/app/data/models/withdraw_method.dart';
import 'package:cloudkeja/app/data/repositories/admin_repository.dart';

class WithdrawalManagementPage extends StatefulWidget {
  const WithdrawalManagementPage({super.key});

  @override
  State<WithdrawalManagementPage> createState() => _WithdrawalManagementState();
}

class _WithdrawalManagementState extends State<WithdrawalManagementPage> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  List<Withdraw> withdrawals = [];
  List<WithdrawMethod> methods = [];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    loadData();
  }

  Future<void> loadData() async {
    try {
      withdrawals = await AdminRepository().getWithdrawals();
      methods = await AdminRepository().getWithdrawMethods();
      setState(() {});
    } catch (e) {
      Get.snackbar('Error', 'Failed to load data: $e');
    }
  }

  void approveWithdraw(Withdraw withdraw) async {
    try {
      await AdminRepository().updateWithdraw(Withdraw(id: withdraw.id, landlordId: withdraw.landlordId, amount: withdraw.amount, status: 'approved', date: withdraw.date));
      loadData();
    } catch (e) {
      Get.snackbar('Error', 'Failed to approve withdrawal: $e');
    }
  }

  void rejectWithdraw(Withdraw withdraw) async {
    try {
      await AdminRepository().updateWithdraw(Withdraw(id: withdraw.id, landlordId: withdraw.landlordId, amount: withdraw.amount, status: 'rejected', date: withdraw.date));
      loadData();
    } catch (e) {
      Get.snackbar('Error', 'Failed to reject withdrawal: $e');
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
                decoration: InputDecoration(labelText: 'Name'),
                validator: (value) => value!.isEmpty ? 'Required' : null,
                onChanged: (value) => name = value,
              ),
              TextFormField(
                initialValue: details,
                decoration: InputDecoration(labelText: 'Details'),
                validator: (value) => value!.isEmpty ? 'Required' : null,
                onChanged: (value) => details = value,
              ),
            ],
          ),
        ),
        actions: [
          TextButton(onPressed: () => Navigator.pop(context), child: Text('Cancel')),
          TextButton(
            onPressed: () async {
              if (formKey.currentState!.validate()) {
                WithdrawMethod newMethod = WithdrawMethod(id: method?.id ?? 0, name: name, details: details);
                try {
                  if (method == null) {
                    await AdminRepository().createWithdrawMethod(newMethod);
                  } else {
                    await AdminRepository().updateWithdrawMethod(newMethod);
                  }
                  Navigator.pop(context);
                  loadData();
                } catch (e) {
                  Get.snackbar('Error', 'Failed to save method: $e');
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
      appBar: AppBar(
        title: Text('Withdrawal Management'),
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(text: 'Withdrawals'),
            Tab(text: 'Methods'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          ListView.builder(
            itemCount: withdrawals.length,
            itemBuilder: (context, index) {
              final withdraw = withdrawals[index];
              return ListTile(
                title: Text('Landlord ${withdraw.landlordId} - \$${withdraw.amount}'),
                subtitle: Text('Status: ${withdraw.status} - Date: ${withdraw.date.toString().split(' ')[0]}'),
                trailing: withdraw.status == 'pending' ? Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(icon: Icon(Icons.check), onPressed: () => approveWithdraw(withdraw)),
                    IconButton(icon: Icon(Icons.close), onPressed: () => rejectWithdraw(withdraw)),
                  ],
                ) : null,
              );
            },
          ),
          ListView.builder(
            itemCount: methods.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(methods[index].name),
                subtitle: Text(methods[index].details),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(icon: Icon(Icons.edit), onPressed: () => showAddEditMethod(method: methods[index])),
                    IconButton(icon: Icon(Icons.delete), onPressed: () async {
                      try {
                        await AdminRepository().deleteWithdrawMethod(methods[index].id);
                        loadData();
                      } catch (e) {
                        Get.snackbar('Error', 'Failed to delete method: $e');
                      }
                    }),
                  ],
                ),
              );
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => showAddEditMethod(),
        child: Icon(Icons.add),
      ),
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}