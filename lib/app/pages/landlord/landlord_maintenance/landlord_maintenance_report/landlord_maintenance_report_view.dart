import 'package:auto_route/auto_route.dart';
import 'package:equatable/equatable.dart';
import 'package:fdevs_fitkit/fdevs_fitkit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:recase/recase.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../../i18n/strings.g.dart';
import '../../../../core/core.dart';
import '../../../../data/repositories/repositories.dart';
import '../../../../widgets/widgets.dart';

@RoutePage()
class LandlordMaintenanceReportView extends ConsumerStatefulWidget {
  const LandlordMaintenanceReportView({super.key});

  @override
  ConsumerState<LandlordMaintenanceReportView> createState() =>
      _LandlordMaintenanceReportViewState();
}

class _LandlordMaintenanceReportViewState
    extends ConsumerState<LandlordMaintenanceReportView> {
  late MaintenanceReportFilter filter;

  @override
  void initState() {
    final _initDate = DateTime.now().formatDate(pattern: 'yyyy-MM-dd');
    filter = MaintenanceReportFilter(
      fromDate: _initDate,
      toDate: _initDate,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var _reportDetails = ref.watch(maintenanceReportProvider(filter));
    var _propertyList = ref.watch(propertyListProvider);

    final _theme = Theme.of(context);

    return Scaffold(
      appBar: CustomAppBar(
        // title: const Text('Maintenance Report'),
        title: Text(context.t.common.maintenanceReport),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: AcnooDateFilterDropdown(
              onChanged: (value) {
                setState(() {
                  filter = filter.copyWith(
                    fromDate: value.fromDate.formatDate(pattern: 'yyyy-MM-dd'),
                    toDate: value.toDate.formatDate(pattern: 'yyyy-MM-dd'),
                  );
                });
                _reportDetails = ref.refresh(maintenanceReportProvider(filter));
              },
            ).fMarginSymmetric(vertical: 12),
          ),
        ],
      ),
      body: ScaffoldBodyWrapper(
        body: RefreshIndicator.adaptive(
          onRefresh: () => ref.refresh(
            maintenanceReportProvider(filter).future,
          ),
          child: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            padding: const EdgeInsets.all(24),
            child: _reportDetails.when(
              skipLoadingOnRefresh: false,
              data: (d) {
                final _data = d.data;
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Total Maintenance cost
                    Text.rich(
                      context.t.pages.landlordMaintenanceReport
                          .totalMaintenanceCost(
                        amount: TextSpan(
                          text: _data?.allProperties?.maintenanceTotalCost
                              ?.quickCurrency(),
                          style: _theme.textTheme.bodyMedium,
                        ),
                      ),
                      style: _theme.textTheme.titleLarge?.copyWith(
                        color: _theme.colorScheme.secondary,
                        fontSize: 16,
                      ),
                    ),
                    const Divider(height: 16),
                    const SizedBox.square(dimension: 16),

                    // All Property Overview
                    ...[
                      Row(
                        spacing: 10,
                        children: [
                          // Pending
                          Expanded(
                            child: OverviewContainer(
                              // label: 'Maintenance Pending',
                              label: context.t.pages.landlordMaintenanceReport
                                  .maintenancePending,
                              value:
                                  _data?.allProperties?.maintenancePending ?? 0,
                              isCurrency: false,
                              color: const Color(0xff2400FF)
                                  .withValues(alpha: 0.10),
                            ),
                          ),

                          // Processing
                          Expanded(
                            child: OverviewContainer(
                              // label: 'Maintenance Processing',
                              label: context.t.pages.landlordMaintenanceReport
                                  .maintenanceProcessing,
                              value:
                                  _data?.allProperties?.maintenanceProcessing ??
                                      0,
                              isCurrency: false,
                              color: const Color(0xffFF9900)
                                  .withValues(alpha: 0.15),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox.square(dimension: 10),
                      Row(
                        spacing: 10,
                        children: [
                          // Completed
                          Expanded(
                            child: OverviewContainer(
                              // label: 'Maintenance Completed',
                              label: context.t.pages.landlordMaintenanceReport
                                  .maintenanceCompleted,
                              value:
                                  _data?.allProperties?.maintenanceCompleted ??
                                      0,
                              isCurrency: false,
                              color: Color(0xffD9F2E5),
                            ),
                          ),

                          // Rejected
                          Expanded(
                            child: OverviewContainer(
                              label: context.t.pages.landlordMaintenanceReport
                                  .maintenanceRejected,
                              value:
                                  _data?.allProperties?.maintenanceRejected ??
                                      0,
                              isCurrency: false,
                              color: Color(0xffFFDFDF),
                            ),
                          ),
                        ],
                      )
                    ],
                    const SizedBox.square(dimension: 16),

                    // Individual Property Overview
                    ...[
                      // Property Dropdown
                      Builder(
                        builder: (_) {
                          if (_propertyList.hasError &&
                              !_propertyList.hasValue) {
                            return Text.rich(
                              RetryButtons.inlineText(
                                _propertyList.error!,
                                onRetry: () {
                                  _propertyList = ref.refresh(
                                    propertyListProvider,
                                  );
                                },
                              ),
                            );
                          }
                          final _properties = [
                            ...?_propertyList.valueOrNull?.data?.data
                          ];

                          return Skeletonizer(
                            enabled: _propertyList.isAnyLoading,
                            child: DropdownButtonFormField<int>(
                              // hint: const Text('Select property'),
                              hint: Text(
                                context.t.form.anyDropdown
                                    .hint(label: context.t.common.property)
                                    .sentenceCase,
                              ),
                              decoration: InputDecoration(
                                // labelText: 'Property Name',
                                labelText: context.t.form.anyDropdown.label(
                                  label: context.t.common.propertyName,
                                ),
                              ),
                              isExpanded: true,
                              value: filter.propertyId,
                              items: List.generate(
                                _properties.length,
                                (index) {
                                  final _property = _properties[index];
                                  return DropdownMenuItem<int>(
                                    value: _property.id,
                                    child: Text(
                                      _property.propertyDetail?.propertyInfo
                                              ?.propertyTitle ??
                                          "N/A",
                                    ),
                                  );
                                },
                              ),
                              menuMaxHeight: 250,
                              onChanged: (v) {
                                setState(() {
                                  filter = filter.copyWith(propertyId: v);
                                });
                                _reportDetails = ref.refresh(
                                  maintenanceReportProvider(filter),
                                );
                              },
                            ),
                          );
                        },
                      ),
                      const SizedBox.square(dimension: 16),

                      // Total Maintenance cost
                      Text.rich(
                        context.t.pages.landlordMaintenanceReport
                            .totalMaintenanceCost(
                          amount: TextSpan(
                            text: _data
                                ?.individualProperty?.maintenanceTotalCost
                                ?.quickCurrency(),
                            style: _theme.textTheme.bodyMedium,
                          ),
                        ),
                        style: _theme.textTheme.titleLarge?.copyWith(
                          color: _theme.colorScheme.secondary,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox.square(dimension: 16),

                      Row(
                        spacing: 10,
                        children: [
                          // Pending
                          Expanded(
                            child: OverviewContainer(
                              // label: 'Maintenance Pending',
                              label: context.t.pages.landlordMaintenanceReport
                                  .maintenancePending,
                              value: _data?.individualProperty
                                      ?.maintenancePending ??
                                  0,
                              isCurrency: false,
                              color: const Color(0xff2400FF)
                                  .withValues(alpha: 0.10),
                            ),
                          ),

                          // Processing
                          Expanded(
                            child: OverviewContainer(
                              // label: 'Maintenance Processing',
                              label: context.t.pages.landlordMaintenanceReport
                                  .maintenanceProcessing,
                              value: _data?.individualProperty
                                      ?.maintenanceProcessing ??
                                  0,
                              isCurrency: false,
                              color: const Color(0xffFF9900)
                                  .withValues(alpha: 0.15),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox.square(dimension: 10),
                      Row(
                        spacing: 10,
                        children: [
                          // Completed
                          Expanded(
                            child: OverviewContainer(
                              // label: 'Maintenance Completed',
                              label: context.t.pages.landlordMaintenanceReport
                                  .maintenanceCompleted,
                              value: _data?.individualProperty
                                      ?.maintenanceCompleted ??
                                  0,
                              isCurrency: false,
                              color: Color(0xffD9F2E5),
                            ),
                          ),

                          // Rejected
                          Expanded(
                            child: OverviewContainer(
                              // label: 'Maintenance Rejected',
                              label: context.t.pages.landlordMaintenanceReport
                                  .maintenanceRejected,
                              value: _data?.individualProperty
                                      ?.maintenanceRejected ??
                                  0,
                              isCurrency: false,
                              color: Color(0xffFFDFDF),
                            ),
                          ),
                        ],
                      )
                    ]
                  ],
                );
              },
              error: (error, _) {
                return SizedBox(
                  height: MediaQuery.sizeOf(context).width,
                  width: double.maxFinite,
                  child: EmptyWidget(
                    replaceDefault: false,
                    child: SizedBox.shrink(),
                    emptyBuilder: (context) {
                      return RetryButtons.scrollView(
                        error,
                        onRetry: () => ref.refresh(
                          maintenanceReportProvider(filter),
                        ),
                      );
                    },
                  ),
                );
              },
              loading: () {
                return Skeletonizer(
                  child: GridView.count(
                    crossAxisCount: 2,
                    shrinkWrap: true,
                    mainAxisSpacing: 16,
                    crossAxisSpacing: 16,
                    childAspectRatio: 1.777777778,
                    children: List.generate(
                      10,
                      (index) => OverviewContainer(
                        label: 'Maintenance Pending',
                        value: 12,
                        isCurrency: false,
                        customCurrencySymbol: 'RM',
                        color: const Color(0xff2400FF).withValues(alpha: 0.10),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    ).unfocusPrimary();
  }
}

final maintenanceReportProvider = FutureProvider.autoDispose
    .family<MaintenanceReportModel, MaintenanceReportFilter>(
  (ref, args) => Future.microtask(
    () {
      return ref.read(maintenanceRepoProvider).getMaintenanceReport(
            fromDate: args.fromDate,
            toDate: args.toDate,
            propertyId: args.propertyId,
          );
    },
  ),
);

class MaintenanceReportFilter extends Equatable {
  final String fromDate;
  final String toDate;
  final int? propertyId;

  const MaintenanceReportFilter({
    required this.fromDate,
    required this.toDate,
    this.propertyId,
  });

  MaintenanceReportFilter copyWith({
    String? fromDate,
    String? toDate,
    int? propertyId,
  }) {
    return MaintenanceReportFilter(
      fromDate: fromDate ?? this.fromDate,
      toDate: toDate ?? this.toDate,
      propertyId: propertyId ?? this.propertyId,
    );
  }

  @override
  List<Object?> get props => [fromDate, toDate, propertyId];
}

final propertyListProvider = FutureProvider.autoDispose(
  (ref) => Future.microtask(
    () => ref.read(propertyRepoProvider).getProperties(
          noPaging: true,
        ),
  ),
);
