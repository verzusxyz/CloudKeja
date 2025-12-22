import 'package:auto_route/auto_route.dart';
import 'package:fdevs_fitkit/fdevs_fitkit.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../i18n/strings.g.dart';
import '../../../core/core.dart';
import '../../../data/repositories/repositories.dart';
import '../../../routes/app_routes.gr.dart';
import '../../../widgets/widgets.dart';
import '../../common/pages/common_pages.dart';

part '_sign_in_view_provider.dart';

@RoutePage()
class SignInView extends ConsumerStatefulWidget {
  const SignInView({super.key});

  @override
  ConsumerState<SignInView> createState() => _SignInViewState();
}

class _SignInViewState extends ConsumerState<SignInView> {
  @override
  void initState() {
    super.initState();
    ref.read(signinProvider).handleRememberMe();
  }

  @override
  Widget build(BuildContext context) {
    final controller = ref.watch(signinProvider);

    final _theme = Theme.of(context);

    return FormWrapper(
      builder: (formContext) {
        return Scaffold(
          extendBodyBehindAppBar: true,
          backgroundColor: DAppColors.kSurfaceLight,
          body: SafeArea(
            child: Center(
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
                            // 'Welcome Back',
                            context.t.pages.signIn.title,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: _theme.textTheme.headlineMedium?.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox.square(dimension: 8),
                          Text(
                            // 'Sign In now to begin an amazing journey.',
                            context.t.pages.signIn.subtitle,
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: _theme.textTheme.bodyLarge?.copyWith(
                              color: _theme.colorScheme.secondary,
                            ),
                          ),
                          const SizedBox.square(dimension: 30),

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

                              return null;
                            },
                          ),
                          const SizedBox.square(dimension: 16),

                          // Remember Me & Forgot Password
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              // Remember Me
                              Text.rich(
                                TextSpan(
                                  children: [
                                    WidgetSpan(
                                      alignment: PlaceholderAlignment.middle,
                                      child: SizedBox.fromSize(
                                        size: Size.square(20.fH),
                                        child: Checkbox(
                                          value: controller.rememberMe,
                                          onChanged:
                                              controller.toggleRememberMe,
                                          visualDensity: const VisualDensity(
                                            horizontal: -4,
                                          ),
                                        ),
                                      ).fMarginOnly(right: 8),
                                    ),
                                    TextSpan(
                                      // text: 'Remember me',
                                      text: context
                                          .t.pages.signIn.extra.rememberMe,
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = controller.toggleRememberMe,
                                    )
                                  ],
                                ),
                              ),
                              Text.rich(
                                TextSpan(
                                  text: context
                                      .t.pages.signIn.extra.forgotPassword,
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      context.router.push(
                                        const ForgotPasswordRoute(),
                                      );
                                    },
                                ),
                              ),
                            ],
                          ),
                          const SizedBox.square(dimension: 20),

                          // Sign In Button
                          ElevatedButton(
                            onPressed: () async => await handleFormSubmit(
                              formContext,
                            ),
                            // child: const Text('Sign In'),
                            child: Text(context.t.action.signIn),
                          ).fSizedBox(size: Size.fromHeight(50.fH)),
                          const SizedBox.square(dimension: 20),

                          // Sign Up Navigator
                          Text.rich(
                            context.t.pages.signIn.extra.signUpNavigator(
                              getStarted: (getStarted) => TextSpan(
                                text: getStarted,
                                style: TextStyle(
                                  color: _theme.colorScheme.primary,
                                  fontWeight: FontWeight.w600,
                                ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    context.router.push(const WelcomeRoute());
                                  },
                              ),
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
          ),
        );
      },
    ).unfocusPrimary();
  }

  Future<void> handleFormSubmit(BuildContext ctx) async {
    if (Form.maybeOf(ctx)?.validate() == false) return;

    final controller = ref.read(signinProvider);

    final _result = await showAsyncLoadingOverlay(
      ctx,
      asyncFunction: controller.handleSignIn,
    );

    if (ctx.mounted) {
      if (_result.isFailure) {
        if (_result.left == HttpStatus.created.toString()) {
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
                child:
                    VerificationDialog(email: controller.emailController.text),
              );
            },
          );

          _modalResult.whenComplete(() async {
            final _email = controller.emailController.text;
            if (ctx.mounted) {
              ctx.router.pushWidget(
                OtpVerificationView(
                  email: _email,
                  onComplete: () => ctx.router.replaceAll(
                    [const MuteHomeRoute()],
                  ),
                ),
              );
            }
          });

          return;
        }

        showCustomSnackBar(
          ctx,
          content: Text(_result.left!),
          customSnackBarType: CustomOverlayType.error,
        );
        return;
      }
      ctx.router.push(const MuteHomeRoute());
    }
  }
}
