import 'package:fdevs_fitkit/fdevs_fitkit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../../i18n/strings.g.dart';
import '../../../../core/core.dart';
import '../../../../data/repositories/repositories.dart';
import '../../../../widgets/widgets.dart';

part '_offline_payment_view_provider.dart';

class OfflinePaymentView extends ConsumerWidget {
  const OfflinePaymentView({
    super.key,
    required this.invoiceId,
    required this.paymentType,
    this.payableAmount,
  });
  final int invoiceId;
  final PaymentType paymentType;
  final num? payableAmount;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(offlinePaymentViewProvider);

    final paymentMethods = ref.watch(offlinePaymentMethodProvider);

    final _theme = Theme.of(context);

    const _ckFlex = 8;
    const _cVFlex = 10;
    final _cVTextStyle = _theme.textTheme.bodyMedium?.copyWith(
      fontWeight: FontWeight.w600,
    );
    final _cKTextStyle = _cVTextStyle?.copyWith(
      color: _theme.colorScheme.secondary,
    );

    return FormWrapper(
      builder: (formContext) {
        return Scaffold(
          appBar: CustomAppBar(
            // title: const Text('Offline Payment'),
            title: Text(context.t.pages.offlinePayment.appbarTitle),
          ),
          body: ScaffoldBodyWrapper(
            body: SingleChildScrollView(
              padding: const EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Total Overview
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        // 'Bank List',
                        context.t.common.bankList,
                        style: _theme.textTheme.bodyLarge,
                      ),
                      Text.rich(
                        context.t.pages.offlinePayment.extra.payAmount(
                          amount: TextSpan(
                            text: payableAmount?.quickCurrency() ?? "N/A",
                            style: TextStyle(
                              color: _theme.colorScheme.onPrimaryContainer,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        style: _theme.textTheme.bodyLarge?.copyWith(
                          color: _theme.colorScheme.secondary,
                        ),
                      )
                    ],
                  ),
                  const SizedBox.square(dimension: 20),

                  // Payment Method Dropdown
                  Builder(builder: (_) {
                    if (paymentMethods.hasError && !paymentMethods.hasValue) {
                      return Text.rich(
                        RetryButtons.inlineText(
                          paymentMethods.error!,
                          onRetry: () => ref.refresh(
                            offlinePaymentMethodProvider.future,
                          ),
                        ),
                      );
                    }
                    final _paymentMethods = [
                      ...?paymentMethods.valueOrNull?.data
                    ];

                    return Skeletonizer(
                      enabled: paymentMethods.isAnyLoading,
                      child: DropdownButtonFormField<OfflinePaymentMethod>(
                        // hint: Text('Select withdraw method.'),
                        hint: Text(context.t.form.withdrawMethod.hint),
                        decoration: InputDecoration(
                          // labelText: 'Withdraw Method',
                          labelText: context.t.form.withdrawMethod.label,
                        ),
                        isExpanded: true,
                        menuMaxHeight: 250,
                        value: controller.selectedMethod,
                        items: [
                          ..._paymentMethods.map(
                            (method) {
                              return DropdownMenuItem(
                                value: method,
                                child: Text(
                                  method.manualData?.bankInfo?.bankName ??
                                      "N/A",
                                ),
                              );
                            },
                          )
                        ],
                        onChanged: controller.handleSelectPaymentMethod,
                        validator: (value) {
                          if (value == null || (value.id ?? 0) <= 0) {
                            // return "Please select a payment method.";
                            return context
                                .t.form.withdrawMethod.errors.required;
                          }

                          return null;
                        },
                      ),
                    );
                  }),

                  // Payment Method Details
                  if (controller.selectedMethod != null) ...[
                    const SizedBox.square(dimension: 8),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: _theme.colorScheme.secondary.withValues(
                            alpha: 0.2,
                          ),
                        ),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      padding: const EdgeInsetsDirectional.fromSTEB(
                        10,
                        10,
                        10,
                        2,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ...{
                            // "Account Holder Name": "FIRDAUS GROUP SDN",
                            // "Account Number": "562548543851",
                            // "Swift Code": "521364",
                            // "Branch": "johor",
                            context.t.pages.offlinePayment.extra
                                .accountHolderName: controller.selectedMethod
                                    ?.manualData?.bankInfo?.accHolder ??
                                "N/A",
                            context.t.pages.offlinePayment.extra.accountNumber:
                                controller.selectedMethod?.manualData?.bankInfo
                                        ?.accNumber ??
                                    "N/A",
                            //context.t.pages.offlinePayment.extra.swiftCode: "521364",
                            //context.t.pages.offlinePayment.extra.branch: "johor",
                          }.entries.map((tenantDetail) {
                            return KeyValueRow(
                              title: tenantDetail.key,
                              titleFlex: _ckFlex,
                              titleStyle: _cKTextStyle,
                              description: tenantDetail.value,
                              descriptionFlex: _cVFlex,
                              descriptionStyle: _cVTextStyle,
                            );
                          }),
                        ],
                      ),
                    ),
                  ],
                  const SizedBox.square(dimension: 20),

                  // Payment Receipt
                  FileFormField.upload(
                    fieldType: FileFormFieldType.textField,
                    maxFileSizeInKb: 2500,
                    decoration: FileFormFieldDecoration(
                      // labelText: 'Upload Payment Receipt',
                      labelText: context.t.form.fileField.label(
                        label: context.t.common.uploadPaymentReceipt,
                      ),
                    ),
                    initialValue: controller.paymentReceipt,
                    onSelectFile: controller.handleSelectReceipt,
                    validator: (value) {
                      if (value == null || value.path.trim().isEmpty) {
                        // return "Please select the payment receipt.";
                        return context.t.form.fileField.errors.required(
                          label: context.t.common.uploadPaymentReceipt,
                        );
                      }

                      return null;
                    },
                  ),
                  const SizedBox.square(dimension: 8),
                  Text.rich(
                    context.t.pages.offlinePayment.extra.fileTypeHint(
                      fileType: (fileType) {
                        return TextSpan(
                          text: fileType,
                          style: TextStyle(
                            color: _theme.colorScheme.onPrimaryContainer,
                          ),
                        );
                      },
                      fileSize: (sizeUnit) {
                        return TextSpan(
                          text: sizeUnit,
                          style: TextStyle(
                            color: _theme.colorScheme.onPrimaryContainer,
                          ),
                        );
                      },
                    ),
                    style: _theme.textTheme.labelMedium?.copyWith(
                      color: _theme.colorScheme.secondary,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox.square(dimension: 20),

                  // Payment Note (Optional)
                  TextFormField(
                    decoration: InputDecoration(
                      // labelText: 'Payment Note (Optional)',
                      labelText: context.t.form.note.label(
                        note: context
                            .t.pages.offlinePayment.form.paymentNote.label,
                      ),
                      // hintText: 'Enter some text...',
                      hintText: context.t.form.note.hint(
                        note: context
                            .t.pages.offlinePayment.form.paymentNote.hint,
                      ),
                      contentPadding: const EdgeInsetsDirectional.symmetric(
                        horizontal: 16,
                        vertical: 12,
                      ),
                    ),
                    maxLines: 3,
                  ),
                  const SizedBox.square(dimension: 12),

                  Text.rich(
                    context.t.common.offlinePaymentNote(
                      note: (msg) {
                        return TextSpan(
                          text: msg,
                          style: TextStyle(
                            color: _theme.colorScheme.secondary,
                          ),
                        );
                      },
                      duraion: (duration) {
                        return TextSpan(
                          text: duration,
                          style: TextStyle(fontWeight: FontWeight.w600),
                        );
                      },
                    ),
                    style: _theme.textTheme.bodyLarge,
                  )
                ],
              ),
            ),
          ),
          bottomNavigationBar: ScaffoldBottomNavWrapper(
            child: SizedBox(
              height: 50,
              child: ElevatedButton(
                onPressed: () async {
                  if (FormWrapper.validate(formContext)) {
                    return await _handleFormSubmit(context, ref);
                  }
                },
                // child: const Text('PAY'),
                child: Text(context.t.action.pay),
              ),
            ).fMarginLTRB(24, 16, 24, 16),
          ),
        );
      },
    ).unfocusPrimary();
  }

  Future<void> _handleFormSubmit(BuildContext ctx, WidgetRef ref) async {
    final _result = await showAsyncLoadingOverlay(
      ctx,
      asyncFunction: () => Future.microtask(
        () => ref.read(offlinePaymentViewProvider).handleFormSubmit(
              invoiceId: invoiceId,
              paymentType: paymentType.status,
            ),
      ),
    );

    if (ctx.mounted) {
      if (_result.isFailure) {
        showCustomSnackBar(
          ctx,
          content: Text(_result.left!),
          customSnackBarType: CustomOverlayType.error,
        );
        return;
      }

      Navigator.maybeOf(ctx)?.pop(_result.right);
      return;
    }
  }
}
