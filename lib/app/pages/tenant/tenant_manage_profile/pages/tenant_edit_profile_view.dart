part of '../tenant_manage_profile.dart';

@RoutePage()
class TenantEditProfileView extends ConsumerStatefulWidget {
  const TenantEditProfileView({super.key});

  @override
  ConsumerState<TenantEditProfileView> createState() =>
      _TenantEditProfileViewState();
}

class _TenantEditProfileViewState extends ConsumerState<TenantEditProfileView> {
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
    return FormWrapper(
      builder: (formContext) {
        return Scaffold(
          appBar: CustomAppBar(
            // title: const Text('Edit Profile'),
            title: Text(context.t.common.editProfile),
          ),
          body: const ScaffoldBodyWrapper(
            body: SingleChildScrollView(
              padding: EdgeInsets.all(24),
              child: TenantProfileFormFields(isEditing: true),
            ),
          ),
          bottomNavigationBar: ScaffoldBottomNavWrapper(
            child: SizedBox.fromSize(
              size: const Size.fromHeight(50),
              child: ElevatedButton(
                onPressed: () async {
                  if (!FormWrapper.validate(formContext)) {
                    return formController.openSectionsOnError();
                  }
                  return await _handleFormSubmit(context);
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

      return ctx.router.back();
    }
  }
}
