import 'package:auto_route/auto_route.dart';
import 'package:fdevs_fitkit/fdevs_fitkit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../i18n/strings.g.dart';
import '../../../../data/repositories/repositories.dart';
import '../../../../routes/app_routes.gr.dart';
import '../../../../widgets/widgets.dart';
import '../../../common/pages/common_pages.dart';

part '_manage_tenant_view_provider.dart';

@RoutePage()
class ManageTenantView extends ConsumerStatefulWidget {
  const ManageTenantView({super.key, this.editModel});
  final Tenant? editModel;

  @override
  ConsumerState<ManageTenantView> createState() => _ManageTenantViewState();
}

class _ManageTenantViewState extends ConsumerState<ManageTenantView> {
  //-------------------Providers-------------------//
  late final controller = ref.read(manageTenantProvider);
  late final fieldController = controller.formFieldController;
  //-------------------Providers-------------------//

  @override
  void initState() {
    if (widget.editModel != null) {
      ref.read(tenantProfileFormFieldProvider).initEdit(widget.editModel);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FormWrapper(
      useDefaultInvoker: true,
      builder: (formContext) {
        return Scaffold(
          appBar: CustomAppBar(
            title: Text(
              // widget.editModel != null ? 'Edit Tenant' : 'Add New Tenant',
              widget.editModel != null
                  ? context.t.common.editTenant
                  : context.t.common.addNewTenant,
            ),
          ),
          body: ScaffoldBodyWrapper(
            body: SingleChildScrollView(
              padding: const EdgeInsets.all(24),
              child: TenantProfileFormFields(
                isLandlord: true,
                isEditing: widget.editModel != null,
              ),
            ),
          ),
          bottomNavigationBar: ScaffoldBottomNavWrapper(
            child: SizedBox.fromSize(
              size: const Size.fromHeight(50),
              child: ElevatedButton(
                onPressed: () async {
                  if (Form.maybeOf(formContext)?.validate() == false ||
                      !fieldController.isValidVehicle) {
                    return fieldController.openSectionsOnError();
                  }

                  return await _handleFormSubmit(context);
                },
                child: Text(
                  // widget.editModel != null ? 'Update' : 'Save',
                  widget.editModel != null
                      ? context.t.action.update
                      : context.t.action.save,
                ),
              ),
            ).fMarginLTRB(24, 12, 24, 16),
          ),
        );
      },
    ).unfocusPrimary();
  }

  Future<void> _handleFormSubmit(BuildContext ctx) async {
    late final Either<String, Tenant> _response;
    try {
      final _result = await showAsyncLoadingOverlay(
        ctx,
        asyncFunction: () => Future.microtask(
          () => controller.handleManageTenant(widget.editModel?.id),
        ),
      );
      _response = Either.success(_result);
    } catch (e) {
      _response = Either.failure(e.toString());
    }

    if (ctx.mounted) {
      if (_response.isFailure) {
        showCustomSnackBar(
          ctx,
          content: Text(_response.left!),
          customSnackBarType: CustomOverlayType.error,
        );
        return;
      }

      // For Tenant Update
      if (widget.editModel != null) {
        return ctx.router.back();
      }

      // For Tenant Create
      final _email = controller.formFieldController.emailController.text;
      final _modal = showDialog(
        context: ctx,
        barrierDismissible: false,
        useRootNavigator: false,
        builder: (popContext) {
          Future.delayed(const Duration(milliseconds: 1500)).whenComplete(
            () {
              if (popContext.mounted) return Navigator.of(popContext).pop();
            },
          );
          return PopScope(
            canPop: false,
            child: VerificationDialog(email: _email),
          );
        },
      );

      _modal.whenComplete(() {
        if (ctx.mounted) {
          ctx.router.pushWidget(
            OtpVerificationView(
              email: _email,
              saveToken: null,
              onComplete: () => ctx.router.popUntilRouteWithName(
                TenantListRoute.name,
              ),
            ),
          );
          return;
        }
      });
    }
  }
}
