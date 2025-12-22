import 'package:auto_route/auto_route.dart';
import 'package:fdevs_fitkit/fdevs_fitkit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:recase/recase.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../../../i18n/strings.g.dart';
import '../../../../../core/core.dart';
import '../../../../../data/repositories/repositories.dart';
import '../../../../../routes/app_routes.gr.dart';
import '../../../../../widgets/widgets.dart';

part '_landlord_withdraw_request_view_provider.dart';

@RoutePage()
class LandlordWithdrawRequestView extends ConsumerStatefulWidget {
  const LandlordWithdrawRequestView({super.key});

  @override
  ConsumerState<LandlordWithdrawRequestView> createState() =>
      _LandlordWithdrawRequestViewState();
}

class _LandlordWithdrawRequestViewState
    extends ConsumerState<LandlordWithdrawRequestView> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (context.mounted) {
        gEventListener.on<LandlordWithdrawEvent>().listen((_) {
          // ignore: unused_result
          ref.refresh(landlordUserWithdrawMethodProvider);
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final controller = ref.watch(landlordWithdrawRequestViewProvider);
    final _userWithdrawMethods = ref.watch(landlordUserWithdrawMethodProvider);
    final _data = _userWithdrawMethods.valueOrNull?.data;

    final _theme = Theme.of(context);

    return FormWrapper(
      builder: (formContext) {
        return Scaffold(
          appBar: CustomAppBar(
            // title: const Text('Withdraw Request'),
            title: Text(context.t.common.withdrawRequest),
            actions: [
              TextButton(
                onPressed: () async {
                  return context.router.push<void>(
                    LandlordWithdrawHistoryRoute(),
                  );
                },
                style: TextButton.styleFrom(
                  foregroundColor: _theme.colorScheme.onPrimary,
                ),
                // child: const Text('History'),
                child: Text(context.t.common.history),
              ),
            ],
          ),
          body: ScaffoldBodyWrapper(
            body: SingleChildScrollView(
              padding: const EdgeInsets.all(24),
              child: Column(
                children: [
                  // Overview
                  Container(
                    padding: const EdgeInsets.all(10),
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      color: _theme.colorScheme.primary.withValues(alpha: 0.2),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                // 'Available Balance',
                                context.t.common.availableBalance,
                                style: _theme.textTheme.bodyMedium?.copyWith(
                                  color: _theme.colorScheme.secondary,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Text(
                                _data?.balance?.quickCurrency() ?? "N/A",
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.end,
                                style: _theme.textTheme.bodyMedium?.copyWith(
                                  color: _theme.colorScheme.onPrimaryContainer,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox.square(dimension: 10),
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                // 'Withdraw Charge',
                                context.t.common.withdrawCharge,
                                style: _theme.textTheme.bodyMedium?.copyWith(
                                  color: _theme.colorScheme.secondary,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Builder(
                                builder: (_) {
                                  final _chargeAmount = controller
                                              .selectedPaymentMethod
                                              ?.chargeType ==
                                          "fixed"
                                      ? controller.selectedPaymentMethod?.charge
                                          ?.quickCurrency()
                                      : "${controller.selectedPaymentMethod?.charge ?? 0} %";
                                  return Text(
                                    _chargeAmount ?? "N/A",
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.end,
                                    style:
                                        _theme.textTheme.bodyMedium?.copyWith(
                                      color:
                                          _theme.colorScheme.onPrimaryContainer,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox.square(dimension: 16),

                  // Withdraw Amount
                  NumberFormField(
                    controller: controller.withdrawAmountController,
                    decoration: InputDecoration(
                      // labelText: 'Withdraw Amount',
                      labelText: context.t.form.anyField.label(
                        label: context.t.common.withdrawAmount,
                      ),
                      // hintText: 'Enter Withdraw Amount',
                      hintText: context.t.form.anyField
                          .hint(label: context.t.common.withdrawAmount)
                          .sentenceCase,
                    ),
                    validator: (v) {
                      final min = controller.selectedPaymentMethod?.minAmount;
                      final max = controller.selectedPaymentMethod?.maxAmount;
                      final value = v?.plainNumber;

                      if (value == null || value <= 0) {
                        // return "Please enter a valid amount greater than zero.";
                        return context.t.exceptions.nonZeroError;
                      }

                      if (min != null && value < min) {
                        // return "The amount must be at least ${min.quickCurrency()}.";
                        return context.t.exceptions.minAmountError(
                          minValue: min.quickCurrency(),
                        );
                      }

                      if (max != null && value > max) {
                        // return "The amount must not exceed ${max.quickCurrency()}.";
                        return context.t.exceptions.maxAmountError(
                          maxValue: max.quickCurrency(),
                        );
                      }

                      return null;
                    },
                  ),
                  const SizedBox.square(dimension: 16),

                  // Payment Methods
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        // 'Payment Method',
                        context.t.common.paymentMethod,
                        style: _theme.textTheme.bodyLarge,
                      ),
                      TextButton(
                        onPressed: () async {
                          return await _handleManageWithdrawMethodRoute(
                            context,
                          );
                        },
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                          visualDensity: const VisualDensity(
                            horizontal: -2,
                            vertical: -4,
                          ),
                        ),
                        // child: const Text('+ Add New'),
                        child: Text(context.t.action.addNew),
                      ),
                    ],
                  ),
                  const SizedBox.square(dimension: 16),

                  _userWithdrawMethods.when(
                    skipLoadingOnRefresh: false,
                    data: (data) {
                      return ListView.separated(
                        shrinkWrap: true,
                        primary: false,
                        itemCount: data.data?.methods?.length ?? 0,
                        itemBuilder: (_, index) {
                          final _method = data.data?.methods?[index];
                          final _isSelected =
                              controller.selectedPaymentMethod == _method;
                          final _accountNo = _method?.accountNo;

                          return Slidable(
                            key: ValueKey(_method?.id),
                            endActionPane: ActionPane(
                              motion: const ScrollMotion(),
                              openThreshold: 0.2,
                              extentRatio: 0.4,
                              children: [
                                Builder(
                                  builder: (slideCtx) {
                                    return Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        const SizedBox.square(dimension: 10),
                                        IconButton(
                                          icon: Icon(FeatherIcons.edit3),
                                          color: _theme.colorScheme.primary,
                                          onPressed: () async {
                                            _handleManageWithdrawMethodRoute(
                                              context,
                                              editModel: _method,
                                            );
                                            return await Slidable.of(slideCtx)
                                                ?.close();
                                          },
                                        ),
                                        IconButton(
                                          icon: Icon(FeatherIcons.trash2),
                                          color: DAppColors.kRejectedColor,
                                          onPressed: () async {
                                            _handleDeleteWithdrawMethod(
                                              context,
                                              _method!.id!,
                                            );
                                            return await Slidable.of(slideCtx)
                                                ?.close();
                                          },
                                        ),
                                      ],
                                    );
                                  },
                                )
                              ],
                            ),
                            child: Material(
                              color: Colors.transparent,
                              child: ListTile(
                                title: Text(
                                  _method?.name ?? "N/A",
                                ),
                                subtitle: Text(
                                  ((_accountNo?.length ?? 0) < 6)
                                      ? (_accountNo ?? "N/A")
                                      : _accountNo?.obscure(
                                            length: _accountNo.length - 6,
                                          ) ??
                                          'N/A',
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                onTap: () {
                                  return controller.handleSelectedPaymentMethod(
                                    _method,
                                  );
                                },
                                trailing: Icon(
                                  _isSelected
                                      ? Bootstrap.check_circle_fill
                                      : Bootstrap.arrow_up_right,
                                  color: _isSelected
                                      ? _theme.colorScheme.primary
                                      : _theme.colorScheme.secondary,
                                  size: _isSelected ? null : 18,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  side: BorderSide(
                                    color: _isSelected
                                        ? _theme.colorScheme.primary
                                        : _theme.colorScheme.outline.withValues(
                                            alpha: 0.25,
                                          ),
                                  ),
                                ),
                                contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 16,
                                ),
                                visualDensity: const VisualDensity(
                                  horizontal: -4,
                                  vertical: -4,
                                ),
                              ),
                            ),
                          );
                        },
                        separatorBuilder: (_, __) => const SizedBox.square(
                          dimension: 10,
                        ),
                      );
                    },
                    error: (error, _) {
                      return Text.rich(
                        RetryButtons.inlineText(
                          error,
                          onRetry: () => ref.refresh(
                            landlordUserWithdrawMethodProvider.future,
                          ),
                        ),
                      );
                    },
                    loading: () {
                      return Skeletonizer(
                        child: Column(
                          children: List.generate(
                            4,
                            (_) => ListTile(
                              title: Text('Loading'),
                              subtitle: Text('Loading'),
                            ),
                          ),
                        ),
                      );
                    },
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
    final controller = ref.read(landlordWithdrawRequestViewProvider);

    if (controller.selectedPaymentMethod == null) {
      showCustomSnackBar(
        ctx,
        // content: const Text('Please select a payment method first.'),
        content: Text(context.t.exceptions.selectPaymentMethodHint),
        customSnackBarType: CustomOverlayType.info,
      );
      return;
    }

    final _result = await showAsyncLoadingOverlay(
      ctx,
      asyncFunction: () => Future.microtask(
        () => controller.handleFormSubmit(),
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

      showCustomSnackBar(
        ctx,
        content:
            Text(_result.right?.message ?? context.t.common.requestSendSuccess),
        customSnackBarType: CustomOverlayType.success,
      );
      return;
    }
  }

  Future<void> _handleManageWithdrawMethodRoute(
    BuildContext ctx, {
    UserWithdrawMethod? editModel,
  }) async {
    // ignore: unused_local_variable
    final _result = await ctx.router.push(
      LandlordManageWithdrawMethodRoute(editModel: editModel),
    );
  }

  Future<void> _handleDeleteWithdrawMethod(BuildContext ctx, int id) async {
    final _confirmation = await showDialog<bool>(
      context: ctx,
      builder: (popContext) {
        return InfoDialog.confirmation(
          // title: 'Delete Withdraw Method?',
          title: context.t.prompt.withdrawMethod.deleteTitle,
          // description: 'Are you sure to delete this withdraw method?',
          description: context.t.prompt.withdrawMethod.deleteDescription,
          onDecide: Navigator.of(popContext).pop,
        );
      },
    );
    if (_confirmation != true) return;

    if (context.mounted) {
      final _result = await showAsyncLoadingOverlay(
        ctx,
        asyncFunction: () => Future.microtask(
          () => ref
              .read(landlordWithdrawRepoProvider)
              .deleteUserWithdrawMethod(id),
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
      }
    }
  }
}
