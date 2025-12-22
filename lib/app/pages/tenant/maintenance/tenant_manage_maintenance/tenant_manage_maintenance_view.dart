import 'package:auto_route/auto_route.dart';
import 'package:fdevs_fitkit/fdevs_fitkit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:recase/recase.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../../i18n/strings.g.dart';
import '../../../../core/core.dart';
import '../../../../data/repositories/repositories.dart';
import '../../../../widgets/widgets.dart';

part '_tenant_manage_maintenance_view_provider.dart';

@RoutePage()
class TenantManageMaintenanceView extends ConsumerStatefulWidget {
  const TenantManageMaintenanceView({super.key, this.editModel});
  final Maintenance? editModel;
  bool get isEditing => editModel != null;

  @override
  ConsumerState<TenantManageMaintenanceView> createState() =>
      _TenantManageMaintenanceViewState();
}

class _TenantManageMaintenanceViewState
    extends ConsumerState<TenantManageMaintenanceView> {
  @override
  void initState() {
    if (widget.isEditing) {
      ref
          .read(tenantManageMaintenanceViewProvider)
          .handleInitEdit(widget.editModel!);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final controller = ref.watch(tenantManageMaintenanceViewProvider);

    final _theme = Theme.of(context);

    return FormWrapper(
      builder: (formContext) {
        return Scaffold(
          appBar: CustomAppBar(
            title: Text(
              widget.isEditing
                  // ? 'Edit Maintenance Request'
                  ? context.t.common.editMaintenanceRequest
                  // : 'Add New Maintenance',
                  : context.t.common.addNewMaintenance,
            ),
          ),
          body: ScaffoldBodyWrapper(
            body: SingleChildScrollView(
              padding: const EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Property Dropdown
                  Builder(builder: (_) {
                    final _myRentResp = ref.watch(propertyListProvider(null));
                    if (_myRentResp.hasError && !_myRentResp.hasValue) {
                      return Text.rich(
                        RetryButtons.inlineText(
                          _myRentResp.error!,
                          onRetry: () =>
                              ref.refresh(propertyListProvider(null)),
                        ),
                      );
                    }
                    final _properties = [
                      ...?_myRentResp.valueOrNull?.data?.data
                    ];

                    return Skeletonizer(
                      enabled: _myRentResp.isAnyLoading,
                      child: DropdownButtonFormField<int>(
                        // hint: Text('Select property'),
                        hint: Text(
                          context.t.form.anyDropdown
                              .label(label: context.t.common.property)
                              .sentenceCase,
                        ),
                        decoration: InputDecoration(
                          // labelText: 'Property Name',
                          labelText: context.t.form.anyDropdown
                              .label(label: context.t.common.propertyName),
                        ),
                        isExpanded: true,
                        value: controller.selectedPropertyId,
                        items: List.generate(
                          _properties.length,
                          (index) {
                            final _property = _properties[index];
                            return DropdownMenuItem<int>(
                              value: _property.propertyId,
                              child: Text(
                                _property.property?.propertyDetail?.propertyInfo
                                        ?.propertyTitle ??
                                    "N/A",
                              ),
                            );
                          },
                        ),
                        menuMaxHeight: 250,
                        onChanged: (v) => controller.selectedPropertyId = v,
                        validator: (value) {
                          if (value == null || value <= 0) {
                            // return "Please select a property";
                            return context.t.form.anyDropdown.errors
                                .required(label: context.t.common.property)
                                .sentenceCase;
                          }

                          return null;
                        },
                      ),
                    );
                  }),
                  const SizedBox.square(dimension: 20),

                  // Title
                  TextFormField(
                    controller: controller.titleController,
                    decoration: InputDecoration(
                      // labelText: 'Title',
                      labelText: context.t.form.title.label,
                      // hintText: 'Enter title',
                      hintText: context.t.form.title.hint,
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        // return "Please enter title";
                        return context.t.form.title.errors.required;
                      }

                      return null;
                    },
                  ),
                  const SizedBox.square(dimension: 20),

                  // Description
                  TextFormField(
                    controller: controller.descriptionController,
                    decoration: InputDecoration(
                      // labelText: 'Description',
                      labelText: context.t.form.anyField.label(
                        label: context.t.common.description,
                      ),
                      // hintText: 'Enter some description',
                      hintText: context.t.form.anyField.hint(
                        label: context.t.common.description,
                      ),
                      contentPadding: const EdgeInsets.all(14),
                    ),
                    maxLines: 3,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        // return "Please enter some description";
                        return context.t.form.anyField.errors
                            .required(label: context.t.common.description)
                            .sentenceCase;
                      }
                      return null;
                    },
                  ),
                  const SizedBox.square(dimension: 14),

                  // Images
                  Text(
                    // 'Images',
                    context.t.common.image,
                    style: _theme.textTheme.bodyLarge?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox.square(dimension: 4),
                  Wrap(
                    spacing: 12,
                    runSpacing: 12,
                    children: [
                      ...List.generate(
                        controller.images.length + 1,
                        (index) {
                          final _placeholderKey =
                              GlobalKey<FormFieldState<DynamicFileType>>();

                          if (index < controller.images.length) {
                            final _image = controller.images[index];
                            return ImageFormField(
                              key: ValueKey(_image.hashCode),
                              previewSize: Size.square(65),
                              initialValue: _image,
                              onSelectImage: (value) {
                                return controller.handleImage(
                                  value,
                                  value.local == null ? index : null,
                                );
                              },
                            );
                          }

                          return ImageFormField(
                            key: _placeholderKey,
                            previewSize: Size.square(65),
                            onSelectImage: controller.handleImage,
                          );
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          bottomNavigationBar: ScaffoldBottomNavWrapper(
            child: SizedBox(
              height: 50,
              child: ElevatedButton(
                onPressed: () async {
                  if (Form.maybeOf(formContext)?.validate() == true) {
                    return await _handleFormSubmit(context);
                  }
                },
                // child: Text(widget.isEditing ? 'Update' : 'Send Request'),
                child: Text(
                  widget.isEditing
                      ? context.t.action.update
                      : context.t.action.sendRequest,
                ),
              ),
            ).fMarginLTRB(24, 16, 24, 16),
          ),
        );
      },
    ).unfocusPrimary();
  }

  Future<void> _handleFormSubmit(BuildContext ctx) async {
    final _result = await showAsyncLoadingOverlay(
      ctx,
      asyncFunction: () => Future.microtask(
        () => ref
            .read(tenantManageMaintenanceViewProvider)
            .handleFormSubmit(widget.editModel?.id),
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

final propertyListProvider =
    FutureProvider.autoDispose.family<PaginatedRentListModel, String?>(
  (ref, search) => Future.microtask(
    () => ref.read(myRentRepoProvider).getRentList(
          noPaging: true,
          status: MyRentStatus.active.name,
          search: search,
        ),
  ),
);
