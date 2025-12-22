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

part '_reset_password_view_provider.dart';

@RoutePage()
class ResetPasswordView extends ConsumerStatefulWidget {
  const ResetPasswordView({super.key, required this.email});
  final String email;

  @override
  ConsumerState<ResetPasswordView> createState() => _ResetPasswordViewState();
}

class _ResetPasswordViewState extends ConsumerState<ResetPasswordView> {
  @override
  Widget build(BuildContext context) {
    final controller = ref.watch(resetPasswordProvider);

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
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Text(
                      // 'Reset password',
                      context.t.pages.resetPassword.title,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: _theme.textTheme.headlineMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox.square(dimension: 8),
                    Text(
                      // 'Reset your password to recovery and log in your account',
                      context.t.pages.resetPassword.subtitle,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: _theme.textTheme.bodyLarge,
                    ),
                    const SizedBox.square(dimension: 30),

                    // Password Field
                    TextFormField(
                      controller: controller.passwordController,
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: controller.obscurePassword,
                      decoration: InputDecoration(
                        // labelText: 'Password',
                        labelText: context.t.form.password.label,
                        // hintText: '* * * * * * * *',
                        hintText: context.t.form.password.hint,
                        suffixIcon: IconButton(
                          onPressed: controller.toggleObscure,
                          color: _theme.colorScheme.outline,
                          icon: Icon(
                            controller.obscurePassword
                                ? Icons.visibility_outlined
                                : Icons.visibility_off_outlined,
                          ),
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          // return 'Please enter your password.';
                          return context.t.form.password.errors.required;
                        }

                        if (value.length < 6) {
                          // return 'Password must be at least 6 characters!';
                          return context.t.form.password.errors
                              .minLength(count: 6);
                        }

                        return null;
                      },
                    ),
                    const SizedBox.square(dimension: 16),

                    // Confirm Password
                    TextFormField(
                      controller: controller.confirmPasswordController,
                      textInputAction: TextInputAction.done,
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: controller.obscureConfirmPassword,
                      decoration: InputDecoration(
                        // labelText: 'Confirm Password',
                        labelText: context.t.form.confirmPassword.label,
                        // hintText: '* * * * * * * *',
                        hintText: context.t.form.confirmPassword.hint,
                        suffixIcon: IconButton(
                          onPressed: () => controller.toggleObscure(true),
                          color: _theme.colorScheme.outline,
                          icon: Icon(
                            controller.obscureConfirmPassword
                                ? Icons.visibility_outlined
                                : Icons.visibility_off_outlined,
                          ),
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          // return 'Please enter your password.';
                          return context.t.form.confirmPassword.errors.required;
                        }
                        if (controller.passwordController.text != value) {
                          // return 'Confirm password doesn\'t match!';
                          return context
                              .t.form.confirmPassword.errors.notMatched;
                        }
                        return null;
                      },
                    ),
                    const SizedBox.square(dimension: 16),

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
    final _result = await showAsyncLoadingOverlay(
      ctx,
      asyncFunction: () =>
          ref.read(resetPasswordProvider).handleResetPassword(widget.email),
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

      showCustomDialog(
        context: ctx,
        builder: (context) {
          return PopScope(
            canPop: false,
            child: VerificationDialog(
              // title: 'Changed successfully!',
              title: context.t.pages.resetPassword.extra.dialog.title,
              // description:
              //     'Sign in with your new password.\n Redirecting you to Sign In...',
              description: context.t.pages.resetPassword.extra.dialog.subtitle,
            ),
          );
        },
      );

      Future.delayed(
        const Duration(milliseconds: 1500),
        () {
          if (ctx.mounted) {
            Navigator.of(ctx).pop();
            ctx.router.replaceAll([const SignInRoute()]);
          }
        },
      );
    }
  }
}
