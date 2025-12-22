import 'package:auto_route/auto_route.dart';
import 'package:fdevs_fitkit/fdevs_fitkit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:iconly/iconly.dart';

import '../../../../../routes/app_routes.gr.dart';
import '../../../../../widgets/widgets.dart';

@RoutePage()
class LandlordWithdrawOverviewView extends StatefulWidget {
  const LandlordWithdrawOverviewView({super.key});

  @override
  State<LandlordWithdrawOverviewView> createState() =>
      _LandlordWithdrawOverviewViewState();
}

class _LandlordWithdrawOverviewViewState
    extends State<LandlordWithdrawOverviewView> {
  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);
    return Scaffold(
      appBar: CustomAppBar(
        title: const Text('Withdraw Request'),
        actions: [
          TextButton(
            style: const ButtonStyle(
              padding: WidgetStatePropertyAll(
                EdgeInsets.symmetric(
                  horizontal: 20,
                ),
              ),
            ),
            onPressed: () {},
            child: Text(
              'History',
              style: _theme.textTheme.bodyMedium,
            ),
          ),
        ],
      ),
      body: ScaffoldBodyWrapper(
        body: SingleChildScrollView(
          padding: const EdgeInsetsDirectional.fromSTEB(20, 20, 20, 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              // Earnings Dashboard
              Text(
                'Your Earnings',
                style: _theme.textTheme.titleMedium?.copyWith(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox.square(dimension: 16),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                decoration: BoxDecoration(
                  color: _theme.colorScheme.primary.withValues(
                    alpha: 0.03,
                  ),
                  borderRadius: BorderRadius.circular(4),
                  border: Border.all(
                    color: _theme.colorScheme.primary.withValues(
                      alpha: 0.30,
                    ),
                  ),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'RM 200',
                            style: _theme.textTheme.titleLarge?.copyWith(
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          const SizedBox.square(dimension: 4),
                          Text(
                            'Current Balance',
                            style: _theme.textTheme.bodyMedium
                                ?.copyWith(color: _theme.colorScheme.secondary),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 80,
                      child: VerticalDivider(
                        color: _theme.colorScheme.primary.withValues(
                          alpha: 0.30,
                        ),
                        thickness: 1,
                        width: 2,
                        indent: 10,
                        endIndent: 10,
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                            'RM 5000',
                            style: _theme.textTheme.titleLarge?.copyWith(
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          const SizedBox.square(dimension: 4),
                          Text(
                            'Total Paid',
                            style: _theme.textTheme.bodyMedium
                                ?.copyWith(color: _theme.colorScheme.secondary),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox.square(dimension: 24),

              // Payment Method
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Payment Method',
                    style: _theme.textTheme.titleMedium?.copyWith(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  TextButton.icon(
                    style: const ButtonStyle(
                      padding: WidgetStatePropertyAll(EdgeInsets.zero),
                    ),
                    onPressed: () => _handleManageNavigation(),
                    label: Text(
                      'Link a new bank account',
                      style: _theme.textTheme.bodyMedium?.copyWith(
                        color: _theme.colorScheme.primary,
                      ),
                    ),
                    icon: Icon(
                      Icons.add,
                      color: _theme.colorScheme.primary,
                      size: 18,
                    ),
                  ),
                ],
              ),
              const SizedBox.square(dimension: 8),

              // Method List
              ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: 3,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (_, index) {
                  final uniqueKey = UniqueKey();
                  const bottomPadding = EdgeInsets.only(bottom: 16.0);
                  return Padding(
                    padding: bottomPadding,
                    child: Slidable(
                        useTextDirection: false,
                        key: uniqueKey,
                        endActionPane: ActionPane(
                          extentRatio: 0.25,
                          motion: const ScrollMotion(),
                          children: [
                            SlidableAction(
                              spacing: 0,
                              borderRadius: BorderRadius.circular(0.0),
                              padding: EdgeInsets.zero,
                              onPressed: (BuildContext context1) {},
                              backgroundColor: _theme.colorScheme.primary
                                  .withValues(alpha: 0.05),
                              foregroundColor: Colors.green,
                              icon: IconlyLight.edit,
                            ),
                            SlidableAction(
                              spacing: 0,
                              padding: EdgeInsets.zero,
                              onPressed: (BuildContext context2) async {},
                              backgroundColor: _theme.colorScheme.primary
                                  .withValues(alpha: 0.05),
                              foregroundColor: Colors.red,
                              icon: IconlyLight.delete,
                            ),
                          ],
                        ),
                        child: Text('data')),
                  );
                },
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: ScaffoldBottomNavWrapper(
        child: SizedBox(
          height: 50,
          child: ElevatedButton(
            onPressed: () => _payoutReqNavigation(),
            child: const Text('Payout Request'),
          ),
        ).fMarginLTRB(24, 18, 24, 12),
      ),
    ).unfocusPrimary();
  }

  // Add New Bank Acc Navigation
  Future<void> _handleManageNavigation() async {
    final _result = await context.router.push(
      LandlordManageWithdrawMethodRoute(),
    );
    print(_result);
  }

  // Payout req Navigation
  Future<void> _payoutReqNavigation() async {
    final _result = await context.router.push(
      const LandlordWithdrawRequestRoute(),
    );
    print(_result);
  }
}
