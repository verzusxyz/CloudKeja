import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import '../../../../../i18n/strings.g.dart';
import '../../../../core/core.dart';
import '../../../../data/repositories/repositories.dart';
import '../../../../widgets/widgets.dart';
import '../../../common/pages/common_pages.dart';
import '../../../common/widgets/widgets.dart';

part '_tenant_security_deposit_list_provider.dart';

@RoutePage()
class TenantSecurityDepositListView extends ConsumerWidget {
  const TenantSecurityDepositListView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(tenantSecurityDepositListViewProvider);

    final _theme = Theme.of(context);

    return Scaffold(
      appBar: CustomAppBar(
        // title: const Text('Security Deposit'),
        title: Text(context.t.common.securityDeposit),
      ),
      body: ScaffoldBodyWrapper(
        body: RefreshIndicator.adaptive(
          onRefresh: () => Future.sync(controller.pagingController.refresh),
          child: PagedListView.separated(
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            padding: const EdgeInsets.all(24),
            pagingController: controller.pagingController,
            builderDelegate: PagedChildBuilderDelegate<SecurityDepositDetails>(
              itemBuilder: (_, item, __) {
                final _status = PaymentStatus.fromString(item.status);

                return DynamicListCard.keyValueBody(
                  // title: 'Invoice ID: ${item.invoiceNo ?? "N.A"}',
                  title:
                      '${context.t.common.invoiceId}: ${item.invoiceNo ?? "N.A"}',
                  subtitle: item.createdAt?.formatDate() ?? "N/A",
                  keyValues: [
                    ...{
                      // "Property Name":
                      context.t.common.propertyName: item.property
                              ?.propertyDetail?.propertyInfo?.propertyTitle ??
                          "N/A",
                      // "Landlord Name":
                      context.t.common.landlordName:
                          item.landlord?.name ?? "N/A",
                      // "Landlord Phone":
                      context.t.common.landlordPhone:
                          item.landlord?.phone?.buildPhone ?? "N/A",
                      // "Security Deposit":
                      context.t.common.securityDeposit:
                          item.depositAmount?.quickCurrency() ?? "N/A",
                      // "Utility Bill":
                      context.t.common.utilityBill:
                          item.utilityAdvance?.quickCurrency() ?? "N/A",
                      // "Rental (Advance)":
                      context.t.common.rentalAdvance:
                          item.rentAdvance?.quickCurrency() ?? "N/A",
                      // "Total Amount":
                      context.t.common.totalAmount:
                          item.totalAmount?.quickCurrency() ?? "N/A",
                      // "Status":
                      context.t.common.status: _status,
                    }.entries.map((entry) {
                      final value = entry.value;
                      final isStatus = value is PaymentStatus;

                      return KeyValueRow(
                        title: entry.key,
                        titleFlex: 4,
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
                      item,
                      onSuccess: () => Future.sync(
                        controller.pagingController.refresh,
                      ),
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
                        // 'No security deposit found!\nPlease can see the security deposits when available',
                        context.t.exceptions.noDepositFound,
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
    );
  }

  Future<void> _handleDetailsNavigation(
    BuildContext ctx,
    SecurityDepositDetails data, {
    void Function()? onSuccess,
  }) async {
    final _status = PaymentStatus.fromString(data.status);
    final _invoicePath = DAPIEndpoints.securityDeposit(data.id!);

    // Check if contains any of the status then show preview with printing access
    if ([
      PaymentStatus.paid,
      PaymentStatus.pending,
      PaymentStatus.rejected,
      PaymentStatus.refund,
    ].contains(_status)) {
      return await ctx.router.pushWidget<void>(
        InvoiceDetailsView.printInvoice(invoicePath: _invoicePath),
      );
    }

    // Make Payment
    if (_status.isUnpaid) {
      final _paymentOptionResult = await ctx.router.pushWidget<PaymentOptions>(
        InvoiceDetailsView.makePayment(invoicePath: _invoicePath),
      );

      if (_paymentOptionResult != null && ctx.mounted) {
        // Offline Payment
        if (_paymentOptionResult.isOffline) {
          final _offlinePaymentResult = await ctx.router.pushWidget<String>(
            OfflinePaymentView(
              invoiceId: data.id!,
              paymentType: PaymentType.securityDeposit,
              payableAmount: data.totalAmount,
            ),
          );

          if (_offlinePaymentResult != null && ctx.mounted) {
            // Success Callback
            onSuccess?.call();

            final didViewInvoice = await ctx.router.pushWidget<bool>(
              PaymentStatusView(
                status: PaymentStatusViewType.success,
                onPressed: () => ctx.router.maybePop(true),
              ),
            );
            if (ctx.mounted && didViewInvoice == true) {
              return await ctx.router.pushWidget<void>(
                InvoiceDetailsView.printInvoice(invoicePath: _invoicePath),
              );
            }
          }
          return;
        }

        if (_paymentOptionResult.isOnline) {
          final didSuccess = await SharedWidgets.handleOnlinePayment(
            ctx,
            invocieId: data.id!,
            paymentType: PaymentType.securityDeposit,
          );
          if (ctx.mounted && didSuccess) {
            // Success Callback
            onSuccess?.call();

            final didViewInvoice = await ctx.router.pushWidget<bool>(
              PaymentStatusView(
                status: PaymentStatusViewType.success,
                onPressed: () => ctx.router.maybePop(true),
              ),
            );
            if (ctx.mounted && didViewInvoice == true) {
              return await ctx.router.pushWidget<void>(
                InvoiceDetailsView.printInvoice(invoicePath: _invoicePath),
              );
            }
            return;
          }
        }
      }
    }
  }
}
