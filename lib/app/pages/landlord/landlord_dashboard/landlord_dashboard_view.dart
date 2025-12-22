import 'package:auto_route/auto_route.dart';
import 'package:fdevs_fitkit/fdevs_fitkit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:iconly/iconly.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../i18n/strings.g.dart';
import '../../../core/core.dart';
import '../../../data/repositories/repositories.dart';
import '../../../widgets/widgets.dart';
import '../../../routes/app_routes.gr.dart';
import 'components/components.dart';

@RoutePage()
class LandlordDashboardView extends ConsumerStatefulWidget {
  const LandlordDashboardView({super.key});

  @override
  ConsumerState<LandlordDashboardView> createState() =>
      _LandlordDashboardViewState();
}

class _LandlordDashboardViewState extends ConsumerState<LandlordDashboardView> {
  DateFilterDropdownItem? selectedAccountingChartFilter;
  DashboardFilterModel get accountingChartFilter {
    return DashboardFilterModel(
      frequency: selectedAccountingChartFilter?.key.toLowerCase(),
    );
  }

  DateFilterDropdownItem? selectedOverviewFilter;
  DashboardFilterModel get overviewFilter {
    return DashboardFilterModel(
      fromDate: selectedOverviewFilter?.fromDate.formatDate(
        pattern: 'yyyy-MM-dd',
      ),
      toDate: selectedOverviewFilter?.toDate.formatDate(
        pattern: 'yyyy-MM-dd',
      ),
    );
  }

  @override
  void initState() {
    selectedAccountingChartFilter = AcnooDateFilterDropdown.weekly;
    selectedOverviewFilter = AcnooDateFilterDropdown.weekly;

    WidgetsBinding.instance.addPostFrameCallback((_) {
      gEventListener.on().listen((_) => groupRefresh());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final propertyChart = ref.watch(propertyOverviewProvider);
    final dashboardOverviewData = ref.watch(
      dashboardSummaryOverviewProvider(overviewFilter),
    );
    final accountingChartData = ref.watch(
      accountingOverviewProvider(accountingChartFilter),
    );

    final _theme = Theme.of(context);

    final _sectionHeaderStyle = _theme.textTheme.bodyLarge?.copyWith(
      fontWeight: FontWeight.w600,
    );

    return Scaffold(
      appBar: CustomAppBar(
        // title: const Text('Dashboard'),
        title: Text(context.t.common.dashboard),
      ),
      body: ScaffoldBodyWrapper(
        body: RefreshIndicator.adaptive(
          onRefresh: groupRefresh,
          child: SingleChildScrollView(
            padding: const EdgeInsets.fromLTRB(24, 24, 24, 36),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Properties PiChart
                Builder(
                  builder: (_) {
                    final data = propertyChart.valueOrNull?.data;

                    return Skeletonizer(
                      containersColor: Colors.grey.shade300,
                      enabled: propertyChart.isAnyLoading,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: _theme.colorScheme.primaryContainer,
                          boxShadow: [DAppBoxShadowStyles.boxShadow1],
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                16,
                                6,
                                12,
                                6,
                              ),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      // "Properties",
                                      context.t.common.properties,
                                      style: _sectionHeaderStyle,
                                    ),
                                  ),
                                  Expanded(
                                    child: Align(
                                      alignment: AlignmentDirectional.centerEnd,
                                      child: TextButton.icon(
                                        onPressed: () async {
                                          return await context.router
                                              .push<void>(
                                            LandlordPropertyListRoute(),
                                          );
                                        },
                                        iconAlignment: IconAlignment.end,
                                        icon: const Icon(
                                          IconlyLight.arrow_right_2,
                                          size: 18,
                                        ),
                                        // label: const Text('All Properties'),
                                        label: Text(
                                            context.t.common.allProperties),
                                        style: TextButton.styleFrom(
                                          visualDensity: const VisualDensity(
                                            horizontal: -4,
                                            vertical: -4,
                                          ),
                                          padding: EdgeInsets.zero,
                                          textStyle: _theme.textTheme.bodyMedium
                                              ?.copyWith(
                                            color: _theme.colorScheme.primary,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const Divider(height: 0),

                            // Pi Chart
                            CustomPiChart(
                              strokeWidth: 18,
                              chartSize: 160,
                              centerWidget: Text.rich(
                                TextSpan(
                                  text: '${data?.totalProperties ?? 0}\n',
                                  children: [
                                    TextSpan(
                                      // text: 'Total Property',
                                      text: context.t.common.totalPropery,
                                      style:
                                          _theme.textTheme.bodyMedium?.copyWith(
                                        color: _theme.colorScheme.secondary,
                                      ),
                                    ),
                                  ],
                                  style: _theme.textTheme.titleMedium?.copyWith(
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                textAlign: TextAlign.center,
                                textDirection: TextDirection.ltr,
                              ),
                              chartData: [
                                ...[
                                  (
                                    data?.occupied ?? 0,
                                    // 'Occupied',
                                    context.t.common.occupied,
                                    '${data?.occupiedPercentage ?? 0}%',
                                    const Color(0xff00A551)
                                  ),
                                  (
                                    data?.vacant ?? 0,
                                    // 'Vacant',
                                    context.t.common.vacant,
                                    '${data?.vacantPercentage ?? 0}%',
                                    const Color(0xffFF900C)
                                  ),
                                  (
                                    data?.maintenance ?? 0,
                                    // 'Maintenance',
                                    context.t.common.maintenance,
                                    '${data?.maintenancePercentage ?? 0}%',
                                    const Color(0xff2400FF)
                                  ),
                                ].map(
                                  (data) {
                                    return CustomPiChartData(
                                      value: data.$1,
                                      label: TextSpan(
                                        text: "${data.$2} ",
                                        children: [
                                          TextSpan(
                                            text: data.$3,
                                            style: TextStyle(
                                              color:
                                                  _theme.colorScheme.secondary,
                                            ),
                                          ),
                                        ],
                                        style: _theme.textTheme.bodyLarge,
                                      ),
                                      color: data.$4,
                                    );
                                  },
                                )
                              ],
                              customLegendBuilder: (_, chartData) {
                                return Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.circle,
                                      size: 14,
                                      color: chartData.color,
                                    ).fMarginOnly(top: 4),
                                    const SizedBox(width: 10),
                                    Flexible(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            chartData.value.toString(),
                                            style: _theme.textTheme.titleLarge
                                                ?.copyWith(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                          const SizedBox(height: 2),
                                          Text.rich(
                                            chartData.label!,
                                            overflow: TextOverflow.ellipsis,
                                            maxLines: 1,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                );
                              },
                            ).fMarginSymmetric(horizontal: 16, vertical: 16),
                          ],
                        ),
                      ),
                    );
                  },
                ),
                const SizedBox.square(dimension: 20),

                // Accounting Line Chart
                Builder(
                  builder: (_) {
                    final _data = accountingChartData.valueOrNull?.data;
                    return DecoratedBox(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: _theme.colorScheme.primaryContainer,
                        boxShadow: [DAppBoxShadowStyles.boxShadow1],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Section Header
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                              16,
                              8,
                              12,
                              8,
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    context.t.common.accounting,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: _sectionHeaderStyle,
                                  ),
                                ),
                                SizedBox(
                                  height: 30,
                                  child: AcnooDateFilterDropdown(
                                    decoration: AcnooDateFilterDropdown
                                            .defaultDecoration(context)
                                        .copyWith(
                                      border: Border.all(
                                        color: _theme.colorScheme.secondary,
                                      ),
                                      foregroundColor:
                                          _theme.colorScheme.secondary,
                                      selectedLabelStyle:
                                          _theme.textTheme.bodyMedium?.copyWith(
                                        color: _theme.colorScheme.secondary,
                                      ),
                                    ),
                                    key: UniqueKey(),
                                    items: [
                                      AcnooDateFilterDropdown.weekly,
                                      AcnooDateFilterDropdown.monthly,
                                      AcnooDateFilterDropdown.yearly,
                                    ],
                                    replaceDefault: true,
                                    showCustom: false,
                                    value: selectedAccountingChartFilter,
                                    onChanged: (v) {
                                      setState(
                                        () => selectedAccountingChartFilter = v,
                                      );
                                      // ignore: unused_result
                                      ref.refresh(
                                        accountingOverviewProvider(
                                          accountingChartFilter,
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Divider(height: 0),

                          // Overview Info
                          Skeletonizer(
                            enabled: accountingChartData.isAnyLoading,
                            child: ListTile(
                              title: Text(
                                _data?.totalIncome?.quickCurrency() ?? "N/A",
                              ),
                              titleTextStyle:
                                  _theme.textTheme.titleLarge?.copyWith(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                              visualDensity: const VisualDensity(vertical: 2),
                              subtitle: Text.rich(
                                TextSpan(
                                  children: [
                                    WidgetSpan(
                                      alignment: PlaceholderAlignment.middle,
                                      child: Icon(
                                        _data?.isProfit == true
                                            ? FeatherIcons.arrowUpRight
                                            : FeatherIcons.arrowDownRight,
                                        size: 16,
                                        color: _data?.isProfit == true
                                            ? _theme.colorScheme.primary
                                            : DAppColors.kRejectedColor,
                                      ),
                                    ),
                                    TextSpan(
                                      text:
                                          ' ${_data?.profitLossPercentage ?? 0}% ',
                                      style: TextStyle(
                                        color: _data?.isProfit == true
                                            ? _theme.colorScheme.primary
                                            : DAppColors.kRejectedColor,
                                      ),
                                    ),
                                    TextSpan(
                                      text:
                                          'vs ${(_data?.profitLoss ?? 0).quickCurrency()} current ${accountingChartFilter.frequency?.split('ly').first}.',
                                    )
                                  ],
                                ),
                              ),
                              subtitleTextStyle:
                                  _theme.textTheme.bodyMedium?.copyWith(
                                color: _theme.colorScheme.secondary,
                              ),
                            ),
                          ),

                          // Chart
                          Skeletonizer(
                            enabled: accountingChartData.isAnyLoading,
                            child: SizedBox(
                              height: 200,
                              child: AccountingBarChart(
                                data: _data,
                              ),
                            ),
                          ),
                          Skeletonizer(
                            enabled: accountingChartData.isAnyLoading,
                            containersColor: Colors.grey.shade100,
                            child: Row(
                              spacing: 16,
                              children: [
                                Expanded(
                                  child: CurrencySackListTile(
                                    value: _data?.totalIncome ?? 0,
                                    // label: 'Total Income',
                                    label: context.t.common.totalIncome,
                                    color: DAppColors.kPrimary,
                                  ),
                                ),
                                Expanded(
                                  child: CurrencySackListTile(
                                    value: _data?.totalExpense ?? 0,
                                    // label: 'Total Expense',
                                    label: context.t.common.totalExpense,
                                    color: DAppColors.kPendingColor,
                                  ),
                                ),
                              ],
                            ).fMarginLTRB(16, 12, 16, 24),
                          ),
                        ],
                      ),
                    );
                  },
                ),
                const SizedBox.square(dimension: 20),

                // Overview Section
                Skeletonizer(
                  enabled: dashboardOverviewData.isAnyLoading,
                  child: Builder(
                    builder: (_) {
                      final data = dashboardOverviewData.valueOrNull?.data;

                      final _transactionItems = <OverviewItem>[
                        (
                          // label: "Current Balance",
                          label: context.t.common.currentBalance,
                          value: data?.currentBalance ?? 0,
                          color:
                              const Color(0xff00A551).withValues(alpha: 0.15),
                          isCurrency: true,
                        ),
                        (
                          // label: "Total (Withdrawal)",
                          label: context.t.common.totalWithdrawal,
                          value: data?.totalWithdraw ?? 0,
                          color:
                              const Color(0xffFF900C).withValues(alpha: 0.15),
                          isCurrency: true,
                        ),
                        (
                          // label: "Total Properties",
                          label: context.t.common.totalProperties,
                          value: data?.totalProperties ?? 0,
                          color: const Color(0xffEAE6FF),
                          isCurrency: false,
                        ),
                        (
                          // label: "Total Tenant",
                          label: context.t.common.totalTenant,
                          value: data?.totalTenant ?? 0,
                          color: const Color(0xffD9FBFB),
                          isCurrency: false,
                        ),
                        (
                          // label: "Total Rent Paid",
                          label: context.t.common.totalRentPaid,
                          value: data?.totalRentPaid ?? 0,
                          color:
                              const Color(0xff56A5FF).withValues(alpha: 0.15),
                          isCurrency: true,
                        ),
                        (
                          // label: "Total Rent Due",
                          label: context.t.common.totalRentDue,
                          value: data?.totalRentDue ?? 0,
                          color:
                              const Color(0xffFF2828).withValues(alpha: 0.15),
                          isCurrency: true,
                        ),
                      ];

                      final _applications = <OverviewItem>[
                        (
                          // label: "Total Application",
                          label: context.t.common.totalApplication,
                          value: data?.totalApplication ?? 0,
                          color:
                              const Color(0xff2400FF).withValues(alpha: 0.10),
                          isCurrency: false,
                        ),
                        (
                          // label: "Pending Application",
                          label: context.t.common.pendingApplication,
                          value: data?.pendingApplication ?? 0,
                          color:
                              const Color(0xffFF900C).withValues(alpha: 0.15),
                          isCurrency: false,
                        ),
                        (
                          // label: "Processing Application",
                          label: context.t.common.processingApplication,
                          value: data?.processingApplication ?? 0,
                          color:
                              const Color(0xff00E1E1).withValues(alpha: 0.15),
                          isCurrency: false,
                        ),
                        (
                          // label: "Approve Application",
                          label: context.t.common.approveApplication,
                          value: data?.approveApplication ?? 0,
                          color:
                              const Color(0xff00A551).withValues(alpha: 0.15),
                          isCurrency: false,
                        ),
                        (
                          // label: "Reject Application",
                          label: context.t.common.rejectApplication,
                          value: data?.rejectApplication ?? 0,
                          color:
                              const Color(0xffFF0000).withValues(alpha: 0.15),
                          isCurrency: false,
                        ),
                      ];

                      final _maintenance = <OverviewItem>[
                        (
                          // label: "Processing",
                          label: context.t.enums.maintenanceStatus.processing,
                          value: data?.processingMaintenance ?? 0,
                          color:
                              const Color(0xff2400FF).withValues(alpha: 0.10),
                          isCurrency: false,
                        ),
                        (
                          // label: "Pending",
                          label: context.t.enums.maintenanceStatus.pending,
                          value: data?.pendingMaintenance ?? 0,
                          color:
                              const Color(0xffFF900C).withValues(alpha: 0.15),
                          isCurrency: false,
                        ),
                        (
                          // label: "Maintenance Cost",
                          label: context.t.common.maintenanceCost,
                          value: data?.maintenanceCost ?? 0,
                          color: const Color(0xffFFD9D9),
                          isCurrency: true,
                        ),
                      ];

                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          // Transaction Summary
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  // 'Transaction Summary',
                                  context.t.common.transactionSummary,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: _sectionHeaderStyle,
                                ),
                              ),
                              SizedBox(
                                height: 30,
                                child: AcnooDateFilterDropdown(
                                  key: UniqueKey(),
                                  value: selectedOverviewFilter,
                                  onChanged: (v) {
                                    setState(() {
                                      selectedOverviewFilter = v;
                                    });
                                    ref.invalidate(
                                      dashboardSummaryOverviewProvider(
                                        overviewFilter,
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                          const SizedBox.square(dimension: 12),
                          _buildOverviewItems(context, _transactionItems),
                          const SizedBox.square(dimension: 20),

                          // Application
                          Text(
                            // 'Application',
                            context.t.common.application,
                            style: _sectionHeaderStyle,
                          ),
                          const SizedBox.square(dimension: 12),
                          _buildOverviewItems(
                            context,
                            _applications
                                .take(_applications.length - 1)
                                .toList(),
                          ),
                          const SizedBox.square(dimension: 10),
                          OverviewContainer(
                            label: _applications.last.label,
                            value: _applications.last.value,
                            color: _applications.last.color,
                            isCurrency: _applications.last.isCurrency,
                            alignment: OverviewAlignment.center,
                          ),
                          const SizedBox.square(dimension: 20),

                          // Maintenance Request
                          Text(
                            // 'Maintenance Request',
                            context.t.common.maintenanceRequest,
                            style: _sectionHeaderStyle,
                          ),
                          const SizedBox.square(dimension: 12),
                          _buildOverviewItems(
                              context, _maintenance.take(2).toList()),
                          const SizedBox.square(dimension: 10),
                          OverviewContainer(
                            label: _maintenance.last.label,
                            value: _maintenance.last.value,
                            color: _maintenance.last.color,
                            isCurrency: _maintenance.last.isCurrency,
                            alignment: OverviewAlignment.center,
                          )
                        ],
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildOverviewItems(
    BuildContext ctx,
    List<OverviewItem> items,
  ) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisExtent: 80,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
      ),
      itemCount: items.length,
      shrinkWrap: true,
      primary: false,
      itemBuilder: (context, index) {
        final _data = items[index];
        return OverviewContainer(
          label: _data.label,
          value: _data.value,
          color: _data.color,
          isCurrency: _data.isCurrency,
        );
      },
    );
  }

  Future<void> groupRefresh() {
    return Future.sync(
      () => Future.wait<void>(
        [
          ref.refresh(propertyOverviewProvider.future),
          ref.refresh(dashboardSummaryOverviewProvider(overviewFilter).future),
          ref.refresh(accountingOverviewProvider(accountingChartFilter).future)
        ],
      ),
    );
  }
}

typedef OverviewItem = ({
  String label,
  num value,
  Color color,
  bool isCurrency
});
