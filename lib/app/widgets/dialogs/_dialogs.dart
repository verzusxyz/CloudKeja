import 'package:fdevs_fitkit/fdevs_fitkit.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:lottie/lottie.dart';

import '../../../i18n/strings.g.dart';
import '../../core/core.dart';
import '../widgets.dart';

enum InfoDialogIconType { static, splashSuccess, splashError }

class InfoDialog extends StatelessWidget {
  const InfoDialog._({
    super.key,
    required this.iconType,
    this.icon,
    required this.title,
    this.description,
    this.buttonText,
    this.onPressed,
    required this.hasConfirmation,
    this.acceptionText,
    this.rejectionText,
    this.swapAction,
    this.onDecide,
  });
  final InfoDialogIconType iconType;
  final IconData? icon;
  final String title;
  final String? description;
  final String? buttonText;
  final void Function()? onPressed;

  final bool hasConfirmation;
  final String? acceptionText;
  final String? rejectionText;
  final bool? swapAction;
  final void Function(bool value)? onDecide;

  const InfoDialog.info({
    Key? key,
    InfoDialogIconType iconType = InfoDialogIconType.static,
    IconData? icon,
    required String title,
    String? description,
    String? buttonText,
    void Function()? onPressed,
  }) : this._(
          key: key,
          iconType: iconType,
          icon: icon,
          title: title,
          description: description,
          buttonText: buttonText,
          onPressed: onPressed,
          hasConfirmation: false,
        );

  const InfoDialog.confirmation({
    Key? key,
    InfoDialogIconType iconType = InfoDialogIconType.static,
    IconData? icon,
    required String title,
    String? description,
    String? acceptionText,
    String? rejectionText,
    void Function(bool value)? onDecide,
    bool swapAction = false,
  }) : this._(
          key: key,
          iconType: iconType,
          icon: icon,
          title: title,
          description: description,
          acceptionText: acceptionText,
          rejectionText: rejectionText,
          onDecide: onDecide,
          hasConfirmation: true,
          swapAction: swapAction,
        );

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);
    final _confirmationAction = [
      Expanded(
        child: SizedBox(
          height: 44,
          child: OutlinedButton(
            onPressed: () => onDecide?.call(false),
            style: CustomButtonStyles.destructiveOutline(),
            child: Text(rejectionText ?? context.t.action.no),
          ),
        ),
      ),
      const SizedBox.square(dimension: 16),
      Expanded(
        child: SizedBox(
          height: 44,
          child: ElevatedButton(
            onPressed: () => onDecide?.call(true),
            child: Text(acceptionText ?? context.t.action.yes),
          ),
        ),
      ),
    ];

    final _icon = Icon(
      icon ?? IconlyBold.info_circle,
      size: 34,
      color: _theme.colorScheme.onPrimary,
    );

    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      insetPadding: const EdgeInsets.all(24),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (iconType != InfoDialogIconType.static)
            Align(
              child: SizedBox.square(
                dimension: 124,
                child: Lottie.asset(
                  DAppImages.splashDropLottie(
                    isSuccess: iconType != InfoDialogIconType.splashError,
                  ),
                  renderCache: RenderCache.raster,
                  repeat: iconType != InfoDialogIconType.splashSuccess,
                ),
              ),
            )
          else
            Container(
              constraints: BoxConstraints.tight(const Size.square(64)),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _theme.colorScheme.primary,
                border: Border.all(
                  color: const Color(0xffD8FFEB),
                  width: 6,
                  strokeAlign: BorderSide.strokeAlignOutside,
                ),
              ),
              child: _icon,
            ),

          const SizedBox.square(dimension: 16),
          Text(
            title,
            textAlign: TextAlign.center,
            style: _theme.textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
          if (description != null) ...[
            const SizedBox.square(dimension: 8),
            Text(
              description!,
              textAlign: TextAlign.center,
              style: _theme.textTheme.bodyLarge?.copyWith(
                color: _theme.colorScheme.secondary,
              ),
            )
          ],
          const SizedBox.square(dimension: 24),

          // Action Button
          if (hasConfirmation)
            Row(
              children: [
                ...(swapAction!
                    ? _confirmationAction.reversed
                    : _confirmationAction)
              ],
            )
          else
            SizedBox(
              height: 44,
              child: ElevatedButton(
                onPressed: onPressed,
                child: Text(buttonText ?? context.t.action.okay),
              ),
            )
        ],
      ).fMarginSymmetric(horizontal: 16, vertical: 24),
    );
  }
}

class DescriptionTakerDialog extends StatelessWidget {
  const DescriptionTakerDialog({
    super.key,
    this.dialogTitle = 'Dialog Title',
    this.controller,
    this.fieldDecoration,
    this.validator,
  });
  final String dialogTitle;
  final TextEditingController? controller;
  final InputDecoration? fieldDecoration;
  final String? Function(String? value)? validator;

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);
    return FormWrapper(
      builder: (formContext) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          insetPadding: const EdgeInsets.all(24),
          child: SingleChildScrollView(
            padding: const EdgeInsetsDirectional.fromSTEB(16, 20, 16, 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                // Header
                Text(
                  dialogTitle,
                  style: _theme.textTheme.bodyLarge?.copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const Divider(),
                const SizedBox.square(dimension: 12),

                // Description Field
                TextFormField(
                  controller: controller,
                  decoration: fieldDecoration?.copyWith(
                    contentPadding: const EdgeInsetsDirectional.symmetric(
                      horizontal: 16,
                      vertical: 12,
                    ),
                  ),
                  maxLines: 3,
                  validator: validator,
                ),
                const SizedBox.square(dimension: 16),

                Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 44,
                        child: OutlinedButton(
                          onPressed: () => Navigator.of(context).pop(false),
                          style: CustomButtonStyles.destructiveOutline(),
                          // child: const Text('Cancel'),
                          child: Text(context.t.action.cancel),
                        ),
                      ),
                    ),
                    const SizedBox.square(dimension: 16),
                    Expanded(
                      child: SizedBox(
                        height: 44,
                        child: ElevatedButton(
                          onPressed: () {
                            if (Form.maybeOf(formContext)?.validate() == true) {
                              Navigator.of(context).pop(true);
                            }
                          },
                          // child: const Text('Confirm'),
                          child: Text(context.t.action.confirm),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        );
      },
    ).unfocusPrimary();
  }
}

class NoInternetDialog extends StatelessWidget {
  const NoInternetDialog({
    super.key,
    required this.onTryAgain,
  });
  final void Function()? onTryAgain;

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);
    return Dialog(
      insetPadding: const EdgeInsets.all(24),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 24,
        ),
        constraints: const BoxConstraints.tightFor(
          width: double.maxFinite,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox.square(
              dimension: 124,
              child: Image.asset(DAppImages.noInternet),
            ),
            const SizedBox.square(dimension: 8),
            Text(
              // 'No Internet Connection',
              context.t.prompt.noInternet.title,
              style: _theme.textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox.square(dimension: 8),
            Text(
              // 'Please check your Wi-Fi mobile network connection and try again',
              context.t.prompt.noInternet.message,
              textAlign: TextAlign.center,
              style: _theme.textTheme.bodyMedium?.copyWith(
                color: _theme.colorScheme.secondary,
              ),
            ),
            const SizedBox.square(dimension: 16),
            ElevatedButton(
              onPressed: onTryAgain,
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xffD2D2D2).withValues(alpha: 0.5),
                foregroundColor: _theme.colorScheme.onPrimaryContainer,
              ),
              // child: const Text('Try Again'),
              child: Text(context.t.prompt.noInternet.action),
            ),
          ],
        ),
      ),
    );
  }
}

class BackButtonInvoker extends StatefulWidget {
  const BackButtonInvoker({
    super.key,
    required this.child,
    this.showFloating = false,
  });
  final Widget child;
  final bool showFloating;

  @override
  State<BackButtonInvoker> createState() => _BackButtonInvokerState();
}

class _BackButtonInvokerState extends State<BackButtonInvoker> {
  DateTime? _lastBackPressTime;

  @override
  Widget build(BuildContext context) {
    // ignore: deprecated_member_use
    return WillPopScope(
      onWillPop: () async {
        final now = DateTime.now();
        if (_lastBackPressTime == null ||
            now.difference(_lastBackPressTime!) > const Duration(seconds: 2)) {
          _lastBackPressTime = now;

          ScaffoldMessenger.of(context).hideCurrentSnackBar();
          showCustomSnackBar(
            context,
            snackBar: CustomSnackBar(
              // content: const Text('Press back again to exit.'),
              content: Text(context.t.common.pressBackAgainToExit),
              behavior: widget.showFloating ? SnackBarBehavior.floating : null,
              backgroundColor: CustomOverlayType.info.backgroundColor,
            ),
          );

          return false;
        }

        return true;
      },
      child: widget.child,
    );
  }
}

class PaymentTypeSelectorDialog extends StatefulWidget {
  const PaymentTypeSelectorDialog({super.key});

  @override
  State<PaymentTypeSelectorDialog> createState() =>
      _PaymentTypeSelectorDialogState();
}

class _PaymentTypeSelectorDialogState extends State<PaymentTypeSelectorDialog> {
  PaymentOptions selectedMethod = PaymentOptions.online;

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);

    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      insetPadding: const EdgeInsets.all(24),
      child: Padding(
        padding: const EdgeInsetsDirectional.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            // Header
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  // "Select Payment Method",
                  context.t.common.selectPaymentMethod,
                  style: _theme.textTheme.bodyLarge?.copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                CloseButton(
                  style: IconButton.styleFrom(
                    visualDensity: const VisualDensity(
                      horizontal: -2,
                      vertical: -2,
                    ),
                    padding: EdgeInsets.zero,
                  ),
                ),
              ],
            ),
            const Divider(),
            const SizedBox.square(dimension: 12),

            Flexible(
              child: ListView.separated(
                shrinkWrap: true,
                itemCount: PaymentOptions.values.length,
                itemBuilder: (_, index) {
                  final type = PaymentOptions.values[index];
                  final isSelected = selectedMethod == type;

                  return ListTile(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: isSelected
                            ? _theme.colorScheme.primary
                            : _theme.colorScheme.secondary
                                .withValues(alpha: 0.15),
                        width: 1.25,
                      ),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    contentPadding: const EdgeInsetsDirectional.fromSTEB(
                      8,
                      8,
                      14,
                      8,
                    ),
                    visualDensity: const VisualDensity(
                      horizontal: -4,
                      vertical: -4,
                    ),
                    leading: Container(
                      constraints:
                          BoxConstraints.tightFor(height: 34, width: 52),
                      padding: const EdgeInsets.all(6),
                      decoration: BoxDecoration(
                        color: type.baseColor?.withValues(alpha: 0.20),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Image.asset(type.iconPath),
                    ),
                    title: Text(type.label(context)),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: _theme.colorScheme.outline,
                      size: 18,
                    ),
                    onTap: () => setState(() => selectedMethod = type),
                  );
                },
                separatorBuilder: (_, __) {
                  return const SizedBox.square(dimension: 12);
                },
              ),
            ),
            const SizedBox.square(dimension: 24),

            SizedBox(
              height: 50,
              width: double.maxFinite,
              child: ElevatedButton(
                onPressed: () => Navigator.of(context).pop(selectedMethod),
                // child: const Text('Continue'),
                child: Text(context.t.action.kContinue),
              ),
            )
          ],
        ),
      ),
    );
  }
}
