import 'package:flutter/material.dart';
import 'package:get/Get.dart';
import 'package:cloudkeja/app/data/models/income.dart';
import 'package:cloudkeja/app/data/models/expense.dart';
import 'package:cloudkeja/app/data/models/income_category.dart';
import 'package:cloudkeja/app/data/models/expense_category.dart';
import 'package:cloudkeja/app/data/repositories/admin_repository.dart';

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

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
    loadData();
  }

  Future<void> loadData() async {
    try {
      incomes = await AdminRepository().getIncomes();
      expenses = await AdminRepository().getExpenses();
      incomeCategories = await AdminRepository().getIncomeCategories();
      expenseCategories = await AdminRepository().getExpenseCategories();
      setState(() {});
    } catch (e) {
      Get.snackbar('Error', 'Failed to load data: $e');
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
                decoration: InputDecoration(labelText: 'Description'),
                validator: (value) => value!.isEmpty ? 'Required' : null,
                onChanged: (value) => description = value,
              ),
              TextFormField(
                initialValue: amount.toString(),
                decoration: InputDecoration(labelText: 'Amount'),
                keyboardType: TextInputType.number,
                validator: (value) => value!.isEmpty ? 'Required' : null,
                onChanged: (value) => amount = double.tryParse(value) ?? 0.0,
              ),
              DropdownButtonFormField<int>(
                value: categoryId,
                decoration: InputDecoration(labelText: 'Category'),
                items: incomeCategories.map((cat) => DropdownMenuItem(value: cat.id, child: Text(cat.name))).toList(),
                validator: (value) => value == 0 ? 'Required' : null,
                onChanged: (value) => categoryId = value ?? 0,
              ),
              TextButton(
                onPressed: () async {
                  final selectedDate = await showDatePicker(context: context, initialDate: date, firstDate: DateTime(2000), lastDate: DateTime.now());
                  if (selectedDate != null) date = selectedDate;
                },
                child: Text('Select Date: ${date.toString().split(' ')[0]}'),
              ),
            ],
          ),
        ),
        actions: [
          TextButton(onPressed: () => Navigator.pop(context), child: Text('Cancel')),
          TextButton(
            onPressed: () async {
              if (formKey.currentState!.validate()) {
                Income newIncome = Income(id: income?.id ?? 0, description: description, amount: amount, categoryId: categoryId, date: date);
                try {
                  if (income == null) {
                    await AdminRepository().createIncome(newIncome);
                  } else {
                    await AdminRepository().updateIncome(newIncome);
                  }
                  Navigator.pop(context);
                  loadData();
                } catch (e) {
                  Get.snackbar('Error', 'Failed to save income: $e');
                }
              }
            },
            child: Text('Save'),
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
                decoration: InputDecoration(labelText: 'Description'),
                validator: (value) => value!.isEmpty ? 'Required' : null,
                onChanged: (value) => description = value,
              ),
              TextFormField(
                initialValue: amount.toString(),
                decoration: InputDecoration(labelText: 'Amount'),
                keyboardType: TextInputType.number,
                validator: (value) => value!.isEmpty ? 'Required' : null,
                onChanged: (value) => amount = double.tryParse(value) ?? 0.0,
              ),
              DropdownButtonFormField<int>(
                value: categoryId,
                decoration: InputDecoration(labelText: 'Category'),
                items: expenseCategories.map((cat) => DropdownMenuItem(value: cat.id, child: Text(cat.name))).toList(),
                validator: (value) => value == 0 ? 'Required' : null,
                onChanged: (value) => categoryId = value ?? 0,
              ),
              TextButton(
                onPressed: () async {
                  final selectedDate = await showDatePicker(context: context, initialDate: date, firstDate: DateTime(2000), lastDate: DateTime.now());
                  if (selectedDate != null) date = selectedDate;
                },
                child: Text('Select Date: ${date.toString().split(' ')[0]}'),
              ),
            ],
          ),
        ),
        actions: [
          TextButton(onPressed: () => Navigator.pop(context), child: Text('Cancel')),
          TextButton(
            onPressed: () async {
              if (formKey.currentState!.validate()) {
                Expense newExpense = Expense(id: expense?.id ?? 0, description: description, amount: amount, categoryId: categoryId, date: date);
                try {
                  if (expense == null) {
                    await AdminRepository().createExpense(newExpense);
                  } else {
                    await AdminRepository().updateExpense(newExpense);
                  }
                  Navigator.pop(context);
                  loadData();
                } catch (e) {
                  Get.snackbar('Error', 'Failed to save expense: $e');
                }
              }
            },
            child: Text('Save'),
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
            decoration: InputDecoration(labelText: 'Name'),
            validator: (value) => value!.isEmpty ? 'Required' : null,
            onChanged: (value) => name = value,
          ),
        ),
        actions: [
          TextButton(onPressed: () => Navigator.pop(context), child: Text('Cancel')),
          TextButton(
            onPressed: () async {
              if (formKey.currentState!.validate()) {
                IncomeCategory newCategory = IncomeCategory(id: category?.id ?? 0, name: name);
                try {
                  if (category == null) {
                    await AdminRepository().createIncomeCategory(newCategory);
                  } else {
                    await AdminRepository().updateIncomeCategory(newCategory);
                  }
                  Navigator.pop(context);
                  loadData();
                } catch (e) {
                  Get.snackbar('Error', 'Failed to save income category: $e');
                }
              }
            },
            child: Text('Save'),
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
            decoration: InputDecoration(labelText: 'Name'),
            validator: (value) => value!.isEmpty ? 'Required' : null,
            onChanged: (value) => name = value,
          ),
        ),
        actions: [
          TextButton(onPressed: () => Navigator.pop(context), child: Text('Cancel')),
          TextButton(
            onPressed: () async {
              if (formKey.currentState!.validate()) {
                ExpenseCategory newCategory = ExpenseCategory(id: category?.id ?? 0, name: name);
                try {
                  if (category == null) {
                    await AdminRepository().createExpenseCategory(newCategory);
                  } else {
                    await AdminRepository().updateExpenseCategory(newCategory);
                  }
                  Navigator.pop(context);
                  loadData();
                } catch (e) {
                  Get.snackbar('Error', 'Failed to save expense category: $e');
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
        title: Text('Income & Expense Tracking'),
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(text: 'Incomes'),
            Tab(text: 'Expenses'),
            Tab(text: 'Income Categories'),
            Tab(text: 'Expense Categories'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          ListView.builder(
            itemCount: incomes.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(incomes[index].description),
                subtitle: Text('\$${incomes[index].amount} - ${incomes[index].date.toString().split(' ')[0]}'),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(icon: Icon(Icons.edit), onPressed: () => showAddEditIncome(income: incomes[index])),
                    IconButton(icon: Icon(Icons.delete), onPressed: () async {
                      try {
                        await AdminRepository().deleteIncome(incomes[index].id);
                        loadData();
                      } catch (e) {
                        Get.snackbar('Error', 'Failed to delete income: $e');
                      }
                    }),
                  ],
                ),
              );
            },
          ),
          ListView.builder(
            itemCount: expenses.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(expenses[index].description),
                subtitle: Text('\$${expenses[index].amount} - ${expenses[index].date.toString().split(' ')[0]}'),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(icon: Icon(Icons.edit), onPressed: () => showAddEditExpense(expense: expenses[index])),
                    IconButton(icon: Icon(Icons.delete), onPressed: () async {
                      try {
                        await AdminRepository().deleteExpense(expenses[index].id);
                        loadData();
                      } catch (e) {
                        Get.snackbar('Error', 'Failed to delete expense: $e');
                      }
                    }),
                  ],
                ),
              );
            },
          ),
          ListView.builder(
            itemCount: incomeCategories.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(incomeCategories[index].name),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(icon: Icon(Icons.edit), onPressed: () => showAddEditIncomeCategory(category: incomeCategories[index])),
                    IconButton(icon: Icon(Icons.delete), onPressed: () async {
                      try {
                        await AdminRepository().deleteIncomeCategory(incomeCategories[index].id);
                        loadData();
                      } catch (e) {
                        Get.snackbar('Error', 'Failed to delete income category: $e');
                      }
                    }),
                  ],
                ),
              );
            },
          ),
          ListView.builder(
            itemCount: expenseCategories.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(expenseCategories[index].name),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(icon: Icon(Icons.edit), onPressed: () => showAddEditExpenseCategory(category: expenseCategories[index])),
                    IconButton(icon: Icon(Icons.delete), onPressed: () async {
                      try {
                        await AdminRepository().deleteExpenseCategory(expenseCategories[index].id);
                        loadData();
                      } catch (e) {
                        Get.snackbar('Error', 'Failed to delete expense category: $e');
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
          if (index == 0) showAddEditIncome();
          else if (index == 1) showAddEditExpense();
          else if (index == 2) showAddEditIncomeCategory();
          else showAddEditExpenseCategory();
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