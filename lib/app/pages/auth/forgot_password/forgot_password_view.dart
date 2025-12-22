import 'package:auto_route/auto_route.dart';
import 'package:fdevs_fitkit/fdevs_fitkit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../i18n/strings.g.dart';
import '../../../core/core.dart';
import '../../../data/repositories/repositories.dart';
import '../../../routes/app_routes.gr.dart';
import '../../../widgets/widgets.dart';
import '../../common/pages/common_pages.dart';

part '_forgot_password_view_provider.dart';

@RoutePage()
class ForgotPasswordView extends ConsumerStatefulWidget {
  const ForgotPasswordView({super.key});

  @override
  ConsumerState<ForgotPasswordView> createState() => _ForgotPasswordViewState();
}

class _ForgotPasswordViewState extends ConsumerState<ForgotPasswordView> {
  // Providers
  ForgotPasswordViewNotifier get controller =>
      ref.watch(forgotPasswordProvider);

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);
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
                      // 'Forgot password',
                      context.t.pages.forgotPassword.title,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: _theme.textTheme.headlineMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox.square(dimension: 8),
                    Text(
                      // 'Enter your email Address to recover your password',
                      context.t.pages.forgotPassword.subtitle,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: _theme.textTheme.bodyLarge,
                    ),
                    const SizedBox.square(dimension: 30),

                    // Email Field
                    TextFormField(
                      controller: controller.emailController,
                      textInputAction: TextInputAction.done,
                      keyboardType: TextInputType.emailAddress,
                      autofillHints: const [AutofillHints.email],
                      decoration: InputDecoration(
                        // labelText: 'Email',
                        labelText: context.t.form.email.label,
                        // hintText: 'Enter your email',
                        hintText: context.t.form.email.hint,
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          // return 'Please enter your email address';
                          return context.t.form.email.errors.required;
                        }
                        if (!value.isEmail) {
                          // return '⦸ Invalid Email, Please Try Again';
                          return context.t.form.email.errors.invalid;
                        }
                        return null;
                      },
                    ),
                    const SizedBox.square(dimension: 20),

                    // Sign In Button
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
    final _result = await showAsyncLoadingOverlay(
      ctx,
      asyncFunction: controller.handleForgotPassword,
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
      final _modalResult = showCustomDialog(
        context: ctx,
        builder: (popContext) {
          Future.delayed(const Duration(milliseconds: 1500), () {
            if (popContext.mounted) {
              Navigator.of(popContext).pop();
            }
          });
          return PopScope(
            canPop: false,
            child: VerificationDialog(email: controller.emailController.text),
          );
        },
      );

      _modalResult.whenComplete(() async {
        final _email = controller.emailController.text;
        if (ctx.mounted) {
          ctx.router.pushWidget(
            OtpVerificationView(
              email: _email,
              onComplete: () {
                ctx.router.back();
                ctx.router.push(ResetPasswordRoute(email: _email));
              },
            ),
          );
        }
      });
    }
  }
}
