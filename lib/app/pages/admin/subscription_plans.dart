import 'package:flutter/material.dart';
import 'package:cloudkeja/app/data/models/admin/plan.dart';
import 'package:cloudkeja/app/data/models/admin/plan_subscribe.dart';
import 'package:cloudkeja/app/data/repositories/admin_repository/admin_repository.dart';

import 'package:auto_route/auto_route.dart';

@RoutePage(name: 'SubscriptionPlansRoute')
class SubscriptionPlansPage extends StatefulWidget {
  const SubscriptionPlansPage({super.key});

  @override
  State<SubscriptionPlansPage> createState() => _SubscriptionPlansState();
}

class _SubscriptionPlansState extends State<SubscriptionPlansPage> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  List<Plan> plans = [];
  List<PlanSubscribe> subscriptions = [];
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
        AdminRepository().getPlans(),
        AdminRepository().getPlanSubscribes(),
      ]);
      plans = results[0] as List<Plan>;
      subscriptions = results[1] as List<PlanSubscribe>;
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Failed to load data: $e'), backgroundColor: Colors.red),
      );
    } finally {
      if (mounted) setState(() => isLoading = false);
    }
  }

  void showAddEditPlan({Plan? plan}) {
    final formKey = GlobalKey<FormState>();
    String name = plan?.name ?? '';
    double price = plan?.price ?? 0.0;

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(plan == null ? 'Add Plan' : 'Edit Plan'),
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
                initialValue: price.toString(),
                decoration: const InputDecoration(labelText: 'Price'),
                keyboardType: TextInputType.number,
                validator: (value) => value!.isEmpty ? 'Required' : null,
                onChanged: (v) => price = double.tryParse(v) ?? 0.0,
              ),
            ],
          ),
        ),
        actions: [
          TextButton(onPressed: () => Navigator.pop(context), child: const Text('Cancel')),
          TextButton(
            onPressed: () async {
              if (formKey.currentState!.validate()) {
                final newPlan = Plan(id: plan?.id ?? 0, name: name, price: price);
                try {
                  if (plan == null) {
                    await AdminRepository().createPlan(newPlan);
                  } else {
                    await AdminRepository().updatePlan(newPlan);
                  }
                  if (mounted) Navigator.pop(context);
                  loadData();
                } catch (e) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Failed to save plan: $e'), backgroundColor: Colors.red),
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

  void showAddEditSubscription({PlanSubscribe? subscribe}) {
    final formKey = GlobalKey<FormState>();
    int landlordId = subscribe?.landlordId ?? 0;
    int planId = subscribe?.planId ?? (plans.isNotEmpty ? plans.first.id : 0);
    DateTime startDate = subscribe?.startDate ?? DateTime.now();
    DateTime endDate = subscribe?.endDate ?? DateTime.now().add(const Duration(days: 30));

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(subscribe == null ? 'Add Subscription' : 'Edit Subscription'),
        content: Form(
          key: formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextFormField(
                initialValue: landlordId.toString(),
                decoration: const InputDecoration(labelText: 'Landlord ID'),
                keyboardType: TextInputType.number,
                validator: (value) => value!.isEmpty ? 'Required' : null,
                onChanged: (v) => landlordId = int.tryParse(v) ?? 0,
              ),
              DropdownButtonFormField<int>(
                value: planId,
                decoration: const InputDecoration(labelText: 'Plan'),
                items: plans.map((p) => DropdownMenuItem(value: p.id, child: Text(p.name))).toList(),
                onChanged: (v) => planId = v ?? 0,
              ),
              TextButton(
                onPressed: () async {
                  final selected = await showDatePicker(
                    context: context,
                    initialDate: startDate,
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2100),
                  );
                  if (selected != null) {
                    startDate = selected;
                    setState(() {});
                  }
                },
                child: Text('Start Date: ${startDate.toString().split(' ')[0]}'),
              ),
              TextButton(
                onPressed: () async {
                  final selected = await showDatePicker(
                    context: context,
                    initialDate: endDate,
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2100),
                  );
                  if (selected != null) {
                    endDate = selected;
                    setState(() {});
                  }
                },
                child: Text('End Date: ${endDate.toString().split(' ')[0]}'),
              ),
            ],
          ),
        ),
        actions: [
          TextButton(onPressed: () => Navigator.pop(context), child: const Text('Cancel')),
          TextButton(
            onPressed: () async {
              if (formKey.currentState!.validate()) {
                final newSubscribe = PlanSubscribe(
                  id: subscribe?.id ?? 0,
                  landlordId: landlordId,
                  planId: planId,
                  startDate: startDate,
                  endDate: endDate,
                );
                try {
                  if (subscribe == null) {
                    await AdminRepository().createPlanSubscribe(newSubscribe);
                  } else {
                    await AdminRepository().updatePlanSubscribe(newSubscribe);
                  }
                  if (mounted) Navigator.pop(context);
                  loadData();
                } catch (e) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Failed to save subscription: $e'), backgroundColor: Colors.red),
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
        title: const Text('Subscription Plans'),
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(text: 'Plans'),
            Tab(text: 'Subscriptions'),
          ],
        ),
      ),
      body: isLoading
          ? const Center(child: CircularProgressIndicator())
          : TabBarView(
              controller: _tabController,
              children: [
                plans.isEmpty
                    ? const Center(child: Text('No plans available'))
                    : ListView.builder(
                        itemCount: plans.length,
                        itemBuilder: (context, index) {
                          final plan = plans[index];
                          return ListTile(
                            title: Text(plan.name),
                            subtitle: Text('\$${plan.price}'),
                            trailing: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                IconButton(
                                  icon: const Icon(Icons.edit),
                                  onPressed: () => showAddEditPlan(plan: plan),
                                ),
                                IconButton(
                                  icon: const Icon(Icons.delete),
                                  onPressed: () async {
                                    try {
                                      await AdminRepository().deletePlan(plan.id);
                                      loadData();
                                    } catch (e) {
                                      ScaffoldMessenger.of(context).showSnackBar(
                                        SnackBar(content: Text('Failed to delete plan: $e'), backgroundColor: Colors.red),
                                      );
                                    }
                                  },
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                subscriptions.isEmpty
                    ? const Center(child: Text('No subscriptions'))
                    : ListView.builder(
                        itemCount: subscriptions.length,
                        itemBuilder: (context, index) {
                          final sub = subscriptions[index];
                          return ListTile(
                            title: Text('Landlord ${sub.landlordId} - Plan ${sub.planId}'),
                            subtitle: Text('From ${sub.startDate.toString().split(' ')[0]} to ${sub.endDate.toString().split(' ')[0]}'),
                            trailing: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                IconButton(
                                  icon: const Icon(Icons.edit),
                                  onPressed: () => showAddEditSubscription(subscribe: sub),
                                ),
                                IconButton(
                                  icon: const Icon(Icons.delete),
                                  onPressed: () async {
                                    try {
                                      await AdminRepository().deletePlanSubscribe(sub.id);
                                      loadData();
                                    } catch (e) {
                                      ScaffoldMessenger.of(context).showSnackBar(
                                        SnackBar(content: Text('Failed to delete subscription: $e'), backgroundColor: Colors.red),
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (_tabController.index == 0) {
            showAddEditPlan();
          } else {
            showAddEditSubscription();
          }
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}