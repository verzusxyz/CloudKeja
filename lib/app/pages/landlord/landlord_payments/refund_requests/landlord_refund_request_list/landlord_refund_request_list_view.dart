import 'package:auto_route/auto_route.dart';
import 'package:fdevs_fitkit/fdevs_fitkit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import '../../../../../../i18n/strings.g.dart';
import '../../../../../core/core.dart';
import '../../../../../data/repositories/repositories.dart';
import '../../../../../widgets/widgets.dart';
import '../../../../common/pages/common_pages.dart';

part '_landlord_refund_request_list_view_provider.dart';

@RoutePage()
class LandlordRefundRequestListView extends ConsumerWidget {
  const LandlordRefundRequestListView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(landlordRefundRequestListViewProvider);

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
              // title: const Text('Refund Request'),
              title: Text(context.t.common.refundRequest),
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
                      // isScrollable: true,
                      tabAlignment: TabAlignment.fill,
                      labelPadding: EdgeInsetsDirectional.symmetric(
                        horizontal: 16,
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
                            PagedChildBuilderDelegate<RefundRequestDetails>(
                          itemBuilder: (_, item, __) {
                            final _status =
                                PaymentStatus.fromString(item.status);

                            return DynamicListCard.keyValueBody(
                              showHeader: false,
                              keyValues: [
                                ...{
                                  // "Invoice ID":
                                  context.t.common.invoiceId:
                                      item.deposit?.invoiceNo ?? "N/A",
                                  // "Tenant Name":
                                  context.t.common.tenantName:
                                      item.tenant?.name ?? "N/A",
                                  // "Property Name":
                                  context.t.common.propertyName: item
                                          .property
                                          ?.propertyDetail
                                          ?.propertyInfo
                                          ?.propertyTitle ??
                                      "N/A",
                                  // "Property ID":
                                  context.t.common.propertyId:
                                      item.property?.pUid ?? "N/A",
                                  // "Deposit Amount":
                                  context.t.common.depositAmount: item
                                          .deposit?.depositAmount
                                          ?.quickCurrency() ??
                                      "N/A",
                                  // "Status":
                                  context.t.common.status: _status,
                                }.entries.map((entry) {
                                  final value = entry.value;
                                  final isStatus = value is PaymentStatus;

                                  return KeyValueRow(
                                    title: entry.key,
                                    titleFlex: 4,
                                    titleStyle: _theme.textTheme.bodyLarge
                                        ?.copyWith(
                                            color:
                                                _theme.colorScheme.secondary),
                                    description: isStatus
                                        ? value.label(context)
                                        : value.toString(),
                                    descriptionStyle:
                                        _theme.textTheme.bodyLarge?.copyWith(
                                      color: isStatus ? _status.color : null,
                                    ),
                                    descriptionFlex: 4,
                                  );
                                })
                              ],
                              // actionButtonText: 'View Details',
                              actionButtonText: context.t.common.viewDetails,
                              onActionTap: () async {
                                return await _handleDetailsNavigation(
                                  context,
                                  ref,
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
                                    // 'No ${controller.selectedFilter.label.toLowerCase()} refund request found!\nYou can see refund request here when available.',
                                    context.t.exceptions.noStatusRefundReqFound
                                        .landlord(
                                      status: controller.selectedFilter
                                          .label(context)
                                          .toLowerCase(),
                                    ),
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
    WidgetRef ref,
    RefundRequestDetails data,
  ) async {
    if (!_warnIfNull(ctx, data.id)) return;
    final _invoicePath = DAPIEndpoints.refundRequest(data.id!);
    final _paymentStatus = PaymentStatus.fromString(data.status);

    if ((_paymentStatus.isUnpaid && data.hasReceipt)) {
      return await ctx.router.pushWidget<void>(
        InvoiceDetailsView.printInvoice(
          invoicePath: _invoicePath,
        ),
      );
    }

    File? file;
    return await ctx.router.pushWidget<void>(
      FormWrapper(
        builder: (formContext) {
          return InvoiceDetailsView(
            invoicePath: _invoicePath,
            scrollbodyWidget: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  // 'Upload Payment Receipt',
                  ctx.t.common.uploadPaymentReceipt,
                  style: Theme.of(formContext).textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                ),
                const SizedBox.square(dimension: 6),
                FileFormField.upload(
                  initialValue: file,
                  onSelectFile: (v) => file = v,
                  fieldType: FileFormFieldType.listTile,
                  fileType: FileFormFieldFileType.any,
                  validator: (value) {
                    if (value == null || value.path.isEmpty) {
                      // return "Please select an agreement document file.";
                      return ctx.t.common.askSelectRentAgreement;
                    }
                    return null;
                  },
                ),
                const SizedBox.square(dimension: 8),
                const TermsConditionsFormField(),
              ],
            ).fMarginLTRB(24, 12, 24, 0),
            appbarActions: [
              InvoiceActionBuilder<ElevatedButton>(
                builder: (invCtx) {
                  return ElevatedButton.icon(
                    onPressed: () async {
                      await InvoiceDetailsView.webViewController(invCtx)
                          ?.printCurrentPage();
                      return;
                    },
                    style: ElevatedButton.styleFrom(
                      visualDensity: const VisualDensity(
                        horizontal: -4,
                        vertical: -2,
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 6,
                      ),
                    ),
                    // label: const Text('Print'),
                    label: Text(ctx.t.action.print),
                    icon: Icon(
                      Icons.print_outlined,
                      color: Theme.of(formContext).colorScheme.onPrimary,
                    ),
                  );
                },
              ).fMarginOnly(right: 12),
            ],
            actionWidget: InvoiceActionBuilder(
              builder: (invCtx) {
                return ElevatedButton(
                  onPressed: () async {
                    if (FormWrapper.validate(formContext)) {
                      final _result = await showAsyncLoadingOverlay(
                        formContext,
                        asyncFunction: () => Future.microtask(
                          () =>
                              ref.read(paymentsRepoProvider).makeRefundPayment(
                                    id: data.id!,
                                    file: file!,
                                  ),
                        ),
                      );

                      if (formContext.mounted) {
                        if (_result.isFailure) {
                          showCustomSnackBar(
                            formContext,
                            content: Text(_result.left!),
                            customSnackBarType: CustomOverlayType.error,
                          );
                          return;
                        }

                        ctx.router.maybePop();
                        showCustomSnackBar(
                          ctx,
                          content: Text(
                            // 'Payment receipt submitted successfully.',
                            ctx.t.common.paymentReceiptSubmitSuccess,
                          ),
                          customSnackBarType: CustomOverlayType.success,
                        );
                        return;
                      }
                    }
                  },
                  // child: const Text('Send'),
                  child: Text(ctx.t.action.send),
                );
              },
            ),
          );
        },
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
            dataType: ctx.t.common.payment.toLowerCase(),
          ),
        ),
        customSnackBarType: CustomOverlayType.error,
      );
      return false;
    }
    return true;
  }
}
