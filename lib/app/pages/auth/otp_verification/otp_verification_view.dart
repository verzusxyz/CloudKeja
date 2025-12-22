import 'dart:async';

import 'package:fdevs_fitkit/fdevs_fitkit.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pinput/pinput.dart';

import '../../../../i18n/strings.g.dart';
import '../../../core/core.dart';
import '../../../data/repositories/repositories.dart';
import '../../../widgets/widgets.dart';

part '_otp_verification_view_provider.dart';

class OtpVerificationView extends ConsumerStatefulWidget {
  const OtpVerificationView({
    super.key,
    this.email,
    this.saveToken = false,
    required this.onComplete,
  });
  final String? email;
  final bool? saveToken;
  final void Function() onComplete;

  @override
  ConsumerState<OtpVerificationView> createState() =>
      _OtpVerificationViewState();
}

class _OtpVerificationViewState extends ConsumerState<OtpVerificationView> {
  @override
  Widget build(BuildContext context) {
    final controller = ref.watch(otpViewProvider);

    final _theme = Theme.of(context);

    final _basePinFieldTheme = PinTheme(
      height: 50,
      width: 46,
      decoration: BoxDecoration(
        border: Border.all(color: _theme.colorScheme.outline),
        borderRadius: BorderRadius.circular(10),
      ),
      textStyle: _theme.textTheme.headlineSmall?.copyWith(
        fontSize: 20,
      ),
    );

    return FormWrapper(
      builder: (formContext) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            systemOverlayStyle: SystemUiOverlayStyle.dark,
            foregroundColor: DAppColors.kOnSurfaceLight,
          ),
          extendBodyBehindAppBar: true,
          backgroundColor: DAppColors.kSurfaceLight,
          body: SafeArea(
            child: SingleChildScrollView(
              child: Container(
                constraints: const BoxConstraints.tightFor(
                  width: double.maxFinite,
                ),
                margin: EdgeInsets.all(24.fW),
                padding: EdgeInsets.all(24.fW),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  color: _theme.colorScheme.primaryContainer,
                  boxShadow: [DAppBoxShadowStyles.boxShadow1],
                ),
                child: Column(
                  children: [
                    Text(
                      // 'Verifications',
                      context.t.pages.otpVerification.title,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: _theme.textTheme.headlineMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox.square(dimension: 8.fH),
                    Text(
                      // '4-digits pin has been sent to your email address.${widget.email != null ? "\n${widget.email}" : ""}',
                      context.t.pages.otpVerification.subtitle(
                        email: widget.email != null ? "\n${widget.email}" : "",
                      ),
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: _theme.textTheme.bodyLarge,
                    ),
                    SizedBox.square(dimension: 30.fH),

                    // OTP Field
                    Pinput(
                      length: 6,
                      controller: controller.otpController,
                      defaultPinTheme: _basePinFieldTheme,
                      focusedPinTheme: _basePinFieldTheme.copyDecorationWith(
                        border: Border.all(color: _theme.colorScheme.primary),
                        color:
                            _theme.colorScheme.primary.withValues(alpha: 0.175),
                      ),
                      errorPinTheme: _basePinFieldTheme.copyDecorationWith(
                        border: Border.all(
                            color:
                                _theme.inputDecorationTheme.errorStyle?.color ??
                                    Colors.red),
                        color: (_theme.inputDecorationTheme.errorStyle?.color ??
                                Colors.red)
                            .withValues(alpha: 0.275),
                      ),
                      forceErrorState:
                          controller.fieldErrors['otp_field'] != null,
                      errorText: controller.fieldErrors['otp_field'],
                      errorBuilder: (errorText, pin) {
                        return Text(
                          errorText ?? '',
                          style: _theme.inputDecorationTheme.errorStyle,
                        ).fMarginOnly(top: 8.fH);
                      },
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          // return 'Please enter the otp.';
                          return context.t.form.otp.errors.required;
                        }
                        if (value.length < 4) {
                          // return 'Please enter corrent otp.';
                          return context.t.form.otp.errors.invalid;
                        }
                        return null;
                      },
                    ),
                    SizedBox.square(dimension: 16.fH),

                    // Resent Button
                    Align(
                      child: StreamBuilder(
                        stream: controller.resendDelayInSeconds,
                        builder: (context, sn) {
                          final _time = sn.data ?? 0;
                          final _minutes = (_time ~/ 60);
                          final _seconds = (_time % 60);

                          return Text.rich(
                            TextSpan(
                              text:
                                  // 'Code send in ${_minutes.toString().padLeft(2, '0')}:${_seconds.toString().padLeft(2, '0')}',
                                  context
                                      .t.pages.otpVerification.extra.codeResend
                                      .codeSendIn(
                                minutes: _minutes.toString().padLeft(2, '0'),
                                seconds: _seconds.toString().padLeft(2, '0'),
                              ),
                              children: [
                                if (_minutes < 1)
                                  context
                                      .t.pages.otpVerification.extra.codeResend
                                      .resendCode(
                                    resendCode: (resendCode) {
                                      return TextSpan(
                                        // text: ' Resend code'
                                        text: resendCode,
                                        style: TextStyle(
                                          color: _theme.colorScheme.primary,
                                          fontWeight: FontWeight.w600,
                                        ),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () =>
                                              _handleResendButton(context),
                                      );
                                    },
                                  )
                              ],
                            ),
                            style: _theme.textTheme.bodyMedium?.copyWith(
                              color: _theme.colorScheme.secondary,
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox.square(dimension: 16.fH),

                    // Submit Button
                    ElevatedButton(
                      onPressed: () async {
                        if (FormWrapper.validate(formContext)) {
                          return await handleFormSubmit(context);
                        }
                      },
                      // child: const Text('Continue'),
                      child: Text(context.t.action.kContinue),
                    ).fSizedBox(size: Size.fromHeight(50.fH))
                  ],
                ),
              ),
            ),
          ),
        );
      },
    ).unfocusPrimary();
  }

  Future<void> handleFormSubmit(BuildContext ctx) async {
    final controller = ref.read(otpViewProvider);
    final _result = await showAsyncLoadingOverlay(
      ctx,
      asyncFunction: () => controller.handleOTPSubmit(
        widget.email ?? '',
        saveToken: widget.saveToken,
      ),
    );

    if (_result.isSuccess) {
      if (widget.saveToken != null) {
        await controller.userProvider.getUser();
      }
      widget.onComplete();
    }
  }

  Future<void> _handleResendButton(BuildContext ctx) async {
    final _result = await showAsyncLoadingOverlay<Either<String, String>?>(
      ctx,
      asyncFunction: () =>
          ref.read(otpViewProvider).handleOTPResend(widget.email ?? ''),
    );
    if (_result == null) return;

    if (ctx.mounted) {
      showCustomSnackBar(
        ctx,
        content: Text(_result.left ?? _result.right ?? ''),
        customSnackBarType: _result.isSuccess
            ? CustomOverlayType.success
            : CustomOverlayType.info,
      );
    }
  }
}
