import 'package:auto_route/auto_route.dart';
import 'package:fdevs_fitkit/fdevs_fitkit.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../i18n/strings.g.dart';
import '../../../core/core.dart';
import '../../../data/repositories/user_repository/user_repository.dart';
import '../../../routes/app_routes.gr.dart';
import '../../../widgets/widgets.dart';
import '../../common/pages/common_pages.dart';

part '_sign_up_view_provider.dart';

@RoutePage()
class SignUpView extends ConsumerStatefulWidget {
  const SignUpView({super.key, this.isTenant = false});
  final bool isTenant;

  @override
  ConsumerState<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends ConsumerState<SignUpView> {
  @override
  Widget build(BuildContext context) {
    final controller = ref.watch(signupProvider);

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
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox.square(
                    dimension: 120.fW,
                    child: Image.asset(DAppImages.splashLogo),
                  ),

                  // Prompt
                  Container(
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
                          // 'Create An Account',
                          context.t.pages.signUp.title,
                          textAlign: TextAlign.center,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: _theme.textTheme.headlineMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox.square(dimension: 8),
                        Text(
                          // 'Sign In now to begin an amazing journey.',
                          context.t.pages.signUp.subtitle,
                          textAlign: TextAlign.center,
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style: _theme.textTheme.bodyLarge?.copyWith(
                            color: _theme.colorScheme.secondary,
                          ),
                        ),
                        const SizedBox.square(dimension: 30),

                        // Full Name Field
                        TextFormField(
                          controller: controller.fullNameController,
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.name,
                          autofillHints: const [AutofillHints.name],
                          decoration: InputDecoration(
                            // labelText: 'Full Name',
                            labelText: context.t.form.fullName.label,
                            // hintText: 'Enter your full name',
                            hintText: context.t.form.fullName.hint,
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              // return 'Please enter your full name';
                              return context.t.form.fullName.errors.required;
                            }

                            return null;
                          },
                        ),
                        const SizedBox.square(dimension: 20),

                        // Email Field
                        TextFormField(
                          controller: controller.emailController,
                          textInputAction: TextInputAction.next,
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

                        // Password Field
                        TextFormField(
                          controller: controller.passwordController,
                          textInputAction: TextInputAction.done,
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

                        // Sign Up Button
                        ElevatedButton(
                          onPressed: () async {
                            if (FormWrapper.validate(formContext)) {
                              return await handleFormSubmit(context);
                            }
                          },
                          // child: const Text('Sign Up'),
                          child: Text(context.t.action.signUp),
                        ).fSizedBox(size: Size.fromHeight(50.fH)),
                        const SizedBox.square(dimension: 20),

                        // Sign In Navigator
                        Text.rich(
                          context.t.pages.signUp.extra.signInNavigator(
                            signIn: (signIn) {
                              return TextSpan(
                                // text: 'Sign In',
                                text: signIn,
                                style: TextStyle(
                                  color: _theme.colorScheme.primary,
                                  fontWeight: FontWeight.w600,
                                ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    context.router.popUntilRouteWithName(
                                      SignInRoute.name,
                                    );
                                  },
                              );
                            },
                          ),
                          style: _theme.textTheme.bodyMedium?.copyWith(
                            color: _theme.colorScheme.secondary,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    ).unfocusPrimary();
  }

  Future<void> handleFormSubmit(BuildContext ctx) async {
    final controller = ref.read(signupProvider);

    final _result = await showAsyncLoadingOverlay(
      ctx,
      asyncFunction: () => controller.handleSignUp(
        widget.isTenant ? 'tenant' : 'landlord',
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
      final _modalResult = showCustomDialog(
        context: ctx,
        barrierDismissible: false,
        useRootNavigator: false,
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

      await _modalResult.whenComplete(() {
        if (ctx.mounted) {
          ctx.router.pushWidget(
            OtpVerificationView(
              onComplete: () => ctx.router.replaceAll([const MuteHomeRoute()]),
              email: controller.emailController.text,
              saveToken: true,
            ),
          );
        }
      });
    }
  }
}
