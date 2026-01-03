import 'package:auto_route/auto_route.dart';
import 'package:cloudkeja/app/routes/app_routes.gr.dart';
import 'package:flutter/material.dart';

@RoutePage(name: 'FullAdminPanelRoute')
class FullAdminPanelPage extends StatelessWidget {
  const FullAdminPanelPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Full Admin Panel')),
      body: ListView(
        children: [
          ListTile(
            title: const Text('User Management'),
            onTap: () => context.router.push(const UserManagementRoute()),
          ),
          ListTile(
            title: const Text('Payment Gateways'),
            onTap: () => context.router.push(const PaymentGatewayConfigRoute()),
          ),
          ListTile(
            title: const Text('Subscription Plans'),
            onTap: () => context.router.push(const SubscriptionPlansRoute()),
          ),
          ListTile(
            title: const Text('Income & Expense Tracking'),
            onTap: () => context.router.push(const IncomeExpenseRoute()),
          ),
          ListTile(
            title: const Text('Withdrawal Management'),
            onTap: () => context.router.push(const WithdrawalManagementRoute()),
          ),
          ListTile(
            title: const Text('Refund Management'),
            onTap: () => context.router.push(const RefundManagementRoute()),
          ),
          ListTile(
            title: const Text('Support System'),
            onTap: () => context.router.push(const SupportSystemRoute()),
          ),
          ListTile(
            title: const Text('Direct Messaging'),
            onTap: () => context.router.push(const DirectMessagingRoute()),
          ),
          ListTile(
            title: const Text('Property Reviews'),
            onTap: () => context.router.push(const PropertyReviewsRoute()),
          ),
          ListTile(
            title: const Text('Static Pages Management'),
            onTap: () => context.router.push(const StaticPagesRoute()),
          ),
        ],
      ),
    );
  }
}