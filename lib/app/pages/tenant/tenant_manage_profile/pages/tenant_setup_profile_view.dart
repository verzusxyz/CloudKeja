part of '../tenant_manage_profile.dart';

@RoutePage()
class TenantSetupProfileView extends ConsumerStatefulWidget {
  const TenantSetupProfileView({super.key});

  @override
  ConsumerState<TenantSetupProfileView> createState() =>
      _TenantSetupProfileViewState();
}

class _TenantSetupProfileViewState
    extends ConsumerState<TenantSetupProfileView> {
  // Providers
  TenantManageProfileNotifier get controller {
    return ref.read(tenantManageProfileProvider);
  }

  TenantProfileFormFieldNotifier get formController {
    return controller.formFieldController;
  }

  @override
  void initState() {
    super.initState();
    ref.read(tenantProfileFormFieldProvider).initEdit(controller.user);
  }

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);

    return FormWrapper(
      builder: (formContext) {
        return Scaffold(
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
                    margin: const EdgeInsets.all(24),
                    padding: const EdgeInsets.fromLTRB(12, 24, 12, 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      color: _theme.colorScheme.primaryContainer,
                      boxShadow: [DAppBoxShadowStyles.boxShadow1],
                    ),
                    child: Column(
                      children: [
                        Text(
                          // 'Complete Your Profile',
                          context.t.common.completeYourProfile,
                          style: _theme.textTheme.headlineMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: 28.fW,
                          ),
                        ),
                        const SizedBox.square(dimension: 24),

                        // Common Form Fields
                        const TenantProfileFormFields(),
                        const SizedBox.square(dimension: 24),

                        // Submit Button
                        SizedBox.fromSize(
                          size: Size.fromHeight(50.fH),
                          child: ElevatedButton(
                            onPressed: () async {
                              if (!FormWrapper.validate(formContext)) {
                                return formController.openSectionsOnError();
                              }
                              return await _handleFormSubmit(context);
                            },
                            // child: const Text('Continue'),
                            child: Text(context.t.action.kContinue),
                          ),
                        ),
                        const SizedBox.square(dimension: 8),

                        // Logout Button
                        TextButton.icon(
                          onPressed: () async {
                            return SharedWidgets.handleSignOut(context);
                          },
                          style: TextButton.styleFrom(
                            foregroundColor: _theme.colorScheme.secondary,
                          ),
                          label: Text(context.t.common.logout),
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

  Future<void> _handleFormSubmit(BuildContext ctx) async {
    FocusManager.instance.primaryFocus?.unfocus();

    final _result = await showAsyncLoadingOverlay(
      ctx,
      asyncFunction: () => Future.microtask(controller.handleUpdateProfile),
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

      ctx.router.push(const MuteHomeRoute());
    }
  }
}
