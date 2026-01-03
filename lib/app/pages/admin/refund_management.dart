import 'package:flutter/material.dart';
import 'package:cloudkeja/app/data/models/admin/refund_request.dart';
import 'package:cloudkeja/app/data/models/admin/refund_reason.dart';
import 'package:cloudkeja/app/data/repositories/admin_repository/admin_repository.dart';

import 'package:auto_route/auto_route.dart';

@RoutePage(name: 'RefundManagementRoute')
class RefundManagementPage extends StatefulWidget {
  const RefundManagementPage({super.key});

  @override
  State<RefundManagementPage> createState() => _RefundManagementState();
}

class _RefundManagementState extends State<RefundManagementPage> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  List<RefundRequest> requests = [];
  List<RefundReason> reasons = [];
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
        AdminRepository().getRefundRequests(),
        AdminRepository().getRefundReasons(),
      ]);
      requests = results[0] as List<RefundRequest>;
      reasons = results[1] as List<RefundReason>;
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Failed to load data: $e'), backgroundColor: Colors.red),
      );
    } finally {
      if (mounted) setState(() => isLoading = false);
    }
  }

  void approveRefund(RefundRequest request) async {
    try {
      await AdminRepository().updateRefundRequest(RefundRequest(
        id: request.id,
        userId: request.userId,
        amount: request.amount,
        reason: request.reason,
        status: 'approved',
      ));
      loadData();
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Failed to approve refund: $e'), backgroundColor: Colors.red),
      );
    }
  }

  void rejectRefund(RefundRequest request) async {
    try {
      await AdminRepository().updateRefundRequest(RefundRequest(
        id: request.id,
        userId: request.userId,
        amount: request.amount,
        reason: request.reason,
        status: 'rejected',
      ));
      loadData();
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Failed to reject refund: $e'), backgroundColor: Colors.red),
      );
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
            decoration: const InputDecoration(labelText: 'Description'),
            validator: (value) => value!.isEmpty ? 'Required' : null,
            onChanged: (v) => description = v,
          ),
        ),
        actions: [
          TextButton(onPressed: () => Navigator.pop(context), child: const Text('Cancel')),
          TextButton(
            onPressed: () async {
              if (formKey.currentState!.validate()) {
                final newReason = RefundReason(id: reason?.id ?? 0, description: description);
                try {
                  if (reason == null) {
                    await AdminRepository().createRefundReason(newReason);
                  } else {
                    await AdminRepository().updateRefundReason(newReason);
                  }
                  if (mounted) Navigator.pop(context);
                  loadData();
                } catch (e) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Failed to save reason: $e'), backgroundColor: Colors.red),
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
        title: const Text('Refund Management'),
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(text: 'Requests'),
            Tab(text: 'Reasons'),
          ],
        ),
      ),
      body: isLoading
          ? const Center(child: CircularProgressIndicator())
          : TabBarView(
              controller: _tabController,
              children: [
                requests.isEmpty
                    ? const Center(child: Text('No refund requests'))
                    : ListView.builder(
                        itemCount: requests.length,
                        itemBuilder: (context, index) {
                          final request = requests[index];
                          return ListTile(
                            title: Text('User ${request.userId} - \$${request.amount}'),
                            subtitle: Text('Reason: ${request.reason} - Status: ${request.status}'),
                            trailing: request.status == 'pending'
                                ? Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      IconButton(icon: const Icon(Icons.check), onPressed: () => approveRefund(request)),
                                      IconButton(icon: const Icon(Icons.close), onPressed: () => rejectRefund(request)),
                                    ],
                                  )
                                : null,
                          );
                        },
                      ),
                reasons.isEmpty
                    ? const Center(child: Text('No reasons'))
                    : ListView.builder(
                        itemCount: reasons.length,
                        itemBuilder: (context, index) {
                          final reason = reasons[index];
                          return ListTile(
                            title: Text(reason.description),
                            trailing: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                IconButton(
                                  icon: const Icon(Icons.edit),
                                  onPressed: () => showAddEditReason(reason: reason),
                                ),
                                IconButton(
                                  icon: const Icon(Icons.delete),
                                  onPressed: () async {
                                    try {
                                      await AdminRepository().deleteRefundReason(reason.id);
                                      loadData();
                                    } catch (e) {
                                      ScaffoldMessenger.of(context).showSnackBar(
                                        SnackBar(content: Text('Failed to delete reason: $e'), backgroundColor: Colors.red),
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
              onPressed: () => showAddEditReason(),
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