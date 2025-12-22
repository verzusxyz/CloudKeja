import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import '../../../../../i18n/strings.g.dart';
import '../../../../core/core.dart';
import '../../../../data/repositories/repositories.dart';
import '../../../../routes/app_routes.gr.dart';
import '../../../../widgets/widgets.dart';

part '_tenant_my_rent_list_view_provider.dart';

@RoutePage()
class TenantMyRentListView extends ConsumerWidget {
  const TenantMyRentListView({super.key, this.scaffoldKey});
  final GlobalKey<ScaffoldState>? scaffoldKey;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(tenantMyRentListViewProvider);

    final _theme = Theme.of(context);
    return DefaultTabController(
      length: MyRentStatus.values.length,
      child: Builder(
        builder: (tabContext) {
          // Tab Listener for filter
          DefaultTabController.of(tabContext).addListener(
            () => controller.changeFilter(
              DefaultTabController.of(tabContext).index,
            ),
          );

          return Scaffold(
            appBar: CustomAppBar(
              // title: const Text('My Rent'),
              title: Text(context.t.common.myRent),
              scaffoldKey: scaffoldKey,
            ),
            body: ScaffoldBodyWrapper(
              body: Column(
                children: [
                  // Tabbar
                  TabBar(
                    isScrollable: true,
                    tabs: [
                      ...MyRentStatus.values.map(
                        (status) => Tab(text: status.label(context)),
                      )
                    ],
                  ),

                  // List
                  Expanded(
                    child: RefreshIndicator.adaptive(
                      onRefresh: () => Future.sync(
                        controller.pagingController.refresh,
                      ),
                      child: PagedListView.separated(
                        keyboardDismissBehavior:
                            ScrollViewKeyboardDismissBehavior.onDrag,
                        padding: const EdgeInsetsDirectional.fromSTEB(
                          24,
                          16,
                          24,
                          80,
                        ),
                        pagingController: controller.pagingController,
                        builderDelegate: PagedChildBuilderDelegate<RentDetails>(
                          itemBuilder: (_, item, __) {
                            final _status = MyRentStatus.fromString(
                              item.status,
                            );

                            return DynamicListCard.keyValueBody(
                              headerLeading: SizedBox.square(
                                dimension: 44,
                                child: UserAvatarPicker(
                                  userName: item.property?.propertyDetail
                                      ?.propertyInfo?.propertyTitle,
                                  showInitialsPlaceholder: true,
                                  showBorder: false,
                                  image: item.property?.coverImage?.firstOrNull,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              title: item.property?.propertyDetail?.propertyInfo
                                      ?.propertyTitle ??
                                  'N/A',
                              subtitle: PropertyCardData.buildAddress([
                                item.property?.addressInfo?.address,
                                item.property?.addressInfo?.city,
                                item.property?.addressInfo?.state,
                              ], separator: ', '),
                              keyValues: [
                                ...{
                                  // "Landlord Name":

                                  context.t.common.landlordName:
                                      item.landlord?.name ?? "N/A",
                                  // "Start Date":
                                  context.t.common.startDate:
                                      item.startDate?.formatDate() ?? "N/A",
                                  // "End Date":
                                  context.t.common.endDate:
                                      item.endDate?.formatDate() ?? "N/A",
                                  // "Rental Amount":
                                  context.t.common.rentalAmount:
                                      item.monthlyRent?.quickCurrency() ??
                                          "N/A",
                                  // "Utility Bill":
                                  context.t.common.utilityBill:
                                      item.utilityBill?.quickCurrency() ??
                                          "N/A",
                                  // "Total Amount":
                                  context.t.common.totalAmount:
                                      item.totalAmount?.quickCurrency() ??
                                          "N/A",
                                  // "Status":
                                  context.t.common.status: _status,
                                }.entries.map(
                                  (entry) {
                                    final value = entry.value;
                                    final isStatus = value is MyRentStatus;

                                    return KeyValueRow(
                                      title: entry.key,
                                      titleFlex: 3,
                                      titleStyle: _theme.textTheme.bodyLarge,
                                      description: isStatus
                                          ? value.label(context)
                                          : value.toString(),
                                      descriptionStyle:
                                          _theme.textTheme.bodyLarge?.copyWith(
                                        color: isStatus
                                            ? value.statusColor
                                            : _theme.colorScheme.secondary,
                                      ),
                                      descriptionFlex: 4,
                                    );
                                  },
                                ),
                              ],
                              // actionButtonText: 'View Details',
                              actionButtonText: context.t.common.viewDetails,
                              onActionTap: () async {
                                // ignore: unused_local_variable
                                final _result = await context.router.push(
                                  TenantMyRentDetailsRoute(id: item.id!),
                                );
                              },
                            );
                          },
                          noItemsFoundIndicatorBuilder: (_) {
                            return SizedBox(
                              height: MediaQuery.sizeOf(context).width,
                              width: double.maxFinite,
                              child: EmptyWidget(
                                replaceDefault: false,
                                child: SizedBox.shrink(),
                                emptyBuilder: (context) {
                                  return RetryButtons.scrollView(
                                    // 'No invitation found!\nPlease try inviting a tenant to see here.',
                                    context.t.exceptions.rentInvitation
                                        .tenantNoRentInvitation,
                                    onRetry: () => Future.sync(
                                      controller.pagingController.refresh,
                                    ),
                                  );
                                },
                              ),
                            );
                          },
                        ),
                        separatorBuilder: (_, __) => const SizedBox.square(
                          dimension: 16,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
