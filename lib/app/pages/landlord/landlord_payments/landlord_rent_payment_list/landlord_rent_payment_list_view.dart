import 'package:auto_route/auto_route.dart';
import 'package:fdevs_fitkit/fdevs_fitkit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import '../../../../../i18n/strings.g.dart';
import '../../../../core/core.dart';
import '../../../../data/repositories/repositories.dart';
import '../../../../widgets/widgets.dart';
import '../../../common/pages/common_pages.dart';

part '_landlord_deposit_utility_payment_list_view_provider.dart';

@RoutePage()
class LandlordRentPaymentListView extends ConsumerWidget {
  const LandlordRentPaymentListView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(landlordRentPaymentListViewProvider);

    final _theme = Theme.of(context);

    return DefaultTabController(
      length: controller.tabFilters.length,
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
              // title: const Text('Rent Payment'),
              title: Text(context.t.common.rentPayment),
              actions: [
                Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: AcnooDateFilterDropdown(
                    onChanged: (value) {
                      return controller.changeDataFilter(
                        fromDate:
                            value.fromDate.formatDate(pattern: 'yyyy-MM-dd'),
                        toDate: value.toDate.formatDate(pattern: 'yyyy-MM-dd'),
                      );
                    },
                  ).fMarginSymmetric(vertical: 12),
                ),
              ],
            ),
            body: ScaffoldBodyWrapper(
              body: RefreshIndicator.adaptive(
                onRefresh: () => Future.sync(
                  controller.pagingController.refresh,
                ),
                child: Column(
                  children: [
                    // Tabbar
                    TabBar(
                      isScrollable: true,
                      // tabAlignment: TabAlignment.fill,
                      labelPadding: EdgeInsetsDirectional.symmetric(
                        horizontal: 24,
                      ),
                      tabs: controller.tabFilters
                          .map((tab) => Tab(text: tab.label(context)))
                          .toList(),
                    ),

                    // List Items
                    Expanded(
                      child: PagedListView.separated(
                        keyboardDismissBehavior:
                            ScrollViewKeyboardDismissBehavior.onDrag,
                        padding: const EdgeInsets.all(24),
                        pagingController: controller.pagingController,
                        builderDelegate:
                            PagedChildBuilderDelegate<RentPaymentDetails>(
                          itemBuilder: (_, item, __) {
                            final _status =
                                PaymentStatus.fromString(item.paymentStatus);

                            return DynamicListCard.keyValueBody(
                              showHeader: false,
                              keyValues: [
                                ...{
                                  // "Invoice ID":
                                  context.t.common.invoiceId:
                                      item.invoiceNo ?? "N/A",
                                  // "Tenant Name":
                                  context.t.common.tenantName:
                                      item.rent?.tenant?.name ?? "N/A",
                                  // "Property Name":
                                  context.t.common.propertyName: item
                                          .rent
                                          ?.property
                                          ?.propertyDetail
                                          ?.propertyInfo
                                          ?.propertyTitle ??
                                      "N/A",
                                  // "Property ID":
                                  context.t.common.propertyId:
                                      item.rent?.property?.pUid ?? "N/A",
                                  // "Rental Amount":
                                  context.t.common.rentalAmount:
                                      item.subtotalAmount?.quickCurrency() ??
                                          "N/A",

                                  // Admin Charge
                                  "${context.t.common.adminCharge} __admin_charge__":
                                      "${item.charge?.quickCurrency() ?? 0}",
                                  // "Total Amount":
                                  context.t.common.totalAmount:
                                      item.totalAmount?.quickCurrency() ??
                                          "N/A",
                                  // "Status":
                                  context.t.common.status: _status,
                                }.entries.map((entry) {
                                  final value = entry.value;
                                  final isStatus = value is PaymentStatus;
                                  final _isAdminCharge =
                                      entry.key.contains('__admin_charge__');

                                  return KeyValueRow(
                                    title: entry.key
                                        .split('__admin_charge__')
                                        .first,
                                    titleFlex: 4,
                                    titleStyle:
                                        _theme.textTheme.bodyLarge?.copyWith(
                                      color: _theme.colorScheme.secondary,
                                    ),
                                    description: isStatus
                                        ? value.label(context)
                                        : value.toString(),
                                    descriptionStyle:
                                        _theme.textTheme.bodyLarge?.copyWith(
                                      color: isStatus
                                          ? _status.color
                                          : _isAdminCharge
                                              ? Colors.red
                                              : null,
                                    ),
                                    descriptionFlex: 4,
                                  );
                                })
                              ],
                              actionButtonText: 'View Details',
                              onActionTap: () async {
                                return await _handleDetailsNavigation(
                                  context,
                                  item,
                                );
                              },
                            );
                          },
                          noItemsFoundIndicatorBuilder: (context) {
                            return SizedBox(
                              height: MediaQuery.sizeOf(context).width,
                              width: double.maxFinite,
                              child: EmptyWidget(
                                replaceDefault: false,
                                child: SizedBox.shrink(),
                                emptyBuilder: (context) {
                                  return RetryButtons.scrollView(
                                    // 'No rent payment found!\nPlease can see the rent payments when available',
                                    context.t.exceptions.noRentPaymentFound,
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
                  ],
                ),
              ),
            ),
          );
        },
      ),
    ).unfocusPrimary();
  }

  Future<void> _handleDetailsNavigation(
    BuildContext ctx,
    RentPaymentDetails data,
  ) async {
    if (!_warnIfNull(ctx, data.id)) return;
    final _invoicePath = DAPIEndpoints.rentPayment(data.id!);

    return await ctx.router.pushWidget<void>(
      InvoiceDetailsView.printInvoice(
        invoicePath: _invoicePath,
      ),
    );
  }

  bool _warnIfNull(BuildContext ctx, int? id) {
    if (id == null) {
      showCustomSnackBar(
        ctx,
        content: Text(
          // 'Invalid payment info! Please refresh the page and try again.',
          ctx.t.exceptions.invalidApiDataRefreshPage(
            dataType: ctx.t.common.rentPayment.toLowerCase(),
          ),
        ),
        customSnackBarType: CustomOverlayType.error,
      );
      return false;
    }
    return true;
  }
}
