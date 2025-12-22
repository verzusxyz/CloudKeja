import 'package:auto_route/auto_route.dart';
import 'package:fdevs_fitkit/fdevs_fitkit.dart';
import 'package:flutter/material.dart';
import '../../../../routes/app_routes.gr.dart';
import '../../../../core/core.dart';
import '../../../../widgets/widgets.dart';

@RoutePage()
class TenantLeaseListView extends StatefulWidget {
  const TenantLeaseListView({super.key});

  @override
  State<TenantLeaseListView> createState() => _TenantLeaseListViewState();
}

class _TenantLeaseListViewState extends State<TenantLeaseListView> {
  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);

    return Scaffold(
      appBar: CustomAppBar(title: const Text('Lease')),
      body: ScaffoldBodyWrapper(
        body: ListView.separated(
          itemCount: 30, // Number of list items
          padding: const EdgeInsetsDirectional.fromSTEB(24, 16, 24, 32),
          itemBuilder: (context, index) {
            // Correctly cycle through ApplicationStatus values
            final _status = ApplicationStatus
                .values[index % ApplicationStatus.values.length];

            return DynamicListCard.keyValueBody(
              title: 'Arte Plus Jalan Ampang',
              subtitle: 'Date: 25 Jun 2023',
              keyValues: [
                ...{
                  "Property Name": "Arte Plus Jalan Ampang",
                  "Property Address": "Off Jalan Ampang, Am pang, Kuala Lumpur",
                  "Landlord Name": "Lucifer Mrng Star",
                  "Monthly Rent": "RM 500",
                  "Utility Deposit": "RM 500",
                  "Status": _status,
                }.entries.map(
                  (entry) {
                    final value = entry.value;
                    final isStatus = value is ApplicationStatus;

                    return KeyValueRow(
                      title: entry.key,
                      titleFlex: 3,
                      titleStyle: _theme.textTheme.bodyLarge,
                      description: isStatus ? value.name : value.toString(),
                      descriptionStyle: _theme.textTheme.bodyLarge?.copyWith(
                        color: isStatus
                            ? value.statusColor
                            : _theme.colorScheme.secondary,
                      ),
                      descriptionFlex: 4,
                    );
                  },
                )
              ],
              actionButtonText: 'View Details',
              onActionTap: () => _handleDetailsNavigation(_status),
            );
          },
          separatorBuilder: (_, __) => const SizedBox.square(dimension: 16),
        ),
      ),
    ).unfocusPrimary();
  }

  Future<void> _handleDetailsNavigation(ApplicationStatus status) async {
    final _result = await context.router.push(TenantLeaseDetailsRoute());
    print(_result);
  }
}
