import 'package:flutter/material.dart';
import 'package:get/Get.dart';
import 'package:cloudkeja/app/data/models/admin/message.dart';
import 'package:cloudkeja/app/data/repositories/admin_repository/admin_repository.dart';

class DirectMessagingPage extends StatefulWidget {
  const DirectMessagingPage({super.key});

  @override
  State<DirectMessagingPage> createState() => _DirectMessagingState();
}

class _DirectMessagingState extends State<DirectMessagingPage> {
  List<Message> messages = [];

  @override
  void initState() {
    super.initState();
    loadMessages();
  }

  Future<void> loadMessages() async {
    try {
      messages = await AdminRepository().getMessages();
      setState(() {});
    } catch (e) {
      Get.snackbar('Error', 'Failed to load messages: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Direct Messaging')),
      body: ListView.builder(
        itemCount: messages.length,
        itemBuilder: (context, index) {
          final message = messages[index];
          return ListTile(
            title: Text('From ${message.senderId} to ${message.receiverId}'),
            subtitle: Text('${message.content} - ${message.timestamp.toString().split(' ')[0]}'),
            trailing: IconButton(icon: Icon(Icons.delete), onPressed: () async {
              try {
                await AdminRepository().deleteMessage(message.id);
                loadMessages();
              } catch (e) {
                Get.snackbar('Error', 'Failed to delete message: $e');
              }
            }),
          );
        },
      ),
    );
  }
}