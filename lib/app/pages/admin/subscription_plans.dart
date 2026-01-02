import 'package:flutter/material.dart';
import 'package:get/Get.dart';
import 'package:cloudkeja/app/data/models/admin/plan.dart';
import 'package:cloudkeja/app/data/models/admin/plan_subscribe.dart';
import 'package:cloudkeja/app/data/repositories/admin_repository/admin_repository.dart';

class SubscriptionPlansPage extends StatefulWidget {
  const SubscriptionPlansPage({super.key});

  @override
  State<SubscriptionPlansPage> createState() => _SubscriptionPlansState();
}

class _SubscriptionPlansState extends State<SubscriptionPlansPage> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  List<Plan> plans = [];
  List<PlanSubscribe> subscriptions = [];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    loadData();
  }

  Future<void> loadData() async {
    try {
      plans = await AdminRepository().getPlans();
      subscriptions = await AdminRepository().getPlanSubscribes();
      setState(() {});
    } catch (e) {
      Get.snackbar('Error', 'Failed to load data: $e');
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
                decoration: InputDecoration(labelText: 'Name'),
                validator: (value) => value!.isEmpty ? 'Required' : null,
                onChanged: (value) => name = value,
              ),
              TextFormField(
                initialValue: price.toString(),
                decoration: InputDecoration(labelText: 'Price'),
                keyboardType: TextInputType.number,
                validator: (value) => value!.isEmpty ? 'Required' : null,
                onChanged: (value) => price = double.tryParse(value) ?? 0.0,
              ),
            ],
          ),
        ),
        actions: [
          TextButton(onPressed: () => Navigator.pop(context), child: Text('Cancel')),
          TextButton(
            onPressed: () async {
              if (formKey.currentState!.validate()) {
                Plan newPlan = Plan(id: plan?.id ?? 0, name: name, price: price);
                try {
                  if (plan == null) {
                    await AdminRepository().createPlan(newPlan);
                  } else {
                    await AdminRepository().updatePlan(newPlan);
                  }
                  Navigator.pop(context);
                  loadData();
                } catch (e) {
                  Get.snackbar('Error', 'Failed to save plan: $e');
                }
              }
            },
            child: Text('Save'),
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
                decoration: InputDecoration(labelText: 'Landlord ID'),
                keyboardType: TextInputType.number,
                validator: (value) => value!.isEmpty ? 'Required' : null,
                onChanged: (value) => landlordId = int.tryParse(value) ?? 0,
              ),
              DropdownButtonFormField<int>(
                value: planId,
                decoration: InputDecoration(labelText: 'Plan'),
                items: plans.map((p) => DropdownMenuItem(value: p.id, child: Text(p.name))).toList(),
                validator: (value) => value == 0 ? 'Required' : null,
                onChanged: (value) => planId = value ?? 0,
              ),
              TextButton(
                onPressed: () async {
                  final selectedDate = await showDatePicker(context: context, initialDate: startDate, firstDate: DateTime(2000), lastDate: DateTime(2100));
                  if (selectedDate != null) startDate = selectedDate;
                },
                child: Text('Start Date: ${startDate.toString().split(' ')[0]}'),
              ),
              TextButton(
                onPressed: () async {
                  final selectedDate = await showDatePicker(context: context, initialDate: endDate, firstDate: DateTime(2000), lastDate: DateTime(2100));
                  if (selectedDate != null) endDate = selectedDate;
                },
                child: Text('End Date: ${endDate.toString().split(' ')[0]}'),
              ),
            ],
          ),
        ),
        actions: [
          TextButton(onPressed: () => Navigator.pop(context), child: Text('Cancel')),
          TextButton(
            onPressed: () async {
              if (formKey.currentState!.validate()) {
                PlanSubscribe newSubscribe = PlanSubscribe(id: subscribe?.id ?? 0, landlordId: landlordId, planId: planId, startDate: startDate, endDate: endDate);
                try {
                  if (subscribe == null) {
                    await AdminRepository().createPlanSubscribe(newSubscribe);
                  } else {
                    await AdminRepository().updatePlanSubscribe(newSubscribe);
                  }
                  Navigator.pop(context);
                  loadData();
                } catch (e) {
                  Get.snackbar('Error', 'Failed to save subscription: $e');
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
        title: Text('Subscription Plans'),
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(text: 'Plans'),
            Tab(text: 'Subscriptions'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          ListView.builder(
            itemCount: plans.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(plans[index].name),
                subtitle: Text('\$${plans[index].price}'),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(icon: Icon(Icons.edit), onPressed: () => showAddEditPlan(plan: plans[index])),
                    IconButton(icon: Icon(Icons.delete), onPressed: () async {
                      try {
                        await AdminRepository().deletePlan(plans[index].id);
                        loadData();
                      } catch (e) {
                        Get.snackbar('Error', 'Failed to delete plan: $e');
                      }
                    }),
                  ],
                ),
              );
            },
          ),
          ListView.builder(
            itemCount: subscriptions.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text('Landlord ${subscriptions[index].landlordId} - Plan ${subscriptions[index].planId}'),
                subtitle: Text('From ${subscriptions[index].startDate.toString().split(' ')[0]} to ${subscriptions[index].endDate.toString().split(' ')[0]}'),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(icon: Icon(Icons.edit), onPressed: () => showAddEditSubscription(subscribe: subscriptions[index])),
                    IconButton(icon: Icon(Icons.delete), onPressed: () async {
                      try {
                        await AdminRepository().deletePlanSubscribe(subscriptions[index].id);
                        loadData();
                      } catch (e) {
                        Get.snackbar('Error', 'Failed to delete subscription: $e');
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
        onPressed: () {
          int index = _tabController.index;
          if (index == 0) showAddEditPlan();
          else showAddEditSubscription();
        },
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