import 'package:flutter/material.dart';
import 'package:cloudkeja/app/data/models/admin/support.dart';
import 'package:cloudkeja/app/data/repositories/admin_repository/admin_repository.dart';

import 'package:auto_route/auto_route.dart';

@RoutePage(name: 'SupportSystemRoute')
class SupportSystemPage extends StatefulWidget {
  const SupportSystemPage({super.key});

  @override
  State<SupportSystemPage> createState() => _SupportSystemState();
}

class _SupportSystemState extends State<SupportSystemPage> {
  List<Support> tickets = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    loadTickets();
  }

  Future<void> loadTickets() async {
    setState(() => isLoading = true);
    try {
      tickets = await AdminRepository().getSupports();
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Failed to load tickets: $e'), backgroundColor: Colors.red),
      );
    } finally {
      if (mounted) setState(() => isLoading = false);
    }
  }

  void updateTicketStatus(Support ticket, String newStatus) async {
    try {
      await AdminRepository().updateSupport(Support(
        id: ticket.id,
        userId: ticket.userId,
        subject: ticket.subject,
        message: ticket.message,
        status: newStatus,
      ));
      loadTickets();
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Failed to update status: $e'), backgroundColor: Colors.red),
      );
    }
  }

  void showReplyDialog(Support ticket) {
    final formKey = GlobalKey<FormState>();
    String reply = '';

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Reply to Ticket'),
        content: Form(
          key: formKey,
          child: TextFormField(
            decoration: const InputDecoration(labelText: 'Reply Message'),
            validator: (value) => value!.isEmpty ? 'Required' : null,
            onChanged: (v) => reply = v,
          ),
        ),
        actions: [
          TextButton(onPressed: () => Navigator.pop(context), child: const Text('Cancel')),
          TextButton(
            onPressed: () async {
              if (formKey.currentState!.validate()) {
                try {
                  await AdminRepository().updateSupport(Support(
                    id: ticket.id,
                    userId: ticket.userId,
                    subject: ticket.subject,
                    message: '${ticket.message}\nReply: $reply',
                    status: 'replied',
                  ));
                  if (mounted) Navigator.pop(context);
                  loadTickets();
                } catch (e) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Failed to send reply: $e'), backgroundColor: Colors.red),
                  );
                }
              }
            },
            child: const Text('Send'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Support System')),
      body: isLoading
          ? const Center(child: CircularProgressIndicator())
          : tickets.isEmpty
              ? const Center(child: Text('No support tickets'))
              : ListView.builder(
                  itemCount: tickets.length,
                  itemBuilder: (context, index) {
                    final ticket = tickets[index];
                    return ListTile(
                      title: Text(ticket.subject),
                      subtitle: Text('${ticket.message} - Status: ${ticket.status}'),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(icon: const Icon(Icons.reply), onPressed: () => showReplyDialog(ticket)),
                          IconButton(icon: const Icon(Icons.check), onPressed: () => updateTicketStatus(ticket, 'resolved')),
                          IconButton(icon: const Icon(Icons.close), onPressed: () => updateTicketStatus(ticket, 'closed')),
                        ],
                      ),
                    );
                  },
                ),
    );
  }
}