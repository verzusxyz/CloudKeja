import 'package:auto_route/auto_route.dart';
import 'package:fdevs_fitkit/fdevs_fitkit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:recase/recase.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../../../i18n/strings.g.dart';
import '../../../../../core/core.dart';
import '../../../../../data/repositories/repositories.dart';
import '../../../../../widgets/widgets.dart';

part '_tenant_manage_refund_request_view_provider.dart';

@RoutePage()
class TenantManageRefundRequestView extends ConsumerStatefulWidget {
  const TenantManageRefundRequestView({super.key});

  @override
  ConsumerState<TenantManageRefundRequestView> createState() =>
      _TenantManageRefundRequestViewState();
}

class _TenantManageRefundRequestViewState
    extends ConsumerState<TenantManageRefundRequestView> {
  @override
  Widget build(BuildContext context) {
    final controller = ref.watch(tenantManageRefundRequestViewNotifier);
    final _myRentResp = ref.watch(rentListProvider);
    final _reasonResp = ref.watch(refundReasonProvider);

    return FormWrapper(
      builder: (formContext) {
        return Scaffold(
          appBar: CustomAppBar(
            // title: const Text('Request For Refund'),
            title: Text(context.t.action.requestForRefund),
          ),
          body: ScaffoldBodyWrapper(
            body: SingleChildScrollView(
              padding: const EdgeInsets.all(24),
              child: Column(
                children: [
                  // Property Dropdown
                  Builder(builder: (_) {
                    if (_myRentResp.hasError && !_myRentResp.hasValue) {
                      return Text.rich(
                        RetryButtons.inlineText(
                          _myRentResp.error!,
                          onRetry: () => ref.refresh(rentListProvider),
                        ),
                      );
                    }
                    final _rents = [...?_myRentResp.valueOrNull?.data?.data];

                    return Skeletonizer(
                      enabled: _myRentResp.isAnyLoading,
                      child: DropdownButtonFormField<RentDetails>(
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
                        value: controller.selectedRent,
                        items: List.generate(
                          _rents.length,
                          (index) {
                            final _rent = _rents[index];
                            return DropdownMenuItem<RentDetails>(
                              value: _rent,
                              child: Text(
                                _rent.property?.propertyDetail?.propertyInfo
                                        ?.propertyTitle ??
                                    "N/A",
                              ),
                            );
                          },
                        ),
                        menuMaxHeight: 250,
                        onChanged: (v) {
                          controller.selectedRent = v;
                          controller.invoiceController.text =
                              v?.securityDeposit?.invoiceNo ?? '';
                        },
                        validator: (value) {
                          if (value == null || (value.propertyId ?? 0) <= 0) {
                            // return "Please select a property";
                            return context.t.form.anyDropdown.errors
                                .required(label: context.t.common.property)
                                .sentenceCase;
                          }

                          return null;
                        },
                      ),
                    );
                  }),
                  const SizedBox.square(dimension: 16),

                  // Invoice Number
                  TextFormField(
                    controller: controller.invoiceController,
                    enabled: false,
                    decoration: InputDecoration(
                      // labelText: 'Invoice',
                      labelText: context.t.form.anyField.label(
                        label: context.t.common.invoice,
                      ),
                      // hintText: 'Select property to see the invoice number...',
                      hintText: context.t.form.anyField
                          .hint(
                              label:
                                  context.t.common.selectPropertyToSeeInvoice)
                          .sentenceCase,
                    ),
                  ),
                  const SizedBox.square(dimension: 16),

                  // Refund Reason Dropdown
                  Builder(builder: (_) {
                    if (_reasonResp.hasError && !_reasonResp.hasValue) {
                      return Text.rich(
                        RetryButtons.inlineText(
                          _reasonResp.error!,
                          onRetry: () => ref.refresh(rentListProvider),
                        ),
                      );
                    }
                    final _reasons = [...?_reasonResp.valueOrNull?.data];

                    return Skeletonizer(
                      enabled: _reasonResp.isAnyLoading,
                      child: DropdownButtonFormField<int>(
                        // hint: const Text('Select one..'),
                        hint: Text(
                          context.t.form.anyDropdown
                              .hint(label: context.t.common.refundReason)
                              .sentenceCase,
                        ),
                        isExpanded: true,
                        menuMaxHeight: 250,
                        decoration: InputDecoration(
                          // labelText: 'Refund Reason',
                          labelText: context.t.form.anyDropdown.label(
                            label: context.t.common.refundReason,
                          ),
                        ),
                        value: controller.selectedReasonId,
                        items: List.generate(
                          _reasons.length,
                          (index) {
                            final _reason = _reasons[index];
                            return DropdownMenuItem<int>(
                              value: _reason.id,
                              child: Text(_reason.reason ?? "N/A"),
                            );
                          },
                        ),
                        onChanged: (v) => controller.selectedReasonId = v,
                        validator: (value) {
                          if (value == null || value <= 0) {
                            // return "Please select a reason";
                            return context.t.form.anyDropdown.errors.required(
                              label: context.t.common.refundReason,
                            );
                          }

                          return null;
                        },
                      ),
                    );
                  }),
                  const SizedBox.square(dimension: 16),

                  // Bank Account Name
                  TextFormField(
                    controller: controller.bankAccountNameController,
                    decoration: InputDecoration(
                      // labelText: 'Bank Account Name',
                      labelText: context.t.form.anyField.label(
                        label: context.t.common.bankAccName,
                      ),
                      // hintText: 'Enter bank account name',
                      hintText: context.t.form.anyField.hint(
                        label: context.t.common.bankAccName,
                      ),
                    ),
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.name,
                    autofillHints: [AutofillHints.name],
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        // return "Please enter the bank account name";

                        return context.t.form.anyField.errors
                            .required(label: context.t.common.bankAccName)
                            .sentenceCase;
                      }
                      return null;
                    },
                  ),
                  const SizedBox.square(dimension: 16),

                  // Bank Name
                  TextFormField(
                    controller: controller.bankNameController,
                    decoration: InputDecoration(
                      // labelText: 'Bank Name',
                      labelText: context.t.form.anyField.label(
                        label: context.t.common.bankName,
                      ),
                      // hintText: 'Enter bank name',
                      hintText: context.t.form.anyField
                          .hint(label: context.t.common.bankName)
                          .sentenceCase,
                    ),
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.name,
                    autofillHints: [AutofillHints.name],
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        // return "Please enter the bank name";
                        return context.t.form.anyField.errors
                            .required(label: context.t.common.bankName)
                            .sentenceCase;
                      }
                      return null;
                    },
                  ),
                  const SizedBox.square(dimension: 16),

                  // Bank Account Number
                  NumberFormField(
                    controller: controller.bankAccountNumberController,
                    decoration: InputDecoration(
                      // labelText: 'Bank Account Number',
                      labelText: context.t.form.anyField.label(
                        label: context.t.common.bankAccNum,
                      ),
                      // hintText: 'Enter bank account number',
                      hintText: context.t.form.anyField
                          .hint(label: context.t.common.bankAccNum)
                          .sentenceCase,
                    ),
                    textInputAction: TextInputAction.done,
                    validator: (value) {
                      return NumberFormField.nonZeroRequired(
                        value,
                        // errorText: 'Enter bank account number',
                        errorText: context.t.form.anyField.errors
                            .required(label: context.t.common.bankAccNum)
                            .sentenceCase,
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
          bottomNavigationBar: ScaffoldBottomNavWrapper(
            child: SizedBox(
              height: 50,
              child: ElevatedButton(
                onPressed: () async {
                  if (Form.maybeOf(formContext)?.validate() == true) {
                    return await _handleFormSubmit(context);
                  }
                },
                // child: const Text('Send Request'),
                child: Text(context.t.action.sendRequest),
              ),
            ).fMarginLTRB(24, 16, 24, 16),
          ),
        );
      },
    ).unfocusPrimary();
  }

  Future<void> _handleFormSubmit(BuildContext ctx) async {
    final _result = await showAsyncLoadingOverlay(
      ctx,
      asyncFunction: () => Future.microtask(
        () =>
            ref.read(tenantManageRefundRequestViewNotifier).handleFormSubmit(),
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

      return await showDialog<void>(
        context: ctx,
        useRootNavigator: false,
        builder: (popContext) {
          return PopScope(
            canPop: false,
            child: InfoDialog.info(
              iconType: InfoDialogIconType.splashSuccess,
              icon: Bootstrap.check_lg,
              // title: 'Thank You!',
              title: context.t.pages.paymentStatus.success.title,
              // description:
              //     'We will review the Refund request & approve it within 24 hours.',
              description:
                  context.t.exceptions.refundRequestHint.tenantReqSuccess,
              onPressed: () {
                Navigator.of(popContext).pop();
                ctx.router.maybePop();
              },
            ),
          );
        },
      );
    }
  }
}

final rentListProvider = FutureProvider.autoDispose(
  (ref) => Future.microtask(
    () => ref.read(myRentRepoProvider).getRentList(
          noPaging: true,
          status: MyRentStatus.active.name,
        ),
  ),
);
