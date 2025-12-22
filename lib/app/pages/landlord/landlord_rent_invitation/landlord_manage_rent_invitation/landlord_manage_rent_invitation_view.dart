import 'package:auto_route/auto_route.dart';
import 'package:fdevs_fitkit/fdevs_fitkit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:iconly/iconly.dart';
import 'package:recase/recase.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../../i18n/strings.g.dart';
import '../../../../core/core.dart';
import '../../../../data/repositories/repositories.dart';
import '../../../../widgets/widgets.dart';

part '_landlord_manage_rent_invitation_view_provider.dart';

@RoutePage()
class LandlordManageRentInvitationView extends ConsumerStatefulWidget {
  const LandlordManageRentInvitationView({super.key, this.tenant});
  final Tenant? tenant;

  @override
  ConsumerState<LandlordManageRentInvitationView> createState() =>
      _LandlordManageRentInvitationViewState();
}

class _LandlordManageRentInvitationViewState
    extends ConsumerState<LandlordManageRentInvitationView> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (widget.tenant != null) {
        ref.read(landlordManageRentInvitationViewProvider).handleSelectTenant(
              widget.tenant,
            );
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final controller = ref.watch(landlordManageRentInvitationViewProvider);

    final tenants = ref.watch(tenantListProvider);
    final properties = ref.watch(propertyListProvider);

    final _theme = Theme.of(context);
    final _sectionHeaderStyle = _theme.textTheme.titleMedium?.copyWith(
      fontWeight: FontWeight.w700,
    );

    return FormWrapper(
      builder: (formContext) {
        return Scaffold(
          appBar: CustomAppBar(
            // title: const Text('New Invite Rent'),
            title: Text(context.t.common.newInviteRent),
          ),
          body: ScaffoldBodyWrapper(
            body: SingleChildScrollView(
              padding: const EdgeInsets.fromLTRB(24, 24, 24, 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Tenant Dropdown
                  Skeletonizer(
                    enabled: tenants.isAnyLoading,
                    child: Builder(
                      builder: (_) {
                        if (tenants.hasError && !tenants.hasValue) {
                          return Text.rich(
                            RetryButtons.inlineText(
                              tenants.error!,
                              onRetry: () => ref.refresh(tenantListProvider),
                            ),
                          );
                        }
                        return DropdownButtonFormField<Tenant>(
                          // hint: const Text('Select a tenant.'),
                          hint: Text(
                            context.t.form.anyDropdown
                                .hint(label: context.t.common.tenant)
                                .sentenceCase,
                          ),
                          decoration: InputDecoration(
                            // labelText: 'Tenant',
                            labelText: context.t.form.anyDropdown
                                .label(label: context.t.common.tenant),
                          ),
                          menuMaxHeight: 250,
                          value: controller.selectedTenant,
                          items: [
                            ...?tenants.valueOrNull?.data?.data?.map((tenant) {
                              return DropdownMenuItem<Tenant>(
                                value: tenant,
                                child: Text(tenant.name ?? 'N/A'),
                              );
                            })
                          ],
                          onChanged: widget.tenant != null
                              ? null
                              : controller.handleSelectTenant,
                          validator: (value) {
                            if (value == null || (value.id ?? 0) <= 0) {
                              // return "Please select a tenant";
                              return context.t.form.anyDropdown.errors
                                  .required(label: context.t.common.tenant)
                                  .sentenceCase;
                            }
                            return null;
                          },
                        );
                      },
                    ),
                  ),
                  const SizedBox.square(dimension: 20),

                  // Tenant Id Preview
                  TextFormField(
                    controller: controller.tenantIdController,
                    enabled: false,
                    decoration: InputDecoration(
                      // labelText: 'Tenant ID',
                      labelText: context.t.form.anyField.label(
                        label: context.t.common.tenantId,
                      ),
                      // hintText: 'Select a tenant to see ID',
                      hintText: context.t.form.anyField
                          .hint(label: context.t.common.tenantId)
                          .sentenceCase,
                    ),
                  ),
                  const SizedBox.square(dimension: 20),

                  // Property Dropdown
                  Skeletonizer(
                    enabled: properties.isAnyLoading,
                    child: Builder(
                      builder: (_) {
                        if (properties.hasError && !properties.hasValue) {
                          return Text.rich(
                            RetryButtons.inlineText(
                              properties.error!,
                              onRetry: () => ref.refresh(tenantListProvider),
                            ),
                          );
                        }
                        return DropdownButtonFormField<int>(
                          // hint: const Text('Select a property.'),
                          hint: Text(
                            context.t.form.anyDropdown
                                .hint(label: context.t.common.property)
                                .sentenceCase,
                          ),
                          decoration: InputDecoration(
                            // labelText: 'Property',
                            labelText: context.t.form.anyDropdown
                                .label(label: context.t.common.property),
                          ),
                          menuMaxHeight: 250,
                          value: controller.selectedPropertyId,
                          items: [
                            ...?properties.valueOrNull?.data?.data?.map(
                              (property) {
                                return DropdownMenuItem<int>(
                                  value: property.id,
                                  child: Text(
                                    property.propertyDetail?.propertyInfo
                                            ?.propertyTitle ??
                                        'N/A',
                                  ),
                                );
                              },
                            )
                          ],
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
                        );
                      },
                    ),
                  ),
                  const SizedBox.square(dimension: 16),

                  // Rental Period
                  Text(
                    // 'Rental period',
                    context.t.common.rentalPeriod,
                    style: _sectionHeaderStyle,
                  ),
                  const SizedBox.square(dimension: 16),
                  Row(
                    spacing: 16,
                    children: [
                      // From Date
                      Expanded(
                        child: DateFormField(
                          dateFormat: CustomDateFormat('yyyy-MM-dd'),
                          decoration: InputDecoration(
                            // labelText: 'From Date',
                            labelText: context.t.form.date.label(
                              label: context.t.common.fromDate,
                            ),
                            // hintText: 'Select date',
                            hintText: context.t.form.date
                                .hint(label: context.t.common.fromDate)
                                .sentenceCase,
                            suffixIcon: Icon(IconlyLight.calendar),
                          ),
                          controller: controller.fromDateController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              // return 'Please select from date';
                              return context.t.form.date.errors
                                  .required(label: context.t.common.fromDate)
                                  .sentenceCase;
                            }
                            return null;
                          },
                        ),
                      ),

                      // To Date
                      Expanded(
                        child: DateFormField(
                          dateFormat: CustomDateFormat('yyyy-MM-dd'),
                          decoration: InputDecoration(
                            // labelText: 'To Date',
                            labelText: context.t.form.date.label(
                              label: context.t.common.toDate,
                            ),
                            // hintText: 'Select date',
                            hintText: context.t.form.date
                                .hint(label: context.t.common.toDate)
                                .sentenceCase,
                            suffixIcon: Icon(IconlyLight.calendar),
                          ),
                          controller: controller.toDateController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              // return 'Please select to date';
                              return context.t.form.date.errors
                                  .required(label: context.t.common.toDate)
                                  .sentenceCase;
                            }
                            return null;
                          },
                        ),
                      ),
                    ],
                  ),
                  const SizedBox.square(dimension: 20),

                  // Rent Agreement
                  Text.rich(
                    TextSpan(
                      // text: 'Rent Agreement',
                      text: context.t.common.rentAgreement,
                      children: [
                        TextSpan(
                          text: ' * ',
                          style: TextStyle(color: Colors.red),
                        ),
                      ],
                    ),
                    style: _sectionHeaderStyle,
                  ),
                  const SizedBox.square(dimension: 16),
                  FileFormField.upload(
                    initialValue: controller.agreementFile,
                    onSelectFile: (v) => controller.agreementFile = v,
                    fieldType: FileFormFieldType.textField,
                    fileType: FileFormFieldFileType.pdf,
                    decoration: FileFormFieldDecoration(
                      // labelText: 'Upload File (PDF)',
                      labelText: context.t.form.fileField.label(
                        label: context.t.common.uploadFilePDF,
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.path.isEmpty) {
                        // return "Please select an agreement file";
                        return context.t.form.fileField.errors
                            .required(label: context.t.common.uploadFilePDF)
                            .sentenceCase;
                      }
                      return null;
                    },
                  )
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
                // child: const Text('Invite Tenant'),
                child: Text(context.t.action.inviteTenant),
              ),
            ).fMarginLTRB(24, 18, 24, 12),
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
            .read(landlordManageRentInvitationViewProvider)
            .handleFormSubmit(),
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

final tenantListProvider = FutureProvider.autoDispose(
  (ref) => Future.microtask(
    () => ref.read(landlordTenantRepoProvider).getTenants(
          noPaging: true,
        ),
  ),
);

final propertyListProvider = FutureProvider.autoDispose(
  (ref) => Future.microtask(
    () => ref.read(propertyRepoProvider).getProperties(
          noPaging: true,
          availableForRent: true,
          status: PropertyStatus.active.statusId,
        ),
  ),
);
