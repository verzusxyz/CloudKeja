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
import '../../../../routes/app_routes.gr.dart';
import '../../../../widgets/widgets.dart';
import '../../../common/widgets/widgets.dart';

@RoutePage()
class LandlordApplicationDetailsView extends ConsumerStatefulWidget {
  const LandlordApplicationDetailsView({super.key, required this.id});
  final int id;

  @override
  ConsumerState<LandlordApplicationDetailsView> createState() =>
      _LandlordApplicationDetailsViewState();
}

class _LandlordApplicationDetailsViewState
    extends ConsumerState<LandlordApplicationDetailsView> {
  File? agreementFile;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (context.mounted) {
        gEventListener.on<ApplicationEvent>().listen((_) {
          // ignore: unused_result
          ref.refresh(applicationDetailsProvider(widget.id));
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final _applicationDetails = ref.watch(
      applicationDetailsProvider(widget.id),
    );
    final _data = _applicationDetails.valueOrNull?.data;
    final _status = ApplicationStatus.fromId(_data?.status);
    final _depositStatus = PaymentStatus.fromString(
      _data?.securityDeposit?.status,
    );

    final _theme = Theme.of(context);

    const _ckFlex = 6;
    const _cVFlex = 8;
    final _cKTextStyle = _theme.textTheme.bodyMedium;
    final _cVTextStyle = _cKTextStyle?.copyWith(
      color: _theme.colorScheme.secondary,
    );
    final _sectionHeaderStyle = _theme.textTheme.titleMedium?.copyWith(
      fontWeight: FontWeight.w700,
    );

    return FormWrapper(
      builder: (formContext) {
        return Scaffold(
          appBar: CustomAppBar(
            title: Skeletonizer(
              enabled: _applicationDetails.isAnyLoading,
              child: ListTile(
                contentPadding: EdgeInsets.zero,
                leading: SizedBox.square(
                  dimension: 44,
                  child: UserAvatarPicker(
                    userName: _data?.tenant?.name,
                    showInitialsPlaceholder: true,
                    showBorder: false,
                    image: _data?.tenant?.image,
                    fit: BoxFit.cover,
                  ),
                ),
                title: Text(
                  _data?.tenant?.name ?? 'N/A',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                titleTextStyle: _theme.textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w700,
                  color: _theme.colorScheme.onPrimary,
                ),
                subtitle: Text(
                  '${context.t.common.dateAndTime}: ${_data?.createdAt?.formatDate(pattern: 'dd MMM yyyy - hh:mma')}',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                subtitleTextStyle: _cKTextStyle?.copyWith(
                  color: _theme.colorScheme.onPrimary,
                ),
              ),
            ),
          ),
          body: ScaffoldBodyWrapper(
            body: RefreshIndicator.adaptive(
              onRefresh: () => ref.refresh(
                applicationDetailsProvider(widget.id).future,
              ),
              child: SingleChildScrollView(
                padding: const EdgeInsetsDirectional.fromSTEB(20, 20, 20, 12),
                physics: const AlwaysScrollableScrollPhysics(),
                child: Skeletonizer(
                  enabled: _applicationDetails.isAnyLoading,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Header
                      ListTile(
                        contentPadding: EdgeInsets.zero,
                        visualDensity: const VisualDensity(
                          horizontal: -4,
                          vertical: -4,
                        ),
                        // title: const Text('Application Details'),
                        title: Text(context.t.common.applicationDetails),
                        titleTextStyle: _theme.textTheme.titleLarge?.copyWith(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                        trailing: Text(
                          _status.label(context),
                          style: _theme.textTheme.bodyMedium?.copyWith(
                            color: _status.statusColor,
                          ),
                        ),
                      ),
                      const Divider(height: 8),

                      // Tenant Details
                      ExpansionTile(
                        visualDensity: const VisualDensity(
                          horizontal: -4,
                          vertical: -4,
                        ),
                        initiallyExpanded: true,
                        shape: const Border(),
                        title: Text(
                          // 'Tenant Details',
                          context.t.common.tenantDetails,
                          style: _sectionHeaderStyle,
                        ),
                        tilePadding: EdgeInsets.zero,
                        children: [
                          ...{
                            // 'Type of Tenant':
                            context.t.common.typeOfTenant:
                                _data?.tenant?.profileType?.label(context) ??
                                    "N/A",
                            // 'Full Name':
                            context.t.common.fullName:
                                _data?.tenant?.name ?? "N/A",
                            // 'Email Address':
                            context.t.common.email:
                                _data?.tenant?.email ?? "N/A",
                            // 'Phone Number':
                            context.t.common.mobileNumber:
                                _data?.tenant?.phone?.buildPhone ?? "N/A",
                            // 'NID/Passport Id':
                            context.t.common.nidPassportId:
                                _data?.tenant?.userDetails?.mykadId ?? "N/A",
                            // 'Tenant ID':
                            context.t.common.tenantId:
                                _data?.tenant?.uniqueId ?? "N/A",
                            // 'Gender':
                            context.t.common.gender:
                                _data?.tenant?.userDetails?.gender ?? "N/A",
                            // 'Address 1':
                            context.t.form.address1.label: _data?.tenant
                                    ?.userDetails?.addressInfo?.addressOne ??
                                "N/A",
                            // 'Address 2':
                            context.t.form.address2.label: _data?.tenant
                                    ?.userDetails?.addressInfo?.addressTwo ??
                                "N/A",
                            // 'Postal Code':
                            context.t.common.postalCode: _data?.tenant
                                    ?.userDetails?.addressInfo?.postalCode ??
                                "N/A",
                            // 'City':
                            context.t.common.city:
                                _data?.tenant?.userDetails?.addressInfo?.city ??
                                    "N/A",
                            // 'Country Name':
                            context.t.common.country: _data?.tenant?.userDetails
                                    ?.addressInfo?.country ??
                                "N/A",
                          }.entries.map(
                            (entry) {
                              return KeyValueRow(
                                title: entry.key,
                                titleStyle: _cKTextStyle,
                                titleFlex: _ckFlex,
                                description: entry.value,
                                descriptionStyle: _cVTextStyle,
                                descriptionFlex: _cVFlex,
                              );
                            },
                          )
                        ],
                      ),
                      const SizedBox.square(dimension: 16),

                      // Nominee
                      Text(
                        // 'Nominee',
                        context.t.common.nominee,
                        style: _sectionHeaderStyle,
                      ),
                      const SizedBox.square(dimension: 16),
                      ...{
                        // "Nominee Name":
                        context.t.common.nomineeName:
                            _data?.tenant?.userDetails?.nomineeInfo?.name ??
                                "N/A",
                        // "Nominee Email":
                        context.t.common.nomineeEmail:
                            _data?.tenant?.userDetails?.nomineeInfo?.email ??
                                "N/A",
                        // "Nominee MO. NO.":
                        context.t.common.nomineeMobile.short: _data?.tenant
                                ?.userDetails?.nomineeInfo?.phone?.buildPhone ??
                            "N/A",
                      }.entries.map((entry) {
                        return KeyValueRow(
                          title: entry.key,
                          titleFlex: _ckFlex,
                          description: entry.value,
                          descriptionFlex: _cVFlex,
                        );
                      }),
                      const SizedBox.square(dimension: 16),

                      // Emergency Contact
                      Text(
                        // 'Emergency Contact',
                        context.t.common.emergencyContact,
                        style: _sectionHeaderStyle,
                      ),
                      const SizedBox.square(dimension: 16),
                      ...{
                        // "Relation With":
                        context.t.common.relationWith: _data?.tenant
                                ?.userDetails?.emergencyContact?.relationWith ??
                            "N/A",
                        // "Name":
                        context.t.common.name: _data
                                ?.tenant?.userDetails?.emergencyContact?.name ??
                            "N/A",
                        // "Email":
                        context.t.common.email: _data?.tenant?.userDetails
                                ?.emergencyContact?.email ??
                            "N/A",
                        // "Phone Number":
                        context.t.common.mobileNumber: _data
                                ?.tenant
                                ?.userDetails
                                ?.emergencyContact
                                ?.phone
                                ?.buildPhone ??
                            "N/A",
                      }.entries.map((entry) {
                        return KeyValueRow(
                          title: entry.key,
                          titleFlex: _ckFlex,
                          description: entry.value,
                          descriptionFlex: _cVFlex,
                        );
                      }),
                      const SizedBox.square(dimension: 16),

                      // Company
                      if (_data?.tenant?.profileType ==
                          TenantProfileType.company) ...[
                        Text(
                          // 'Company',
                          context.t.common.company,
                          style: _sectionHeaderStyle,
                        ),
                        const SizedBox.square(dimension: 16),
                        ...{
                          // "Company Name":

                          context.t.common.companyName: _data?.tenant
                                  ?.userDetails?.companyInfo?.companyName ??
                              "N/A",
                          // "Company SSM No":
                          context.t.common.companySSMNo: _data?.tenant
                                  ?.userDetails?.companyInfo?.companySsmNo ??
                              "N/A",
                        }.entries.map((entry) {
                          return KeyValueRow(
                            title: entry.key,
                            titleFlex: _ckFlex,
                            description: entry.value,
                            descriptionFlex: _cVFlex,
                          );
                        }),
                        const SizedBox.square(dimension: 16),
                      ],

                      // Workplace
                      Text(
                        // 'Workplace',
                        context.t.common.workplace,
                        style: _sectionHeaderStyle,
                      ),
                      const SizedBox.square(dimension: 16),
                      ...{
                        // "Company name":
                        context.t.common.companyName: _data
                                ?.tenant?.userDetails?.workplace?.companyName ??
                            "N/A",
                        // "Address":
                        context.t.common.address:
                            PropertyCardData.buildAddress([
                          _data?.tenant?.userDetails?.workplace?.addressOne,
                          _data?.tenant?.userDetails?.workplace?.addressTwo,
                          _data?.tenant?.userDetails?.workplace?.city,
                          _data?.tenant?.userDetails?.workplace?.state,
                          _data?.tenant?.userDetails?.workplace?.postalCode,
                          _data?.tenant?.userDetails?.workplace?.country,
                        ], separator: ', '),
                        // "Office Phone Number":
                        context.t.common.officePhoneNo: _data
                                ?.tenant?.userDetails?.workplace?.officePhone ??
                            "N/A",
                        // "Office Mobile Number":
                        context.t.common.officeMobileNo: _data?.tenant
                                ?.userDetails?.workplace?.phone?.buildPhone ??
                            "N/A",
                        // "Email Address":
                        context.t.common.email:
                            _data?.tenant?.userDetails?.workplace?.email ??
                                "N/A",
                      }.entries.map((entry) {
                        return KeyValueRow(
                          title: entry.key,
                          titleFlex: _ckFlex,
                          description: entry.value,
                          descriptionFlex: _cVFlex,
                        );
                      }),
                      const SizedBox.square(dimension: 16),

                      // Vehicles Information
                      Text(
                        // 'Vehicles Information',
                        context.t.common.vehiclesInfo.plain,
                        style: _sectionHeaderStyle,
                      ),
                      const SizedBox.square(dimension: 16),
                      if (_data?.tenant?.userDetails?.vehiclesInfo?.isEmpty ==
                          true)
                        // Text('No vehicle infomation provided.')
                        Text(context.t.exceptions.noVehicleInfoProvided)
                      else
                        ...List.generate(
                          _data?.tenant?.userDetails?.vehiclesInfo?.length ?? 0,
                          (index) {
                            final _vInfo = _data
                                ?.tenant?.userDetails?.vehiclesInfo?[index];
                            return Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  // '#${index + 1} Vehicle',
                                  '#${index + 1} ${context.t.common.vehicle}',
                                  style: _theme.textTheme.bodyMedium?.copyWith(
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const SizedBox.square(dimension: 8),
                                ...{
                                  // "Vehicles Type":
                                  context.t.common.vehiclesType:
                                      _vInfo?.type ?? "N/A",
                                  // "Car Registration No":
                                  context.t.common.vehicleRegistrationNo.normal:
                                      _vInfo?.regNo ?? "N/A",
                                  // "Vehicles Brand":
                                  context.t.common.vehicleBrand:
                                      _vInfo?.brand ?? "N/A",
                                }.entries.map((tenantDetail) {
                                  return KeyValueRow(
                                    title: tenantDetail.key,
                                    titleFlex: _ckFlex,
                                    titleStyle: _cKTextStyle,
                                    description: tenantDetail.value,
                                    descriptionStyle: _cVTextStyle,
                                    descriptionFlex: _cVFlex,
                                  );
                                }),
                                const SizedBox.square(dimension: 8),
                              ],
                            );
                          },
                        ),
                      const SizedBox.square(dimension: 16),

                      // NID/Passport ID
                      // Text('NID/Passport', style: _sectionHeaderStyle),
                      Text(context.t.common.nidPassport,
                          style: _sectionHeaderStyle),
                      const SizedBox.square(dimension: 12),
                      if (_data?.tenant?.userDetails?.mykad != null)
                        SizedBox.fromSize(
                          size: const Size.fromHeight(96),
                          child: IDCardPreview.preview(
                            images: [
                              if (_data?.tenant?.userDetails?.mykad
                                      ?.frontImage !=
                                  null)
                                _data!.tenant!.userDetails!.mykad!.frontImage,
                              if (_data
                                      ?.tenant?.userDetails?.mykad?.backImage !=
                                  null)
                                _data!.tenant!.userDetails!.mykad!.backImage
                            ],
                          ),
                        )
                      else ...[
                        // Text("No MyKad image provided."),
                        Text(context.t.exceptions.noNidPassport),
                        const SizedBox.square(dimension: 8),
                      ],
                      const SizedBox.square(dimension: 12),

                      // Property Details
                      ExpansionTile(
                        visualDensity: const VisualDensity(
                          horizontal: -4,
                          vertical: -4,
                        ),
                        initiallyExpanded: true,
                        shape: const Border(),
                        title: Text(
                          // 'Property Details',
                          context.t.common.propertyDetails,
                          style: _sectionHeaderStyle,
                        ),
                        tilePadding: EdgeInsets.zero,
                        children: [
                          ...{
                            // "Property ID":
                            context.t.common.propertyId:
                                _data?.property?.pUid ?? "N/A",
                            // "Property Type":
                            context.t.common.propertyType:
                                _data?.property?.category?.name ?? "N/A",
                            // "Property Name":
                            context.t.common.propertyName: _data
                                    ?.property
                                    ?.propertyDetail
                                    ?.propertyInfo
                                    ?.propertyTitle ??
                                "N/A",
                            // "Property Address":
                            context.t.common.propertyAddress:
                                PropertyCardData.buildAddress([
                              _data?.property?.addressInfo?.address,
                              _data?.property?.addressInfo?.city,
                              _data?.property?.addressInfo?.state,
                            ], separator: ', '),
                          }.entries.map(
                            (entry) {
                              return KeyValueRow(
                                title: entry.key,
                                titleFlex: _ckFlex,
                                titleStyle: _cKTextStyle,
                                description: entry.value,
                                descriptionStyle: _cVTextStyle,
                                descriptionFlex: _cVFlex,
                              );
                            },
                          )
                        ],
                      ),

                      // Payment Details
                      ExpansionTile(
                        visualDensity: const VisualDensity(
                          horizontal: -4,
                          vertical: -4,
                        ),
                        initiallyExpanded: true,
                        shape: const Border(),
                        title: Text(
                          // 'Payment Details',
                          context.t.common.paymentDetails,
                          style: _sectionHeaderStyle,
                        ),
                        tilePadding: EdgeInsets.zero,
                        children: [
                          ...{
                            // "Monthly Rental":
                            context.t.common.monthlyRent: _data
                                    ?.property?.rentInfo?.monthlyRent
                                    ?.quickCurrency() ??
                                "N/A",
                            // "Security Deposit":
                            context.t.common.securityDeposit: _data
                                    ?.property?.securityDeposit
                                    ?.quickCurrency() ??
                                "N/A",
                            // "Utility Bill":
                            context.t.common.utilityBill: _data
                                    ?.property?.utilityDeposit
                                    ?.quickCurrency() ??
                                "N/A",
                            if (!_status.isPending) ...{
                              // "Deposit Status":
                              context.t.common.depositStatus: _depositStatus,
                            },
                          }.entries.map(
                            (entry) {
                              final _description = entry.value;
                              final _isStatus = _description is PaymentStatus;
                              return KeyValueRow(
                                title: entry.key,
                                titleFlex: _ckFlex,
                                titleStyle: _cKTextStyle,
                                description: _isStatus
                                    ? _description.label(context)
                                    : _description.toString(),
                                descriptionStyle: _cVTextStyle?.copyWith(
                                  color: _isStatus ? _description.color : null,
                                ),
                                descriptionFlex: _cVFlex,
                              );
                            },
                          )
                        ],
                      ),

                      // Upload Agreement PDF
                      if (_status == ApplicationStatus.pending) ...[
                        const SizedBox.square(dimension: 12),
                        Text.rich(
                          TextSpan(
                            // text: 'Upload Rent Agreement',
                            text: context.t.common.uploadRentAgreement,
                            children: [
                              TextSpan(
                                text: ' * ',
                                style: TextStyle(color: Colors.red),
                              ),
                            ],
                          ),
                          style: _sectionHeaderStyle,
                        ),
                        const SizedBox.square(dimension: 12),
                        FileFormField.upload(
                          initialValue: agreementFile,
                          onSelectFile: (v) => agreementFile = v,
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
                              // return "Please select an agreement document file.";
                              return context.t.form.fileField.errors.required(
                                label: context.t.common.askSelectRentAgreement,
                              );
                            }
                            return null;
                          },
                        ),
                      ],

                      // Download Agreement PDF
                      if (_status == ApplicationStatus.processing &&
                          (_data?.landlordAgreement?.isRemote == true)) ...[
                        const Divider(height: 20),

                        // Landlord PDF
                        Text(
                          // 'My Rent Agreement PDF',
                          context.t.common.landlordRentAgreementPDF,
                          style: _sectionHeaderStyle,
                        ),
                        const SizedBox.square(dimension: 8),
                        FileFormField.download(
                          downloadURL: _data?.landlordAgreement?.remote,
                          onDownloadTap: () async {
                            return await SharedWidgets.handleDownloadOverlay(
                              context,
                              _data?.landlordAgreement?.remote,
                            );
                          },
                        ),
                        const SizedBox.square(dimension: 20),

                        // Tenant PDF
                        Text(
                          // 'Tenant Rent Agreement PDF',
                          context.t.common.tenantRentAgreementPDF,
                          style: _sectionHeaderStyle,
                        ),
                        const SizedBox.square(dimension: 8),

                        FileFormField.download(
                          downloadURL: _data?.tenantAgreement?.remote ??
                              '${context.t.common.noFile}.pdf',
                          onDownloadTap: () async {
                            return await SharedWidgets.handleDownloadOverlay(
                              context,
                              _data?.tenantAgreement?.remote,
                            );
                          },
                        ).overlap(showWhen: _data?.hasTTAgreement == false),
                        const SizedBox.square(dimension: 16),

                        Text.rich(
                          context.t.common.landlordApplicationApproveNote(
                            note: (note) {
                              return TextSpan(
                                // text:'Only approve the application after tenant make a deposit payment.',
                                text: note,
                                style: TextStyle(
                                  color: _theme.colorScheme.secondary,
                                ),
                              );
                            },
                          ),
                          style: _theme.textTheme.bodyLarge,
                        ),
                      ],

                      // Reject Reason
                      if (_status == ApplicationStatus.rejected) ...[
                        const SizedBox.square(dimension: 12),
                        Text(
                          // 'Reason Of Rejection',
                          context.t.common.reasonOfRejection,
                          style: _sectionHeaderStyle,
                        ),
                        const SizedBox.square(dimension: 8),
                        Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: const Color(0xffFFEBEB),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(
                                IconlyLight.info_circle,
                                color: _status.statusColor,
                              ),
                              const SizedBox.square(dimension: 4),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      // 'You\'ve rejected this application',
                                      context.t.common
                                          .youveRejectedThisApplication,
                                      style: _theme.textTheme.bodyMedium,
                                    ),
                                    const SizedBox.square(dimension: 4),
                                    Text(
                                      _data?.rejectedCause ?? 'N/A',
                                      style:
                                          _theme.textTheme.bodyMedium?.copyWith(
                                        color: _theme.colorScheme.secondary,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ]
                    ],
                  ),
                ),
              ),
            ),
          ),
          bottomNavigationBar: _status.isRejected
              ? null
              : ScaffoldBottomNavWrapper(
                  child: Skeletonizer(
                    enabled: _applicationDetails.isAnyLoading,
                    child: Row(
                      spacing: 16,
                      children: [
                        // Reject Button
                        if (_status.isPending ||
                            (_status.isProcessing && _depositStatus.isUnpaid))
                          Expanded(
                            child: SizedBox(
                              height: 50,
                              child: OutlinedButton(
                                onPressed: () async => await _handleReject(
                                  context,
                                  _data?.id,
                                ),
                                style: CustomButtonStyles.destructiveOutline(),
                                // child: const Text('Reject'),
                                child: Text(context.t.action.reject),
                              ),
                            ),
                          ),

                        // Process Button
                        if (_status == ApplicationStatus.pending) ...[
                          Expanded(
                            child: SizedBox(
                              height: 50,
                              child: ElevatedButton(
                                onPressed: () async {
                                  if (Form.maybeOf(formContext)?.validate() ==
                                      true) {
                                    return await _handleProcessing(
                                      context,
                                      _data?.id,
                                    );
                                  }
                                },
                                // child: const Text('Processing'),
                                child: Text(context.t.action.process),
                              ),
                            ),
                          ),
                        ],

                        if (_status == ApplicationStatus.processing) ...[
                          Expanded(
                            child: SizedBox(
                              height: 50,
                              child: ElevatedButton(
                                onPressed: () async {
                                  if (Form.maybeOf(formContext)?.validate() ==
                                      true) {
                                    return await _handleApproved(
                                      context,
                                      _data?.id,
                                    );
                                  }
                                },
                                // child: const Text('Approve'),
                                child: Text(context.t.action.approve),
                              ).overlap(
                                showWhen: _data?.hasTTAgreement == false ||
                                    !_depositStatus.isPaid,
                              ),
                            ),
                          ),
                        ],

                        // View Rent Details
                        if (_status == ApplicationStatus.approved) ...[
                          Expanded(
                            child: SizedBox(
                              height: 50,
                              child: ElevatedButton(
                                onPressed: () async {
                                  final _rentId =
                                      _data?.property?.rentDetails?.id;
                                  if (_warnIfNull(context, _rentId)) {
                                    // ignore: unused_local_variable
                                    final _result = await context.router.push(
                                      LandlordRentInvitationDetailsRoute(
                                        id: _rentId!,
                                      ),
                                    );
                                  }
                                },
                                // child: const Text('View Rent'),
                                child: Text(context.t.action.viewRent),
                              ),
                            ),
                          ),
                        ]
                      ],
                    ).fMarginLTRB(24, 16, 24, 16),
                  ),
                ),
        );
      },
    );
  }

  Future<void> _handleProcessing(BuildContext ctx, int? id) async {
    if (!_warnIfNull(ctx, id)) return;

    final _confirmation = await showDialog<bool>(
      context: ctx,
      builder: (popContext) {
        return InfoDialog.confirmation(
          // title: 'Are you sure processing this request for rent property?',
          title: context.t.common.askProcessingRentApplication,
          onDecide: (value) => Navigator.of(popContext).pop(value),
        );
      },
    );
    if (_confirmation != true) return;

    if (ctx.mounted) {
      final _result = await showAsyncLoadingOverlay(
        ctx,
        asyncFunction: () => Future.microtask(() {
          return ref
              .read(applicationRepoProvider)
              .processApplication(id!, agreementFile!);
        }),
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
        agreementFile = null;
      }
    }
  }

  Future<void> _handleApproved(BuildContext ctx, int? id) async {
    if (!_warnIfNull(ctx, id)) return;
    final _confirmation = await showDialog<bool>(
      context: ctx,
      builder: (popContext) {
        return InfoDialog.confirmation(
          // title: 'Tenant has paid the deposit.',
          title: context.t.common.tenantHasPaidDeposit,
          onDecide: (value) => Navigator.of(popContext).pop(value),
          icon: IconlyBold.wallet,
        );
      },
    );

    if (ctx.mounted && _confirmation == true) {
      final _result = await showAsyncLoadingOverlay(
        ctx,
        asyncFunction: () => Future.microtask(
          () => ref.read(applicationRepoProvider).approveApplication(id!),
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
      }
    }
  }

  Future<void> _handleReject(BuildContext ctx, int? id) async {
    if (!_warnIfNull(ctx, id)) return;

    final _reasonController = TextEditingController();

    final _confirmation = await showDialog<bool>(
      context: ctx,
      barrierDismissible: false,
      builder: (popContext) {
        return DescriptionTakerDialog(
          // dialogTitle: 'Why are you rejecting this application?',
          dialogTitle: context.t.prompt.application.rejectTitle,
          controller: _reasonController,
          fieldDecoration: InputDecoration(
            // labelText: 'Reason',
            labelText: context.t.form.reason.label,
            // hintText: 'Enter reason',
            hintText: context.t.form.reason.hint.sentenceCase,
          ),
          validator: (value) {
            if (value == null || value.trim().isEmpty) {
              // return 'Please enter a reason.';
              return context.t.form.reason.errors.required;
            }
            return null;
          },
        );
      },
    );

    if (ctx.mounted && _confirmation == true) {
      final _result = await showAsyncLoadingOverlay(
        ctx,
        asyncFunction: () => Future.microtask(
          () => ref
              .read(applicationRepoProvider)
              .rejectApplication(id!, reason: _reasonController.text),
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
      }
    }
  }

  bool _warnIfNull(BuildContext ctx, int? id) {
    if (id == null) {
      showCustomSnackBar(
        ctx,
        content: Text(
          // 'Invalid application info! Please refresh the page and try again.',
          context.t.exceptions.invalidApiDataRefreshPage(
            dataType: context.t.common.application.toLowerCase(),
          ),
        ),
        customSnackBarType: CustomOverlayType.error,
      );
      return false;
    }
    return true;
  }
}
