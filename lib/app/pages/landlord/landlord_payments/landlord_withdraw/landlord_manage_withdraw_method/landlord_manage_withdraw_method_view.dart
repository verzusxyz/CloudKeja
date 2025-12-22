import 'package:auto_route/auto_route.dart';
import 'package:fdevs_fitkit/fdevs_fitkit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:recase/recase.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../../../i18n/strings.g.dart';
import '../../../../../core/core.dart';
import '../../../../../data/repositories/repositories.dart';
import '../../../../../widgets/widgets.dart';

part '_landlord_manage_withdraw_method_view_provider.dart';

@RoutePage()
class LandlordManageWithdrawMethodView extends ConsumerStatefulWidget {
  const LandlordManageWithdrawMethodView({super.key, this.editModel});
  final UserWithdrawMethod? editModel;

  bool get isEditing => editModel != null;
  @override
  ConsumerState<LandlordManageWithdrawMethodView> createState() =>
      _LandlordManageWithdrawMethodViewState();
}

class _LandlordManageWithdrawMethodViewState
    extends ConsumerState<LandlordManageWithdrawMethodView> {
  @override
  void initState() {
    super.initState();

    if (widget.isEditing) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        ref
            .read(landlordManageWithdrawMethodViewNotifier)
            .handleEditInit(widget.editModel!);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final controller = ref.watch(landlordManageWithdrawMethodViewNotifier);

    final _methodsResp = ref.watch(landlordAdminWithdrawMethodProvider);

    return FormWrapper(
      builder: (formContext) {
        return Scaffold(
          appBar: CustomAppBar(
            title: Text(
              // widget.isEditing ? "Edit Account" : 'Add New Account',
              widget.isEditing
                  ? context.t.common.editAccount
                  : context.t.common.addNewAccount,
            ),
          ),
          body: ScaffoldBodyWrapper(
            body: SingleChildScrollView(
              padding: const EdgeInsets.all(24),
              child: Column(
                spacing: 16,
                children: [
                  // Withdraw Method Dropdown
                  Builder(
                    builder: (_) {
                      if (_methodsResp.hasError && !_methodsResp.hasValue) {
                        return Text.rich(
                          RetryButtons.inlineText(
                            _methodsResp.error!,
                            onRetry: () => ref.refresh(
                              landlordAdminWithdrawMethodProvider,
                            ),
                          ),
                        );
                      }
                      final _methods = [...?_methodsResp.valueOrNull?.data];

                      return Skeletonizer(
                        enabled: _methodsResp.isAnyLoading,
                        child: DropdownButtonFormField<AdminWithdrawMethod>(
                          // hint: const Text('Select one'),
                          hint: Text(
                            context.t.form.anyDropdown
                                .hint(label: context.t.common.withdrawMethod)
                                .sentenceCase,
                          ),
                          decoration: InputDecoration(
                            // labelText: 'Withdraw Method',
                            labelText: context.t.form.anyDropdown.label(
                                label: "${context.t.common.withdrawMethod}*"),
                          ),
                          isExpanded: true,
                          menuMaxHeight: 250,
                          value: controller.selectedMethod,
                          items: List.generate(
                            _methods.length,
                            (index) {
                              final _method = _methods[index];
                              return DropdownMenuItem<AdminWithdrawMethod>(
                                value: _method,
                                child: Text(_method.name ?? "N/A"),
                              );
                            },
                          ),
                          onChanged: widget.isEditing
                              ? null
                              : controller.handleSelectPaymentMethod,
                          validator: (value) {
                            if (value == null || (value.id ?? 0) <= 0) {
                              // return "Please select a payment method.";

                              return context.t.form.anyDropdown.errors
                                  .required(
                                      label: context.t.common.withdrawMethod)
                                  .sentenceCase;
                            }
                            return null;
                          },
                        ),
                      );
                    },
                  ),

                  // Account Number
                  TextFormField(
                    controller: controller.accountNumberController,
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.next,
                    enableSuggestions: true,
                    autofillHints: [AutofillHints.creditCardNumber],
                    decoration: InputDecoration(
                      // labelText: 'Account Number*',
                      labelText:
                          '${context.t.pages.offlinePayment.extra.accountNumber}*',
                      // hintText: 'Enter your account number',
                      hintText: context.t.form.anyField.hint(
                        label:
                            context.t.pages.offlinePayment.extra.accountNumber,
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please enter your account number.";
                      }
                      return null;
                    },
                  ),

                  // Dynamic Fields
                  ...?controller.selectedMethod?.meta?.map((field) {
                    return TextFormField(
                      controller: controller.dynamicFields[field.input],
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        // labelText: field.label,
                        labelText: context.t.form.anyField.label(
                          label: field.label ?? '',
                        ),
                        // hintText: 'Enter ${field.label?.toLowerCase()}',
                        hintText: context.t.form.anyField.hint(
                          label: field.label?.toLowerCase() ?? '',
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          // return 'Please enter ${field.label?.toLowerCase()}';
                          return context.t.form.anyField.errors.required(
                            label: field.label?.toLowerCase() ?? '',
                          );
                        }
                        return null;
                      },
                    );
                  }),
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
                // child: const Text('Save'),
                child: Text(context.t.action.save),
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
        () => ref
            .read(landlordManageWithdrawMethodViewNotifier)
            .handleFormSubmit(widget.editModel?.id),
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

      return ctx.router.back();
    }
  }
}
