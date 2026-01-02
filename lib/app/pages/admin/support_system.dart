import 'package:flutter/material.dart';
import 'package:get/Get.dart';
import 'package:cloudkeja/app/data/models/support.dart';
import 'package:cloudkeja/app/data/repositories/admin_repository.dart';

class SupportSystemPage extends StatefulWidget {
  const SupportSystemPage({super.key});

  @override
  State<SupportSystemPage> createState() => _SupportSystemState();
}

class _SupportSystemState extends State<SupportSystemPage> {
  List<Support> tickets = [];

  @override
  void initState() {
    super.initState();
    loadTickets();
  }

  Future<void> loadTickets() async {
    try {
      tickets = await AdminRepository().getSupports();
      setState(() {});
    } catch (e) {
      Get.snackbar('Error', 'Failed to load tickets: $e');
    }
  }

  void updateTicketStatus(Support ticket, String newStatus) async {
    try {
      await AdminRepository().updateSupport(Support(id: ticket.id, userId: ticket.userId, subject: ticket.subject, message: ticket.message, status: newStatus));
      loadTickets();
    } catch (e) {
      Get.snackbar('Error', 'Failed to update status: $e');
    }
  }

  void showReplyDialog(Support ticket) {
    final formKey = GlobalKey<FormState>();
    String reply = '';

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Reply to Ticket'),
        content: Form(
          key: formKey,
          child: TextFormField(
            decoration: InputDecoration(labelText: 'Reply Message'),
            validator: (value) => value!.isEmpty ? 'Required' : null,
            onChanged: (value) => reply = value,
          ),
        ),
        actions: [
          TextButton(onPressed: () => Navigator.pop(context), child: Text('Cancel')),
          TextButton(
            onPressed: () async {
              if (formKey.currentState!.validate()) {
                try {
                  await AdminRepository().updateSupport(Support(id: ticket.id, userId: ticket.userId, subject: ticket.subject, message: ticket.message + '\nReply: $reply', status: 'replied'));
                  Navigator.pop(context);
                  loadTickets();
                } catch (e) {
                  Get.snackbar('Error', 'Failed to send reply: $e');
                }
              }
            },
            child: Text('Send'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Support System')),
      body: ListView.builder(
        itemCount: tickets.length,
        itemBuilder: (context, index) {
          final ticket = tickets[index];
          return ListTile(
            title: Text(ticket.subject),
            subtitle: Text('${ticket.message} - Status: ${ticket.status}'),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(icon: Icon(Icons.reply), onPressed: () => showReplyDialog(ticket)),
                IconButton(icon: Icon(Icons.check), onPressed: () => updateTicketStatus(ticket, 'resolved')),
                IconButton(icon: Icon(Icons.close), onPressed: () => updateTicketStatus(ticket, 'closed')),
              ],
            ),
          );
        },
      ),
    );
  }
}