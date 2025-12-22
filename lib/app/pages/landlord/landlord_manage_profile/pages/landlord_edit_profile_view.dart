part of '../landlord_manage_profile.dart';

@RoutePage()
class LandlordEditProfileView extends ConsumerStatefulWidget {
  const LandlordEditProfileView({super.key});

  @override
  ConsumerState<LandlordEditProfileView> createState() =>
      _LandlordEditProfileViewState();
}

class _LandlordEditProfileViewState
    extends ConsumerState<LandlordEditProfileView> {
  @override
  Widget build(BuildContext context) {
    final controller = ref.watch(landlordManageProfileProvider);

    final _theme = Theme.of(context);

    return FormWrapper(
      builder: (formContext) {
        return Scaffold(
          appBar: CustomAppBar(
            title: Text(context.t.common.editProfile),
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(120),
              child: Row(
                children: [
                  SizedBox.square(
                    dimension: 100,
                    child: UserAvatarPicker(
                      image: controller.avatarImage,
                      onPickImage: controller.handleAvatarImage,
                      showBorder: true,
                      borderColor: _theme.colorScheme.onPrimary,
                    ),
                  ),
                  const SizedBox.square(dimension: 20),
                  Text.rich(
                    TextSpan(
                      text: "${controller.user?.name ?? 'N/A'}\n",
                      children: [
                        TextSpan(
                          text: controller
                                  .user?.subscriptionPlan?.subscriptionName ??
                              "N/A",
                          style: _theme.textTheme.bodyLarge?.copyWith(
                            color: _theme.colorScheme.onPrimary,
                          ),
                        ),
                      ],
                      style: _theme.textTheme.headlineSmall?.copyWith(
                        fontWeight: FontWeight.w600,
                        color: _theme.colorScheme.onPrimary,
                      ),
                    ),
                  ),
                ],
              ).fMarginLTRB(24, 10, 24, 16),
            ),
          ),
          body: const ScaffoldBodyWrapper(
            body: SingleChildScrollView(
              padding: EdgeInsets.all(24),
              child: LandLordManageProfileFormsFields(isEditMode: true),
            ),
          ),
          bottomNavigationBar: ScaffoldBottomNavWrapper(
            child: SizedBox.fromSize(
              size: Size.fromHeight(50.fH),
              child: ElevatedButton(
                onPressed: () async {
                  if (FormWrapper.validate(formContext)) {
                    return await _handleFormSubmit(context);
                  }
                },
                // child: const Text('Update'),
                child: Text(context.t.action.update),
              ),
            ).fMarginSymmetric(horizontal: 24, vertical: 16),
          ),
        );
      },
    ).unfocusPrimary();
  }

  Future<void> _handleFormSubmit(BuildContext ctx) async {
    final _result = await showAsyncLoadingOverlay(
      ctx,
      asyncFunction: () => Future.microtask(
        ref.read(landlordManageProfileProvider).handleUpdateProfile,
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
