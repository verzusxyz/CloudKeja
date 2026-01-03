import 'package:flutter/material.dart';
import 'package:cloudkeja/app/data/models/admin/message.dart';
import 'package:cloudkeja/app/data/repositories/admin_repository/admin_repository.dart';

import 'package:auto_route/auto_route.dart';

@RoutePage(name: 'DirectMessagingRoute')
class DirectMessagingPage extends StatefulWidget {
  const DirectMessagingPage({super.key});

  @override
  State<DirectMessagingPage> createState() => _DirectMessagingState();
}

class _DirectMessagingState extends State<DirectMessagingPage> {
  List<Message> messages = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    loadMessages();
  }

  Future<void> loadMessages() async {
    setState(() => isLoading = true);
    try {
      messages = await AdminRepository().getMessages();
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Failed to load messages: $e'), backgroundColor: Colors.red),
      );
    } finally {
      if (mounted) setState(() => isLoading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Direct Messaging')),
      body: isLoading
          ? const Center(child: CircularProgressIndicator())
          : messages.isEmpty
              ? const Center(child: Text('No messages'))
              : ListView.builder(
                  itemCount: messages.length,
                  itemBuilder: (context, index) {
                    final message = messages[index];
                    return ListTile(
                      title: Text('From ${message.senderId} to ${message.receiverId}'),
                      subtitle: Text('${message.content} - ${message.timestamp.toString().split(' ')[0]}'),
                      trailing: IconButton(
                        icon: const Icon(Icons.delete),
                        onPressed: () async {
                          try {
                            await AdminRepository().deleteMessage(message.id);
                            loadMessages();
                          } catch (e) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text('Failed to delete message: $e'), backgroundColor: Colors.red),
                            );
                          }
                        },
                      ),
                    );
                  },
                ),
    );
  }
}