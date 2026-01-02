import 'package:flutter/material.dart';
import 'package:get/Get.dart';
import 'package:cloudkeja/app/data/models/admin/page_content.dart';
import 'package:cloudkeja/app/data/repositories/admin_repository/admin_repository.dart';

class StaticPagesPage extends StatefulWidget {
  const StaticPagesPage({super.key});

  @override
  State<StaticPagesPage> createState() => _StaticPagesState();
}

class _StaticPagesState extends State<StaticPagesPage> {
  List<PageContent> pages = [];

  @override
  void initState() {
    super.initState();
    loadPages();
  }

  Future<void> loadPages() async {
    try {
      pages = await AdminRepository().getPageContents();
      setState(() {});
    } catch (e) {
      Get.snackbar('Error', 'Failed to load pages: $e');
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
            decoration: InputDecoration(labelText: 'Content'),
            maxLines: 10,
            validator: (value) => value!.isEmpty ? 'Required' : null,
            onChanged: (value) => content = value,
          ),
        ),
        actions: [
          TextButton(onPressed: () => Navigator.pop(context), child: Text('Cancel')),
          TextButton(
            onPressed: () async {
              if (formKey.currentState!.validate()) {
                try {
                  await AdminRepository().updatePageContent(PageContent(id: page.id, type: page.type, content: content));
                  Navigator.pop(context);
                  loadPages();
                } catch (e) {
                  Get.snackbar('Error', 'Failed to update content: $e');
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
      appBar: AppBar(title: Text('Static Pages Management')),
      body: ListView.builder(
        itemCount: pages.length,
        itemBuilder: (context, index) {
          final page = pages[index];
          return ListTile(
            title: Text(page.type.toUpperCase()),
            subtitle: Text(page.content.length > 50 ? '${page.content.substring(0, 50)}...' : page.content),
            trailing: IconButton(icon: Icon(Icons.edit), onPressed: () => showEditDialog(page)),
          );
        },
      ),
    );
  }
}