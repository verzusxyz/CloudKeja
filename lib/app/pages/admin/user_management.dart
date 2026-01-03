import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:cloudkeja/app/data/models/user/user_model.dart';
import 'package:cloudkeja/app/data/repositories/admin_repository/admin_repository.dart';

@RoutePage(name: 'UserManagementRoute')
class UserManagementPage extends StatefulWidget {
  const UserManagementPage({super.key});

  @override
  State<UserManagementPage> createState() => _UserManagementState();
}

class _UserManagementState extends State<UserManagementPage> {
  List<User> users = [];
  bool isLoading = true;
  final List<String> roles = ['super_admin', 'admin', 'landlord', 'tenant'];

  @override
  void initState() {
    super.initState();
    loadUsers();
  }

  Future<void> loadUsers() async {
    setState(() => isLoading = true);
    try {
      users = await AdminRepository().getUsers();
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Failed to load users: $e'), backgroundColor: Colors.red),
      );
    } finally {
      if (mounted) setState(() => isLoading = false);
    }
  }

  void showEditRoleDialog(User user) {
    final formKey = GlobalKey<FormState>();
    String selectedRole = user.role!;

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Edit User Role'),
        content: Form(
          key: formKey,
          child: DropdownButtonFormField<String>(
            value: selectedRole,
            decoration: const InputDecoration(labelText: 'Role'),
            items: roles.map((r) => DropdownMenuItem(value: r, child: Text(r.toUpperCase()))).toList(),
            onChanged: (value) => selectedRole = value ?? 'tenant',
          ),
        ),
        actions: [
          TextButton(onPressed: () => Navigator.pop(context), child: const Text('Cancel')),
          TextButton(
            onPressed: () async {
              if (formKey.currentState!.validate()) {
                try {
                  final updatedUser = User(id: user.id, name: user.name, email: user.email, role: selectedRole);
                  await AdminRepository().updateUserRole(updatedUser);
                  if (mounted) Navigator.pop(context);
                  loadUsers();
                } catch (e) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Failed to update role: $e'), backgroundColor: Colors.red),
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
      appBar: AppBar(title: const Text('User Management')),
      body: isLoading
          ? const Center(child: CircularProgressIndicator())
          : users.isEmpty
              ? const Center(child: Text('No users found'))
              : ListView.builder(
                  itemCount: users.length,
                  itemBuilder: (context, index) {
                    final user = users[index];
                    return ListTile(
                      title: Text(user.name!),
                      subtitle: Text('${user.email} - Role: ${user.role!.toUpperCase()}'),
                      trailing: IconButton(
                        icon: const Icon(Icons.edit),
                        onPressed: () => showEditRoleDialog(user),
                      ),
                    );
                  },
                ),
    );
  }
}