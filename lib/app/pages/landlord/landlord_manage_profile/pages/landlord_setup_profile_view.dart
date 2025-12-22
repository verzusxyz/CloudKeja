part of '../landlord_manage_profile.dart';

@RoutePage()
class LandlordSetupProfileView extends ConsumerStatefulWidget {
  const LandlordSetupProfileView({super.key});

  @override
  ConsumerState<LandlordSetupProfileView> createState() =>
      _LandlordSetupProfileViewState();
}

class _LandlordSetupProfileViewState
    extends ConsumerState<LandlordSetupProfileView> {
  @override
  Widget build(BuildContext context) {
    final controller = ref.watch(landlordManageProfileProvider);

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
                    margin: EdgeInsets.all(24.fW),
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
                        const SizedBox.square(dimension: 8),

                        // User Image
                        SizedBox.square(
                          dimension: 100,
                          child: UserAvatarPicker(
                            image: controller.avatarImage,
                            onPickImage: controller.handleAvatarImage,
                          ),
                        ),
                        const SizedBox.square(dimension: 8),
                        Text(
                          // 'Profile Image',
                          context.t.common.profileImage,
                          style: _theme.textTheme.bodyLarge?.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox.square(dimension: 4),
                        Text(
                          // 'Only JPEG & PNG Image with max size of 120x120 pixels.',
                          context.t.common.imagePickHint,
                          textAlign: TextAlign.center,
                          style: _theme.textTheme.bodyMedium?.copyWith(
                            color: _theme.colorScheme.secondary,
                          ),
                        ),
                        const SizedBox.square(dimension: 16),

                        // Common Form Fields
                        const LandLordManageProfileFormsFields(),
                        const SizedBox.square(dimension: 24),

                        // Submit Button
                        SizedBox.fromSize(
                          size: Size.fromHeight(50.fH),
                          child: ElevatedButton(
                            onPressed: () async => await _handleFormSubmit(
                              formContext,
                            ),
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
    final _result = await showAsyncLoadingOverlay(
      ctx,
      asyncFunction: () => Future.microtask(
          ref.read(landlordManageProfileProvider).handleUpdateProfile),
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
