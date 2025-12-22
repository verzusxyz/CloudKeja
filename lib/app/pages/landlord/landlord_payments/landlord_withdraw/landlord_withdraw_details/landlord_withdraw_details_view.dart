import 'package:auto_route/auto_route.dart';
import 'package:fdevs_fitkit/fdevs_fitkit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../../../i18n/strings.g.dart';
import '../../../../../core/core.dart';
import '../../../../../data/repositories/repositories.dart';
import '../../../../../widgets/widgets.dart';
import '../../../../common/pages/common_pages.dart';

@RoutePage()
class LandlordWithdrawDetailsView extends ConsumerWidget {
  const LandlordWithdrawDetailsView({super.key, required this.id});
  final int id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final summary = ref.watch(landlordWithdrawSummaryProvider(id));
    final data = summary.valueOrNull?.data;
    final _status = PaymentStatus.fromString(data?.withdraw?.status);

    final _theme = Theme.of(context);
    const _ckFlex = 6;
    const _cVFlex = 8;
    final _cKTextStyle = _theme.textTheme.bodyMedium;
    final _cVTextStyle = _cKTextStyle?.copyWith(
      color: _theme.colorScheme.secondary,
    );
    final _sectionHeaderStyle = _theme.textTheme.titleMedium?.copyWith(
      fontSize: 18,
      fontWeight: FontWeight.w500,
    );

    return Scaffold(
      appBar: CustomAppBar(
        title: Skeletonizer(
          enabled: summary.isAnyLoading,
          child: ListTile(
            title: Text(
              data?.withdraw?.accountInfo?.withdrawMethod?.name ?? "N/A",
            ),
            titleTextStyle: _theme.textTheme.bodyLarge?.copyWith(
              fontWeight: FontWeight.w600,
              color: _theme.colorScheme.onPrimary,
            ),
            subtitle: Text(summary.hasError ? 'N/A' : _status.label(context)),
            subtitleTextStyle: _theme.textTheme.bodyMedium?.copyWith(
              // color: _status.color,
              color: _theme.colorScheme.onPrimary,
            ),
          ),
        ),
      ),
      body: ScaffoldBodyWrapper(
        body: RefreshIndicator.adaptive(
          onRefresh: () => ref.refresh(
            landlordWithdrawSummaryProvider(id).future,
          ),
          child: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            padding: const EdgeInsets.all(24),
            child: Builder(
              builder: (_) {
                if (summary.hasError) {
                  return SizedBox(
                    height: MediaQuery.sizeOf(context).width,
                    width: double.maxFinite,
                    child: EmptyWidget(
                      replaceDefault: false,
                      child: SizedBox.shrink(),
                      emptyBuilder: (context) {
                        return RetryButtons.scrollView(
                          // Failed to get transaction summary.
                          summary.error ??
                              context
                                  .t.exceptions.transactionSummaryApiException,
                          onRetry: () => ref.refresh(
                            landlordWithdrawSummaryProvider(id).future,
                          ),
                        );
                      },
                    ),
                  );
                }

                return Skeletonizer(
                  enabled: summary.isAnyLoading,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      // Header
                      Text(
                        // 'Transaction Summary',
                        context.t.common.transactionSummary,
                        style: _sectionHeaderStyle,
                      ),
                      const SizedBox.square(dimension: 8),

                      // Overview
                      Container(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                          10,
                          10,
                          10,
                          2,
                        ),
                        decoration: BoxDecoration(
                          color: _theme.colorScheme.secondary.withValues(
                            alpha: 0.10,
                          ),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            ...{
                              // "Transaction ID":
                              context.t.common.transactionId:
                                  data?.uid ?? "N/A",
                              // "Transaction Type":
                              context.t.common.transactionType:
                                  data?.paymentType ?? "N/A",
                              // "Request Date":
                              context.t.common.requestDate:
                                  data?.withdraw?.createdAt?.formatDate(
                                        pattern: 'dd MMM yyyy - hh:mm:ss',
                                      ) ??
                                      "N/A",
                              // "Amount":
                              context.t.common.amount:
                                  data?.withdraw?.amount?.quickCurrency() ??
                                      "N/A",
                              // "Fee":
                              context.t.common.fee:
                                  data?.withdraw?.charge?.quickCurrency() ??
                                      "N/A",
                              // "Payment Status":
                              context.t.common.paymentStatus: _status,
                              // "Generated Time"
                              context.t.common.generatedTime:
                                  DateTime.now().formatDate(
                                pattern: 'dd MMM yyyy - hh:mm:ss',
                              ),
                            }.entries.map((entry) {
                              final _description = entry.value;
                              final _isStatus = _description is PaymentStatus;
                              return KeyValueRow(
                                title: entry.key,
                                titleStyle: _cKTextStyle,
                                titleFlex: _ckFlex,
                                description: _isStatus
                                    ? _description.label(context)
                                    : _description.toString(),
                                descriptionStyle: _cVTextStyle?.copyWith(
                                  color: _isStatus ? _description.color : null,
                                ),
                                descriptionFlex: _cVFlex,
                              );
                            })
                          ],
                        ),
                      ),
                      const SizedBox.square(dimension: 135),

                      Center(
                        child: Text.rich(
                          context.t.common.systemGeneratedReportHint(
                            appName: TextSpan(
                              text: AppConfig.appName,
                              style: TextStyle(
                                color: _theme.colorScheme.onPrimaryContainer,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          style: _theme.textTheme.bodyMedium?.copyWith(
                            color: _theme.colorScheme.secondary,
                          ),
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ),
      bottomNavigationBar: ScaffoldBottomNavWrapper(
        child: Skeletonizer(
          enabled: summary.isAnyLoading,
          child: SizedBox(
            height: 50,
            width: double.maxFinite,
            child: ElevatedButton.icon(
              onPressed: () async {
                return await _handlePrintNavigation(context, id);
              },
              // label: const Text('Print Transaction'),
              label: Text(context.t.action.printTransaction),
              icon: Icon(
                Icons.print_outlined,
                color: _theme.colorScheme.onPrimary,
              ),
            ).overlap(showWhen: !summary.hasValue),
          ).fMarginLTRB(24, 16, 24, 16),
        ),
      ),
    );
  }

  Future<void> _handlePrintNavigation(BuildContext ctx, int id) async {
    final _invoicePath = DAPIEndpoints.withdrawInvoice(id);

    return await ctx.router.pushWidget<void>(
      InvoiceDetailsView.printInvoice(
        invoicePath: _invoicePath,
      ),
    );
  }
}
