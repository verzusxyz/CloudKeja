import 'package:flutter/material.dart';
import 'package:get/Get.dart';
import 'package:cloudkeja/app/data/models/user.dart';
import 'package:cloudkeja/app/data/repositories/admin_repository/admin_repository.dart';

class UserManagementPage extends StatefulWidget {
  const UserManagementPage({super.key});

  @override
  State<UserManagementPage> createState() => _UserManagementState();
}

class _UserManagementState extends State<UserManagementPage> {
  List<User> users = [];
  List<String> roles = ['super_admin', 'admin', 'landlord', 'tenant'];

  @override
  void initState() {
    super.initState();
    loadUsers();
  }

  Future<void> loadUsers() async {
    try {
      users = await AdminRepository().getUsers();
      setState(() {});
    } catch (e) {
      Get.snackbar('Error', 'Failed to load users: $e');
    }
  }

  void showEditRoleDialog(User user) {
    final formKey = GlobalKey<FormState>();
    String role = user.role;

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Edit User Role'),
        content: Form(
          key: formKey,
          child: DropdownButtonFormField<String>(
            value: role,
            decoration: InputDecoration(labelText: 'Role'),
            items: roles.map((r) => DropdownMenuItem(value: r, child: Text(r.toUpperCase()))).toList(),
            onChanged: (value) => role = value ?? 'tenant',
          ),
        ),
        actions: [
          TextButton(onPressed: () => Navigator.pop(context), child: Text('Cancel')),
          TextButton(
            onPressed: () async {
              if (formKey.currentState!.validate()) {
                try {
                  await AdminRepository().updateUserRole(User(id: user.id, name: user.name, email: user.email, role: role));
                  Navigator.pop(context);
                  loadUsers();
                } catch (e) {
                  Get.snackbar('Error', 'Failed to update role: $e');
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
      appBar: AppBar(title: Text('User Management')),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          final user = users[index];
          return ListTile(
            title: Text(user.name),
            subtitle: Text('${user.email} - Role: ${user.role.toUpperCase()}'),
            trailing: IconButton(icon: Icon(Icons.edit), onPressed: () => showEditRoleDialog(user)),
          );
        },
      ),
    );
  }
}