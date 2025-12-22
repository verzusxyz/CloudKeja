import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

import '../../../../data/models/models.dart';
import '../../../../routes/app_routes.gr.dart';
import '../../../../widgets/widgets.dart';

@RoutePage()
class TenancyAgreementDetailsView extends StatelessWidget {
  const TenancyAgreementDetailsView({super.key, required this.agreement});
  final LandlordTenancyAgreement agreement;

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);
    return Scaffold(
      appBar: CustomAppBar(
        title: const Text('Agreement 1'),
        actions: [
          PopupMenuButton<String?>(
            itemBuilder: (context) {
              List<Map<String, dynamic>> menuItems = [
                {
                  'value': 'edit',
                  'icon': FeatherIcons.edit3,
                  'label': 'Edit',
                },
                {
                  'value': 'delete',
                  'icon': FeatherIcons.trash2,
                  'label': 'Delete',
                },
              ];

              return menuItems.map((item) {
                return PopupMenuItem<String>(
                  value: item['value'],
                  child: Row(
                    children: [
                      Icon(
                        item['icon'],
                        size: 16,
                        color: _theme.colorScheme.primary,
                      ),
                      const SizedBox.square(dimension: 8),
                      Text(
                        item['label'],
                        style: _theme.textTheme.bodyMedium?.copyWith(
                          fontWeight: FontWeight.w600,
                          color: _theme.colorScheme.secondary,
                        ),
                      ),
                    ],
                  ),
                );
              }).toList();
            },
            onSelected: (value) async {
              if (value?.trim() == 'edit') {
                final _result = await context.router.push(
                  TenancyManageAgreementRoute(editModel: agreement),
                );
                print(_result);
              }
            },
          )
        ],
      ),
      body: ScaffoldBodyWrapper(
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'How We Use Your Information',
                style: _theme.textTheme.bodyLarge?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox.square(dimension: 8),
              Text(
                'This policy explains how 6amMart website and related applications (the “Site”, “we” or “us”) collects, uses, shares and protects the personal information that we collect through this site or different.',
                style: _theme.textTheme.bodyMedium?.copyWith(
                  color: _theme.colorScheme.secondary,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
