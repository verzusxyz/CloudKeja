import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:cloudkeja/app/routes/app_routes.dart';

class FullAdminPanelPage extends StatelessWidget {
  const FullAdminPanelPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Full Admin Panel')),
      body: ListView(
        children: [
          ListTile(title: Text('User Management'), onTap: () => Get.toNamed(AppRoutes.USER_MANAGEMENT)),
          ListTile(title: Text('Payment Gateways'), onTap: () => Get.toNamed(AppRoutes.PAYMENT_GATEWAY)),
          ListTile(title: Text('Subscription Plans'), onTap: () => Get.toNamed(AppRoutes.SUBSCRIPTION_PLANS)),
          ListTile(title: Text('Income & Expense Tracking'), onTap: () => Get.toNamed(AppRoutes.INCOME_EXPENSE)),
          ListTile(title: Text('Withdrawal Management'), onTap: () => Get.toNamed(AppRoutes.WITHDRAWAL)),
          ListTile(title: Text('Refund Management'), onTap: () => Get.toNamed(AppRoutes.REFUND)),
          ListTile(title: Text('Support System'), onTap: () => Get.toNamed(AppRoutes.SUPPORT)),
          ListTile(title: Text('Direct Messaging'), onTap: () => Get.toNamed(AppRoutes.MESSAGING)),
          ListTile(title: Text('Property Reviews'), onTap: () => Get.toNamed(AppRoutes.REVIEWS)),
          ListTile(title: Text('Static Pages Management'), onTap: () => Get.toNamed(AppRoutes.STATIC_PAGES)),
        ],
      ),
    );
  }
}