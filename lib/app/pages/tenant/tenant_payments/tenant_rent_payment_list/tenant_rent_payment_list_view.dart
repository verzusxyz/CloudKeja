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

part '_tenant_rent_payment_list_view_provider.dart';

@RoutePage()
class TenantRentPaymentListView extends ConsumerWidget {
  const TenantRentPaymentListView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(tenantRentPaymentListViewProvider);

    final _theme = Theme.of(context);

    return Scaffold(
      appBar: CustomAppBar(
        // title:const  Text('Rent Payment'),
        title: Text(context.t.common.rentPayment),
      ),
      body: ScaffoldBodyWrapper(
        body: RefreshIndicator.adaptive(
          onRefresh: () => Future.sync(controller.pagingController.refresh),
          child: PagedListView.separated(
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            padding: const EdgeInsets.all(24),
            pagingController: controller.pagingController,
            builderDelegate: PagedChildBuilderDelegate<RentPaymentDetails>(
              itemBuilder: (_, item, __) {
                final _status = PaymentStatus.fromString(item.paymentStatus);

                return DynamicListCard.keyValueBody(
                  // title: 'Invoice ID: ${item.invoiceNo ?? "N.A"}',
                  title:
                      '${context.t.common.invoiceId}: ${item.invoiceNo ?? "N.A"}',
                  subtitle: item.createdAt?.formatDate() ?? "N/A",
                  keyValues: [
                    ...{
                      // "Property Name":
                      context.t.common.propertyName: item.rent?.property
                              ?.propertyDetail?.propertyInfo?.propertyTitle ??
                          "N/A",
                      // "Landlord Name":
                      context.t.common.landlordName:
                          item.rent?.landlord?.name ?? "N/A",
                      // "Rent Amount":
                      context.t.common.rentalAmount:
                          item.subtotalAmount?.quickCurrency() ?? "N/A",
                      // "Total Amount":
                      context.t.common.totalAmount:
                          item.subtotalAmount?.quickCurrency() ?? "N/A",
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
                  onActionTap: () async => await _handleDetailsNavigation(
                    context,
                    item,
                  ),
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
                        // 'No rent payment found!\nPlease can see the rent payments when available.',
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
      ),
    );
  }

  Future<void> _handleDetailsNavigation(
    BuildContext ctx,
    RentPaymentDetails data,
  ) async {
    final _status = PaymentStatus.fromString(data.paymentStatus);
    final _invoicePath = DAPIEndpoints.rentPayment(data.id!);

    // Check if contains any of the status then show preview with printing access
    if ([
      PaymentStatus.paid,
      PaymentStatus.pending,
      PaymentStatus.rejected,
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
              paymentType: PaymentType.rentPayment,
              payableAmount: data.totalAmount,
            ),
          );

          if (_offlinePaymentResult != null && ctx.mounted) {
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
            paymentType: PaymentType.rentPayment,
          );
          if (ctx.mounted && didSuccess) {
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
