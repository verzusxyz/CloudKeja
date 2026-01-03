import 'package:flutter/material.dart';
import 'package:cloudkeja/app/data/models/admin/page_content.dart';
import 'package:cloudkeja/app/data/repositories/admin_repository/admin_repository.dart';

import 'package:auto_route/auto_route.dart';

@RoutePage(name: 'StaticPagesRoute')
class StaticPagesPage extends StatefulWidget {
  const StaticPagesPage({super.key});

  @override
  State<StaticPagesPage> createState() => _StaticPagesState();
}

class _StaticPagesState extends State<StaticPagesPage> {
  List<PageContent> pages = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    loadPages();
  }

  Future<void> loadPages() async {
    setState(() => isLoading = true);
    try {
      pages = await AdminRepository().getPageContents();
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Failed to load pages: $e'), backgroundColor: Colors.red),
      );
    } finally {
      if (mounted) setState(() => isLoading = false);
    }
  }

  void showEditDialog(PageContent page) {
    final formKey = GlobalKey<FormState>();
    String content = page.content;

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Edit ${page.type.toUpperCase()}'),
        content: Form(
          key: formKey,
          child: TextFormField(
            initialValue: content,
            decoration: const InputDecoration(labelText: 'Content'),
            maxLines: 10,
            validator: (value) => value!.isEmpty ? 'Required' : null,
            onChanged: (v) => content = v,
          ),
        ),
        actions: [
          TextButton(onPressed: () => Navigator.pop(context), child: const Text('Cancel')),
          TextButton(
            onPressed: () async {
              if (formKey.currentState!.validate()) {
                try {
                  await AdminRepository().updatePageContent(PageContent(
                    id: page.id,
                    type: page.type,
                    content: content,
                  ));
                  if (mounted) Navigator.pop(context);
                  loadPages();
                } catch (e) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Failed to update content: $e'), backgroundColor: Colors.red),
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
      appBar: AppBar(title: const Text('Static Pages Management')),
      body: isLoading
          ? const Center(child: CircularProgressIndicator())
          : pages.isEmpty
              ? const Center(child: Text('No static pages'))
              : ListView.builder(
                  itemCount: pages.length,
                  itemBuilder: (context, index) {
                    final page = pages[index];
                    return ListTile(
                      title: Text(page.type.toUpperCase()),
                      subtitle: Text(page.content.length > 50 ? '${page.content.substring(0, 50)}...' : page.content),
                      trailing: IconButton(
                        icon: const Icon(Icons.edit),
                        onPressed: () => showEditDialog(page),
                      ),
                    );
                  },
                ),
    );
  }
}