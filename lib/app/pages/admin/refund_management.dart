import 'package:flutter/material.dart';
import 'package:get/Get.dart';
import 'package:cloudkeja/app/data/models/admin/refund_request.dart';
import 'package:cloudkeja/app/data/models/admin/refund_reason.dart';
import 'package:cloudkeja/app/data/repositories/admin_repository/admin_repository.dart';

class RefundManagementPage extends StatefulWidget {
  const RefundManagementPage({super.key});

  @override
  State<RefundManagementPage> createState() => _RefundManagementState();
}

class _RefundManagementState extends State<RefundManagementPage> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  List<RefundRequest> requests = [];
  List<RefundReason> reasons = [];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    loadData();
  }

  Future<void> loadData() async {
    try {
      requests = await AdminRepository().getRefundRequests();
      reasons = await AdminRepository().getRefundReasons();
      setState(() {});
    } catch (e) {
      Get.snackbar('Error', 'Failed to load data: $e');
    }
  }

  void approveRefund(RefundRequest request) async {
    try {
      await AdminRepository().updateRefundRequest(RefundRequest(id: request.id, userId: request.userId, amount: request.amount, reason: request.reason, status: 'approved'));
      loadData();
    } catch (e) {
      Get.snackbar('Error', 'Failed to approve refund: $e');
    }
  }

  void rejectRefund(RefundRequest request) async {
    try {
      await AdminRepository().updateRefundRequest(RefundRequest(id: request.id, userId: request.userId, amount: request.amount, reason: request.reason, status: 'rejected'));
      loadData();
    } catch (e) {
      Get.snackbar('Error', 'Failed to reject refund: $e');
    }
  }

  void showAddEditReason({RefundReason? reason}) {
    final formKey = GlobalKey<FormState>();
    String description = reason?.description ?? '';

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(reason == null ? 'Add Refund Reason' : 'Edit Refund Reason'),
        content: Form(
          key: formKey,
          child: TextFormField(
            initialValue: description,
            decoration: InputDecoration(labelText: 'Description'),
            validator: (value) => value!.isEmpty ? 'Required' : null,
            onChanged: (value) => description = value,
          ),
        ),
        actions: [
          TextButton(onPressed: () => Navigator.pop(context), child: Text('Cancel')),
          TextButton(
            onPressed: () async {
              if (formKey.currentState!.validate()) {
                RefundReason newReason = RefundReason(id: reason?.id ?? 0, description: description);
                try {
                  if (reason == null) {
                    await AdminRepository().createRefundReason(newReason);
                  } else {
                    await AdminRepository().updateRefundReason(newReason);
                  }
                  Navigator.pop(context);
                  loadData();
                } catch (e) {
                  Get.snackbar('Error', 'Failed to save reason: $e');
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
        title: Text('Refund Management'),
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(text: 'Requests'),
            Tab(text: 'Reasons'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          ListView.builder(
            itemCount: requests.length,
            itemBuilder: (context, index) {
              final request = requests[index];
              return ListTile(
                title: Text('User ${request.userId} - \$${request.amount}'),
                subtitle: Text('Reason: ${request.reason} - Status: ${request.status}'),
                trailing: request.status == 'pending' ? Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(icon: Icon(Icons.check), onPressed: () => approveRefund(request)),
                    IconButton(icon: Icon(Icons.close), onPressed: () => rejectRefund(request)),
                  ],
                ) : null,
              );
            },
          ),
          ListView.builder(
            itemCount: reasons.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(reasons[index].description),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(icon: Icon(Icons.edit), onPressed: () => showAddEditReason(reason: reasons[index])),
                    IconButton(icon: Icon(Icons.delete), onPressed: () async {
                      try {
                        await AdminRepository().deleteRefundReason(reasons[index].id);
                        loadData();
                      } catch (e) {
                        Get.snackbar('Error', 'Failed to delete reason: $e');
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
        onPressed: () => showAddEditReason(),
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