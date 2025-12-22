import 'package:auto_route/auto_route.dart';
import 'package:fdevs_fitkit/fdevs_fitkit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import '../../../../../../i18n/strings.g.dart';
import '../../../../../core/core.dart';
import '../../../../../data/repositories/repositories.dart';
import '../../../../../routes/app_routes.gr.dart';
import '../../../../../widgets/widgets.dart';
import '../../../../common/pages/common_pages.dart';
import '../../../../common/widgets/widgets.dart';

part '_tenant_refund_request_list_view_provider.dart';

@RoutePage()
class TenantRefundRequestListView extends ConsumerWidget {
  const TenantRefundRequestListView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(tenantRefundRequestListViewProvider);

    final _theme = Theme.of(context);

    return Scaffold(
      appBar: CustomAppBar(
        // title: const Text('Refund Request'),
        title: Text(context.t.common.refundRequest),
      ),
      body: ScaffoldBodyWrapper(
        body: RefreshIndicator.adaptive(
          onRefresh: () => Future.sync(controller.pagingController.refresh),
          child: PagedListView.separated(
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            padding: const EdgeInsets.all(24),
            pagingController: controller.pagingController,
            builderDelegate: PagedChildBuilderDelegate<RefundRequestDetails>(
              itemBuilder: (_, item, __) {
                final _status = PaymentStatus.fromString(item.status);

                return DynamicListCard.keyValueBody(
                  // title: 'Invoice ID: ${item.deposit?.invoiceNo ?? "N/A"}',
                  title:
                      '${context.t.common.invoiceId}: ${item.deposit?.invoiceNo ?? "N/A"}',
                  subtitle: item.createdAt?.formatDate() ?? "N/A",
                  keyValues: [
                    ...{
                      // "Property Name":
                      context.t.common.propertyName: item.property
                              ?.propertyDetail?.propertyInfo?.propertyTitle ??
                          "N/A",
                      // "Property ID":
                      context.t.common.propertyId: item.property?.pUid ?? "N/A",
                      // "Landlord Name":
                      context.t.common.landlordName:
                          item.landlord?.name ?? "N/A",
                      // "Security Deposit":
                      context.t.common.securityDeposit:
                          item.deposit?.depositAmount?.quickCurrency() ?? "N/A",

                      // "Utility Deposit":
                      context.t.common.utilityBill:
                          item.deposit?.utilityAdvance?.quickCurrency() ??
                              "N/A",
                      // "1 Month Advance":
                      context.t.common.rentalAdvance:
                          item.deposit?.rentAdvance?.quickCurrency() ?? "N/A",
                      // "Total Amount":
                      context.t.common.totalAmount:
                          item.deposit?.totalAmount?.quickCurrency() ?? "N/A",
                      // "Refund Reason":
                      context.t.common.refundReason: item.refundReason ?? "N/A",
                      // "Status":
                      context.t.common.status: _status,
                      // "Note":
                      // "Tenant will approve the refund when he got the money back",
                      context.t.common.note:
                          context.t.exceptions.refundRequestHint.inTenantList,
                    }.entries.map((entry) {
                      final value = entry.value;
                      final isStatus = value is PaymentStatus;

                      return KeyValueRow(
                        title: entry.key,
                        titleFlex: 3,
                        titleStyle: _theme.textTheme.bodyLarge
                            ?.copyWith(color: _theme.colorScheme.secondary),
                        description:
                            isStatus ? value.label(context) : value.toString(),
                        descriptionStyle: _theme.textTheme.bodyLarge?.copyWith(
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
                        // 'No refund request found!\nYou can create refund request to see that here.',
                        context.t.exceptions.noStatusRefundReqFound.tenant,
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
      bottomNavigationBar: ScaffoldBottomNavWrapper(
        child: SizedBox(
          height: 50,
          child: ElevatedButton(
            onPressed: () async {
              // ignore: unused_local_variable
              final _result = await context.router.push(
                TenantManageRefundRequestRoute(),
              );
            },
            // child: const Text('Request For Refund'),
            child: Text(context.t.action.requestForRefund),
          ),
        ).fMarginLTRB(24, 16, 24, 16),
      ),
    );
  }

  Future<void> _handleDetailsNavigation(
    BuildContext ctx,
    WidgetRef ref,
    RefundRequestDetails data,
  ) async {
    final _status = PaymentStatus.fromString(data.status);
    final _invoicePath = DAPIEndpoints.refundRequest(data.id!);

    return await ctx.router.pushWidget<void>(
      FormWrapper(
        builder: (formContext) {
          return InvoiceDetailsView.printInvoice(
            invoicePath: _invoicePath,
            appbarActions: [
              if (_status.isUnpaid)
                InvoiceActionBuilder<ElevatedButton>(
                  builder: (invCtx) {
                    return ElevatedButton(
                      onPressed: () async {
                        if (FormWrapper.validate(formContext)) {
                          final _result = await showAsyncLoadingOverlay(
                            formContext,
                            asyncFunction: () => Future.microtask(
                              () => ref
                                  .read(paymentsRepoProvider)
                                  .approveRefundPayment(data.id!),
                            ),
                          );

                          if (formContext.mounted) {
                            if (_result.isFailure) {
                              showCustomSnackBar(
                                ctx,
                                content: Text(_result.left!),
                                customSnackBarType: CustomOverlayType.error,
                              );
                              return;
                            }

                            ctx.router.maybePop();
                            showCustomSnackBar(
                              ctx,
                              // content:
                              //     const Text('Refund received successfully.'),
                              content: Text(ctx.t.common.refundReceiveSuccess),
                              customSnackBarType: CustomOverlayType.success,
                            );
                            return;
                          }
                        }
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
                      // child: const Text('Approve'),
                      child: Text(ctx.t.action.approve),
                    );
                  },
                ).overlap(showWhen: !data.hasReceipt).fMarginAll(10),
            ],
            scrollbodyWidget:
                _status.isPaid || (_status.isUnpaid && !data.hasReceipt)
                    ? null
                    : Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            // 'Download Payment Receipt',
                            ctx.t.common.downloadPaymentReceipt,
                            style: Theme.of(ctx).textTheme.bodyMedium?.copyWith(
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                          const SizedBox.square(dimension: 6),
                          FileFormField.download(
                            downloadURL: data.attachment?.remote,
                            onDownloadTap: () async {
                              return await SharedWidgets.handleDownloadOverlay(
                                ctx,
                                data.attachment?.remote,
                              );
                            },
                          ),
                          const SizedBox.square(dimension: 8),
                          const TermsConditionsFormField(initialValue: true),
                        ],
                      ).fMarginLTRB(24, 12, 24, 0),
          );
        },
      ),
    );
  }
}
