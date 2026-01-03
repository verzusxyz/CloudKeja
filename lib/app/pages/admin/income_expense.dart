import 'package:flutter/material.dart';
import 'package:cloudkeja/app/data/models/admin/income.dart';
import 'package:cloudkeja/app/data/models/admin/expense.dart';
import 'package:cloudkeja/app/data/models/admin/income_category.dart';
import 'package:cloudkeja/app/data/models/admin/expense_category.dart';
import 'package:cloudkeja/app/data/repositories/admin_repository/admin_repository.dart';

import 'package:auto_route/auto_route.dart';

@RoutePage(name: 'IncomeExpenseRoute')
class IncomeExpensePage extends StatefulWidget {
  const IncomeExpensePage({super.key});

  @override
  State<IncomeExpensePage> createState() => _IncomeExpenseState();
}

class _IncomeExpenseState extends State<IncomeExpensePage> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  List<Income> incomes = [];
  List<Expense> expenses = [];
  List<IncomeCategory> incomeCategories = [];
  List<ExpenseCategory> expenseCategories = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
    loadData();
  }

  Future<void> loadData() async {
    setState(() => isLoading = true);
    try {
      final results = await Future.wait([
        AdminRepository().getIncomes(),
        AdminRepository().getExpenses(),
        AdminRepository().getIncomeCategories(),
        AdminRepository().getExpenseCategories(),
      ]);
      incomes = results[0] as List<Income>;
      expenses = results[1] as List<Expense>;
      incomeCategories = results[2] as List<IncomeCategory>;
      expenseCategories = results[3] as List<ExpenseCategory>;
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Failed to load data: $e'), backgroundColor: Colors.red),
      );
    } finally {
      if (mounted) setState(() => isLoading = false);
    }
  }

  void showAddEditIncome({Income? income}) {
    final formKey = GlobalKey<FormState>();
    String description = income?.description ?? '';
    double amount = income?.amount ?? 0.0;
    int categoryId = income?.categoryId ?? (incomeCategories.isNotEmpty ? incomeCategories.first.id : 0);
    DateTime date = income?.date ?? DateTime.now();

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(income == null ? 'Add Income' : 'Edit Income'),
        content: Form(
          key: formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextFormField(
                initialValue: description,
                decoration: const InputDecoration(labelText: 'Description'),
                validator: (value) => value!.isEmpty ? 'Required' : null,
                onChanged: (v) => description = v,
              ),
              TextFormField(
                initialValue: amount.toString(),
                decoration: const InputDecoration(labelText: 'Amount'),
                keyboardType: TextInputType.number,
                validator: (value) => value!.isEmpty ? 'Required' : null,
                onChanged: (v) => amount = double.tryParse(v) ?? 0.0,
              ),
              DropdownButtonFormField<int>(
                value: categoryId,
                decoration: const InputDecoration(labelText: 'Category'),
                items: incomeCategories.map((cat) => DropdownMenuItem(value: cat.id, child: Text(cat.name))).toList(),
                onChanged: (v) => categoryId = v ?? 0,
              ),
              TextButton(
                onPressed: () async {
                  final selected = await showDatePicker(
                    context: context,
                    initialDate: date,
                    firstDate: DateTime(2000),
                    lastDate: DateTime.now(),
                  );
                  if (selected != null) {
                    date = selected;
                    setState(() {});
                  }
                },
                child: Text('Select Date: ${date.toString().split(' ')[0]}'),
              ),
            ],
          ),
        ),
        actions: [
          TextButton(onPressed: () => Navigator.pop(context), child: const Text('Cancel')),
          TextButton(
            onPressed: () async {
              if (formKey.currentState!.validate()) {
                final newIncome = Income(
                  id: income?.id ?? 0,
                  description: description,
                  amount: amount,
                  categoryId: categoryId,
                  date: date,
                );
                try {
                  if (income == null) {
                    await AdminRepository().createIncome(newIncome);
                  } else {
                    await AdminRepository().updateIncome(newIncome);
                  }
                  if (mounted) Navigator.pop(context);
                  loadData();
                } catch (e) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Failed to save income: $e'), backgroundColor: Colors.red),
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

  void showAddEditExpense({Expense? expense}) {
    final formKey = GlobalKey<FormState>();
    String description = expense?.description ?? '';
    double amount = expense?.amount ?? 0.0;
    int categoryId = expense?.categoryId ?? (expenseCategories.isNotEmpty ? expenseCategories.first.id : 0);
    DateTime date = expense?.date ?? DateTime.now();

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(expense == null ? 'Add Expense' : 'Edit Expense'),
        content: Form(
          key: formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextFormField(
                initialValue: description,
                decoration: const InputDecoration(labelText: 'Description'),
                validator: (value) => value!.isEmpty ? 'Required' : null,
                onChanged: (v) => description = v,
              ),
              TextFormField(
                initialValue: amount.toString(),
                decoration: const InputDecoration(labelText: 'Amount'),
                keyboardType: TextInputType.number,
                validator: (value) => value!.isEmpty ? 'Required' : null,
                onChanged: (v) => amount = double.tryParse(v) ?? 0.0,
              ),
              DropdownButtonFormField<int>(
                value: categoryId,
                decoration: const InputDecoration(labelText: 'Category'),
                items: expenseCategories.map((cat) => DropdownMenuItem(value: cat.id, child: Text(cat.name))).toList(),
                onChanged: (v) => categoryId = v ?? 0,
              ),
              TextButton(
                onPressed: () async {
                  final selected = await showDatePicker(
                    context: context,
                    initialDate: date,
                    firstDate: DateTime(2000),
                    lastDate: DateTime.now(),
                  );
                  if (selected != null) {
                    date = selected;
                    setState(() {});
                  }
                },
                child: Text('Select Date: ${date.toString().split(' ')[0]}'),
              ),
            ],
          ),
        ),
        actions: [
          TextButton(onPressed: () => Navigator.pop(context), child: const Text('Cancel')),
          TextButton(
            onPressed: () async {
              if (formKey.currentState!.validate()) {
                final newExpense = Expense(
                  id: expense?.id ?? 0,
                  description: description,
                  amount: amount,
                  categoryId: categoryId,
                  date: date,
                );
                try {
                  if (expense == null) {
                    await AdminRepository().createExpense(newExpense);
                  } else {
                    await AdminRepository().updateExpense(newExpense);
                  }
                  if (mounted) Navigator.pop(context);
                  loadData();
                } catch (e) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Failed to save expense: $e'), backgroundColor: Colors.red),
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

  void showAddEditIncomeCategory({IncomeCategory? category}) {
    final formKey = GlobalKey<FormState>();
    String name = category?.name ?? '';

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(category == null ? 'Add Income Category' : 'Edit Income Category'),
        content: Form(
          key: formKey,
          child: TextFormField(
            initialValue: name,
            decoration: const InputDecoration(labelText: 'Name'),
            validator: (value) => value!.isEmpty ? 'Required' : null,
            onChanged: (v) => name = v,
          ),
        ),
        actions: [
          TextButton(onPressed: () => Navigator.pop(context), child: const Text('Cancel')),
          TextButton(
            onPressed: () async {
              if (formKey.currentState!.validate()) {
                final newCategory = IncomeCategory(id: category?.id ?? 0, name: name);
                try {
                  if (category == null) {
                    await AdminRepository().createIncomeCategory(newCategory);
                  } else {
                    await AdminRepository().updateIncomeCategory(newCategory);
                  }
                  if (mounted) Navigator.pop(context);
                  loadData();
                } catch (e) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Failed to save income category: $e'), backgroundColor: Colors.red),
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

  void showAddEditExpenseCategory({ExpenseCategory? category}) {
    final formKey = GlobalKey<FormState>();
    String name = category?.name ?? '';

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(category == null ? 'Add Expense Category' : 'Edit Expense Category'),
        content: Form(
          key: formKey,
          child: TextFormField(
            initialValue: name,
            decoration: const InputDecoration(labelText: 'Name'),
            validator: (value) => value!.isEmpty ? 'Required' : null,
            onChanged: (v) => name = v,
          ),
        ),
        actions: [
          TextButton(onPressed: () => Navigator.pop(context), child: const Text('Cancel')),
          TextButton(
            onPressed: () async {
              if (formKey.currentState!.validate()) {
                final newCategory = ExpenseCategory(id: category?.id ?? 0, name: name);
                try {
                  if (category == null) {
                    await AdminRepository().createExpenseCategory(newCategory);
                  } else {
                    await AdminRepository().updateExpenseCategory(newCategory);
                  }
                  if (mounted) Navigator.pop(context);
                  loadData();
                } catch (e) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Failed to save expense category: $e'), backgroundColor: Colors.red),
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
        title: const Text('Income & Expense Tracking'),
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(text: 'Incomes'),
            Tab(text: 'Expenses'),
            Tab(text: 'Income Categories'),
            Tab(text: 'Expense Categories'),
          ],
        ),
      ),
      body: isLoading
          ? const Center(child: CircularProgressIndicator())
          : TabBarView(
              controller: _tabController,
              children: [
                incomes.isEmpty
                    ? const Center(child: Text('No incomes'))
                    : ListView.builder(
                        itemCount: incomes.length,
                        itemBuilder: (context, index) {
                          final income = incomes[index];
                          return ListTile(
                            title: Text(income.description),
                            subtitle: Text('\$${income.amount} - ${income.date.toString().split(' ')[0]}'),
                            trailing: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                IconButton(
                                  icon: const Icon(Icons.edit),
                                  onPressed: () => showAddEditIncome(income: income),
                                ),
                                IconButton(
                                  icon: const Icon(Icons.delete),
                                  onPressed: () async {
                                    try {
                                      await AdminRepository().deleteIncome(income.id);
                                      loadData();
                                    } catch (e) {
                                      ScaffoldMessenger.of(context).showSnackBar(
                                        SnackBar(content: Text('Failed to delete income: $e'), backgroundColor: Colors.red),
                                      );
                                    }
                                  },
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                expenses.isEmpty
                    ? const Center(child: Text('No expenses'))
                    : ListView.builder(
                        itemCount: expenses.length,
                        itemBuilder: (context, index) {
                          final expense = expenses[index];
                          return ListTile(
                            title: Text(expense.description),
                            subtitle: Text('\$${expense.amount} - ${expense.date.toString().split(' ')[0]}'),
                            trailing: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                IconButton(
                                  icon: const Icon(Icons.edit),
                                  onPressed: () => showAddEditExpense(expense: expense),
                                ),
                                IconButton(
                                  icon: const Icon(Icons.delete),
                                  onPressed: () async {
                                    try {
                                      await AdminRepository().deleteExpense(expense.id);
                                      loadData();
                                    } catch (e) {
                                      ScaffoldMessenger.of(context).showSnackBar(
                                        SnackBar(content: Text('Failed to delete expense: $e'), backgroundColor: Colors.red),
                                      );
                                    }
                                  },
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                incomeCategories.isEmpty
                    ? const Center(child: Text('No income categories'))
                    : ListView.builder(
                        itemCount: incomeCategories.length,
                        itemBuilder: (context, index) {
                          final cat = incomeCategories[index];
                          return ListTile(
                            title: Text(cat.name),
                            trailing: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                IconButton(
                                  icon: const Icon(Icons.edit),
                                  onPressed: () => showAddEditIncomeCategory(category: cat),
                                ),
                                IconButton(
                                  icon: const Icon(Icons.delete),
                                  onPressed: () async {
                                    try {
                                      await AdminRepository().deleteIncomeCategory(cat.id);
                                      loadData();
                                    } catch (e) {
                                      ScaffoldMessenger.of(context).showSnackBar(
                                        SnackBar(content: Text('Failed to delete income category: $e'), backgroundColor: Colors.red),
                                      );
                                    }
                                  },
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                expenseCategories.isEmpty
                    ? const Center(child: Text('No expense categories'))
                    : ListView.builder(
                        itemCount: expenseCategories.length,
                        itemBuilder: (context, index) {
                          final cat = expenseCategories[index];
                          return ListTile(
                            title: Text(cat.name),
                            trailing: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                IconButton(
                                  icon: const Icon(Icons.edit),
                                  onPressed: () => showAddEditExpenseCategory(category: cat),
                                ),
                                IconButton(
                                  icon: const Icon(Icons.delete),
                                  onPressed: () async {
                                    try {
                                      await AdminRepository().deleteExpenseCategory(cat.id);
                                      loadData();
                                    } catch (e) {
                                      ScaffoldMessenger.of(context).showSnackBar(
                                        SnackBar(content: Text('Failed to delete expense category: $e'), backgroundColor: Colors.red),
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
          final index = _tabController.index;
          if (index == 0) showAddEditIncome();
          else if (index == 1) showAddEditExpense();
          else if (index == 2) showAddEditIncomeCategory();
          else showAddEditExpenseCategory();
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