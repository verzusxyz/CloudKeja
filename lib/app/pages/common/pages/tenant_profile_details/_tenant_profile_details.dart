import 'package:flutter/material.dart';

import '../../../../../i18n/strings.g.dart';
import '../../../../core/core.dart';
import '../../../../data/models/admin/models.dart';
import '../../../../widgets/widgets.dart';

class TenantProfileDetails extends StatelessWidget {
  const TenantProfileDetails._({
    super.key,
    required this.details,
    required this.isLandlord,
    this.expiringReason,
    this.onCancelRent,
    this.onDownloadAgreement,
  });
  final TenantDetails details;
  final bool isLandlord;
  final TenantExpiringReason? expiringReason;
  final void Function(TenantRentInfo? data)? onCancelRent;
  final void Function(String? url)? onDownloadAgreement;

  const TenantProfileDetails.landlord({
    Key? key,
    required TenantDetails details,
    TenantExpiringReason? expiringReason,
    required void Function(TenantRentInfo? data) onCancelRent,
    void Function(String? url)? onDownloadAgreement,
  }) : this._(
          key: key,
          details: details,
          isLandlord: true,
          expiringReason: expiringReason,
          onCancelRent: onCancelRent,
          onDownloadAgreement: onDownloadAgreement,
        );

  const TenantProfileDetails.tenant({
    Key? key,
    required TenantDetails details,
  }) : this._(
          key: key,
          details: details,
          isLandlord: false,
        );

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);

    final _sectionHeaderStyle = _theme.textTheme.titleLarge?.copyWith(
      fontSize: 18,
      fontWeight: FontWeight.w600,
    );

    final _cLabelStyle = _theme.textTheme.bodyLarge;

    const _ckFlex = 6;
    const _cVFlex = 8;
    final _cKTextStyle = _theme.textTheme.bodyMedium;
    final _cVTextStyle = _cKTextStyle?.copyWith(
      color: _theme.colorScheme.secondary,
    );

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (expiringReason != null) ...[
          // Text('Expired Reason', style: _sectionHeaderStyle),
          Text(context.t.common.expiringReason, style: _sectionHeaderStyle),
          const SizedBox.square(dimension: 12),
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: const Color(0xffFFEBEB),
              borderRadius: BorderRadius.circular(4),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  expiringReason!.title,
                  style: _theme.textTheme.bodyLarge?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  // 'End date: ${expiringReason?.date.formatDate() ?? "N/A"}',
                  '${context.t.common.endDate}: ${expiringReason?.date ?? "N/A"}',
                  style: _theme.textTheme.bodySmall?.copyWith(
                    color: _theme.colorScheme.secondary,
                  ),
                ),
                const Divider(height: 18),
                Text(
                  expiringReason!.message,
                  style: _theme.textTheme.bodyMedium,
                ),
              ],
            ),
          ),
          const SizedBox.square(dimension: 24),
        ],

        // Header
        // Text('Tenant Details', style: _sectionHeaderStyle),
        Text(context.t.common.tenantDetails, style: _sectionHeaderStyle),

        const Divider(height: 30),

        // Tenant Details
        ...{
          // "Type of Tenant": details.profileType?.label ?? "N/A",
          context.t.common.typeOfTenant:
              details.profileType?.label(context) ?? "N/A",
          // "Tenant Name": details.name ?? 'N/A',
          context.t.common.tenantName: details.name ?? 'N/A',
          // "Email": details.email ?? 'N/A',
          context.t.common.email: details.email ?? 'N/A',
          // "Mobile Number":
          //     "+${details.phone?.mobileCode ?? ''} ${details.phone?.mobileNo ?? ''}",
          context.t.common.mobileNumber:
              "+${details.phone?.mobileCode ?? ''} ${details.phone?.mobileNo ?? ''}",
          // "MyKad Id ": details.userDetails?.mykadId ?? 'N/A',
          context.t.common.nidPassportId: details.userDetails?.mykadId ?? 'N/A',
          // "Tenant ID": details.uniqueId ?? 'N/A',
          context.t.common.tenantId: details.uniqueId ?? 'N/A',
          // "Address 1": details.userDetails?.addressInfo?.addressOne ?? 'N/A',
          context.t.form.address1.label:
              details.userDetails?.addressInfo?.addressOne ?? 'N/A',
          // "Address 2": details.userDetails?.addressInfo?.addressTwo ?? 'N/A',
          context.t.form.address2.label:
              details.userDetails?.addressInfo?.addressTwo ?? 'N/A',
          // "Country Name": details.userDetails?.addressInfo?.country ?? 'N/A',
          context.t.common.country:
              details.userDetails?.addressInfo?.country ?? 'N/A',
          // "City": details.userDetails?.addressInfo?.city ?? 'N/A',
          context.t.common.city:
              details.userDetails?.addressInfo?.city ?? 'N/A',
          // "State": details.userDetails?.addressInfo?.state ?? 'N/A',
          context.t.common.state:
              details.userDetails?.addressInfo?.state ?? 'N/A',
          // "Postal Code": details.userDetails?.addressInfo?.postalCode ?? 'N/A',
          context.t.common.postalCode:
              details.userDetails?.addressInfo?.postalCode ?? 'N/A',
          // "Date of Birth":
          //     details.userDetails?.birthDate?.formatDate() ?? 'N/A',
          context.t.common.dateOfBirth:
              details.userDetails?.birthDate?.formatDate() ?? 'N/A',
          // "Gender": details.userDetails?.gender ?? 'N/A',
          context.t.common.gender: details.userDetails?.gender ?? 'N/A',
        }.entries.map((tenantDetail) {
          return KeyValueRow(
            title: tenantDetail.key,
            titleStyle: _cKTextStyle,
            titleFlex: _ckFlex,
            description: tenantDetail.value,
            descriptionStyle: _cVTextStyle,
            descriptionFlex: _cVFlex,
          );
        }),
        const SizedBox.square(dimension: 12),

        // Nominee
        // Text('Nominee', style: _sectionHeaderStyle),
        Text(context.t.common.nominee, style: _sectionHeaderStyle),

        const SizedBox.square(dimension: 12),
        ...{
          // "Nominee Name": details.userDetails?.nomineeInfo?.name ?? 'N/A',
          context.t.common.nomineeName:
              details.userDetails?.nomineeInfo?.name ?? 'N/A',
          // "Nominee Email": details.userDetails?.nomineeInfo?.email ?? 'N/A',
          context.t.common.nomineeEmail:
              details.userDetails?.nomineeInfo?.email ?? 'N/A',
          // "Nominee MO. NO.":
          //     details.userDetails?.nomineeInfo?.phone?.buildPhone ?? "N/A",
          context.t.common.nomineeMobile.short:
              details.userDetails?.nomineeInfo?.phone?.buildPhone ?? "N/A",
        }.entries.map((tenantDetail) {
          return KeyValueRow(
            title: tenantDetail.key,
            titleStyle: _cKTextStyle,
            titleFlex: _ckFlex,
            description: tenantDetail.value,
            descriptionStyle: _cVTextStyle,
            descriptionFlex: _cVFlex,
          );
        }),
        const SizedBox.square(dimension: 12),

        // Emergency Contact
        // Text('Emergency Contact', style: _sectionHeaderStyle),
        Text(context.t.common.emergencyContact, style: _sectionHeaderStyle),
        const SizedBox.square(dimension: 12),
        ...{
          // "Relation With You":
          //     details.userDetails?.emergencyContact?.relationWith ?? "N/A",
          context.t.common.relationWithYou:
              details.userDetails?.emergencyContact?.relationWith ?? "N/A",
          // "Name": details.userDetails?.emergencyContact?.name ?? "N/A",
          context.t.common.name:
              details.userDetails?.emergencyContact?.name ?? "N/A",
          // "Email": details.userDetails?.emergencyContact?.email ?? "N/A",
          context.t.common.email:
              details.userDetails?.emergencyContact?.email ?? "N/A",
          // "Mobile Number":
          //     details.userDetails?.emergencyContact?.phone?.buildPhone ?? "N/A",
          context.t.common.mobileNumber:
              details.userDetails?.emergencyContact?.phone?.buildPhone ?? "N/A",
        }.entries.map((tenantDetail) {
          return KeyValueRow(
            title: tenantDetail.key,
            titleStyle: _cKTextStyle,
            titleFlex: _ckFlex,
            description: tenantDetail.value,
            descriptionStyle: _cVTextStyle,
            descriptionFlex: _cVFlex,
          );
        }),
        const SizedBox.square(dimension: 12),

        // Company
        if (details.profileType?.isCompany == true) ...[
          // Text('Company', style: _sectionHeaderStyle),
          Text(context.t.common.company, style: _sectionHeaderStyle),
          const SizedBox.square(dimension: 12),
          ...{
            // "Company Name":
            //     details.userDetails?.companyInfo?.companyName ?? 'N/A',
            context.t.common.companyName:
                details.userDetails?.companyInfo?.companyName ?? 'N/A',
            // "Company SSM No":
            //     details.userDetails?.companyInfo?.companySsmNo ?? 'N/A',
            context.t.common.companySSMNo:
                details.userDetails?.companyInfo?.companySsmNo ?? 'N/A',
          }.entries.map((tenantDetail) {
            return KeyValueRow(
              title: tenantDetail.key,
              titleStyle: _cKTextStyle,
              titleFlex: _ckFlex,
              description: tenantDetail.value,
              descriptionStyle: _cVTextStyle,
              descriptionFlex: _cVFlex,
            );
          }),
        ],
        const SizedBox.square(dimension: 12),

        // Workplace
        // Text('Workplace', style: _sectionHeaderStyle),
        Text(context.t.common.workplace, style: _sectionHeaderStyle),
        const SizedBox.square(dimension: 12),
        ...{
          // "Company name": details.userDetails?.workplace?.companyName ?? 'N/A',
          context.t.common.companyName:
              details.userDetails?.workplace?.companyName ?? 'N/A',
          // "Address 1": details.userDetails?.workplace?.addressOne ?? 'N/A',
          context.t.form.address1.label:
              details.userDetails?.workplace?.addressOne ?? 'N/A',
          // "Address 2 (Optional)":
          //     details.userDetails?.workplace?.addressTwo ?? 'N/A',
          "${context.t.form.address2.label} ${context.t.common.optional}":
              details.userDetails?.workplace?.addressTwo ?? 'N/A',
          // "Postal code": details.userDetails?.workplace?.postalCode ?? 'N/A',
          context.t.common.postalCode:
              details.userDetails?.workplace?.postalCode ?? 'N/A',
          // "City": details.userDetails?.workplace?.city ?? "N/A",
          context.t.common.city: details.userDetails?.workplace?.city ?? "N/A",
          // "State": details.userDetails?.workplace?.state ?? 'N/A',
          context.t.common.state:
              details.userDetails?.workplace?.state ?? 'N/A',
          // "Country": details.userDetails?.workplace?.country ?? "N/A",
          context.t.common.country:
              details.userDetails?.workplace?.country ?? "N/A",
          // "Office Phone Number":
          //     details.userDetails?.workplace?.officePhone ?? "N/A",
          context.t.common.officePhoneNo:
              details.userDetails?.workplace?.officePhone ?? "N/A",
          // "Office Mobile Number":
          //     details.userDetails?.workplace?.phone?.buildPhone ?? 'N/A',
          context.t.common.officeMobileNo:
              details.userDetails?.workplace?.phone?.buildPhone ?? 'N/A',
          // "Email Address": details.userDetails?.workplace?.email ?? "N/A",
          context.t.common.email:
              details.userDetails?.workplace?.email ?? "N/A",
        }.entries.map((tenantDetail) {
          return KeyValueRow(
            title: tenantDetail.key,
            titleStyle: _cKTextStyle,
            titleFlex: _ckFlex,
            description: tenantDetail.value,
            descriptionStyle: _cVTextStyle,
            descriptionFlex: _cVFlex,
          );
        }),
        const SizedBox.square(dimension: 12),

        // Vehicles Information
        // Text('Vehicles Information', style: _sectionHeaderStyle),
        Text(context.t.common.vehiclesInfo.plain, style: _sectionHeaderStyle),
        const SizedBox.square(dimension: 12),
        if (details.userDetails?.vehiclesInfo?.isNotEmpty == false)
          ...List.generate(
            details.userDetails?.vehiclesInfo?.length ?? 0,
            (index) {
              final _vInfo = details.userDetails?.vehiclesInfo?[index];
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
                    // "Vehicles Type": _vInfo?.type ?? "N/A",
                    context.t.common.vehiclesType: _vInfo?.type ?? "N/A",
                    // "Car Registration No": _vInfo?.regNo ?? "N/A",
                    context.t.common.vehicleRegistrationNo.normal:
                        _vInfo?.regNo ?? "N/A",
                    // "Vehicles Brand": _vInfo?.brand ?? "N/A",
                    context.t.common.vehicleBrand: _vInfo?.brand ?? "N/A",
                  }.entries.map((tenantDetail) {
                    return KeyValueRow(
                      title: tenantDetail.key,
                      titleStyle: _cKTextStyle,
                      titleFlex: _ckFlex,
                      description: tenantDetail.value,
                      descriptionStyle: _cVTextStyle,
                      descriptionFlex: _cVFlex,
                    );
                  }),
                  const SizedBox.square(dimension: 8),
                ],
              );
            },
          )
        else ...[
          Text("No vehicle info provided."),
          const SizedBox.square(dimension: 12),
        ],

        // NID/Passport
        // Text('NID/Passport', style: _sectionHeaderStyle),
        Text(context.t.common.nidPassport, style: _sectionHeaderStyle),
        const SizedBox.square(dimension: 12),
        if (details.userDetails?.mykad != null)
          SizedBox.fromSize(
            size: const Size.fromHeight(96),
            child: IDCardPreview.preview(
              images: [
                if (details.userDetails?.mykad?.frontImage != null)
                  details.userDetails!.mykad!.frontImage,
                if (details.userDetails?.mykad?.backImage != null)
                  details.userDetails!.mykad!.backImage
              ],
            ),
          )
        else ...[
          // Text("No MyKad image provided."),
          Text(context.t.exceptions.noNidPassport),
          const SizedBox.square(dimension: 8),
        ],

        // Rents
        if (isLandlord) ...[
          const SizedBox.square(dimension: 16),
          Text(
            // 'Rent Property',
            context.t.common.rentProperty,
            style: _sectionHeaderStyle,
          ),
          const SizedBox.square(dimension: 12),
          Column(
            spacing: 12,
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (details.rent?.isEmpty == true) ...[
                // Text("No rent poperty found for this tenant."),
                Text(context.t.exceptions.noRentPropertyFound),
                const SizedBox.square(dimension: 8),
              ] else
                ...List.generate(
                  details.rent?.length ?? 0,
                  (index) {
                    final _rentInfo = details.rent?[index];

                    final _border = BorderSide(
                      color: _theme.colorScheme.outline.withValues(
                        alpha: 0.15,
                      ),
                    );

                    return ExpansionTile(
                      key: ValueKey(_rentInfo?.id),
                      visualDensity: const VisualDensity(
                        horizontal: -4,
                        vertical: -4,
                      ),
                      initiallyExpanded: index == 0,
                      shape: Border(
                        top: _border,
                        left: _border,
                        right: _border,
                        bottom: _border.copyWith(width: 0.5),
                      ),
                      collapsedShape: Border(
                        top: _border,
                        left: _border,
                        right: _border,
                        bottom: _border.copyWith(width: 0.5),
                      ),
                      title: Text(
                        _rentInfo?.property?.propertyDetail?.propertyInfo
                                ?.propertyTitle ??
                            "N/A",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style:
                            _cLabelStyle?.copyWith(fontWeight: FontWeight.w600),
                      ),
                      tilePadding: const EdgeInsets.symmetric(horizontal: 8),
                      expandedCrossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: double.maxFinite,
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            border: Border(
                              top: _border,
                              left: _border.copyWith(width: 0.5),
                              right: _border.copyWith(width: 0.5),
                              bottom: _border.copyWith(width: 0.5),
                            ),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Property Details
                              Text(
                                // 'Property Details',
                                context.t.common.propertyDetails,
                                style: _cLabelStyle?.copyWith(
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const SizedBox.square(dimension: 8),
                              ...{
                                // "Property ID":
                                context.t.common.propertyId:
                                    _rentInfo?.property?.pUid ?? "N/A",

                                // "Property Type":
                                context.t.common.propertyType:
                                    _rentInfo?.property?.category?.name ??
                                        "N/A",

                                // "Property Name":
                                context.t.common.propertyName: _rentInfo
                                        ?.property
                                        ?.propertyDetail
                                        ?.propertyInfo
                                        ?.propertyTitle ??
                                    "N/A",
                                // "Property Address":
                                context.t.common.propertyAddress:
                                    PropertyCardData.buildAddress(
                                  [
                                    _rentInfo?.property?.addressInfo?.address,
                                    _rentInfo?.property?.addressInfo?.city,
                                    _rentInfo?.property?.addressInfo?.state,
                                  ],
                                  separator: ', ',
                                ),
                              }.entries.map((tenantDetail) {
                                return KeyValueRow(
                                  title: tenantDetail.key,
                                  titleStyle: _cKTextStyle,
                                  titleFlex: _ckFlex,
                                  description: tenantDetail.value,
                                  descriptionStyle: _cVTextStyle,
                                  descriptionFlex: _cVFlex,
                                );
                              }),
                              const Divider(),

                              // Payment Details
                              Text(
                                // 'Payment Details',
                                context.t.common.paymentDetails,
                                style: _cLabelStyle?.copyWith(
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const SizedBox.square(dimension: 8),
                              ...{
                                // "Monthly Rent":
                                context.t.common.monthlyRent: _rentInfo
                                        ?.securityDeposit?.rentAdvance
                                        ?.quickCurrency() ??
                                    "N/A",
                                // "Security Deposit":
                                context.t.common.securityDeposit: _rentInfo
                                        ?.securityDeposit?.depositAmount
                                        ?.quickCurrency() ??
                                    "N/A",
                                // "Utility Deposit":
                                context.t.common.utilityBill: _rentInfo
                                        ?.securityDeposit?.utilityAdvance
                                        ?.quickCurrency() ??
                                    "N/A",
                                // "This Month Payment":
                                context.t.common.thisMonthPayment: _rentInfo
                                        ?.rentPayment?.thisMonthPayment
                                        ?.quickCurrency() ??
                                    "N/A",
                                // "Total Paid Rent":
                                context.t.common.totalPaidRent: _rentInfo
                                        ?.rentPayment?.totalPaidRent
                                        ?.quickCurrency() ??
                                    "N/A",
                                // "Due Rent":
                                context.t.common.dueRent: _rentInfo
                                        ?.rentPayment?.dueRent
                                        ?.quickCurrency() ??
                                    "N/A",
                                // "Rent Start Date":
                                context.t.common.rentStartDate:
                                    _rentInfo?.startDate?.formatDate() ?? "N/A",
                                // "Rent End Date":
                                context.t.common.rentEndDate:
                                    _rentInfo?.endDate?.formatDate() ?? "N/A",
                                // "Status":
                                context.t.common.status:
                                    PaymentStatus.fromString(
                                  _rentInfo?.rentPayment?.paymentStatus,
                                ),
                              }.entries.map((tenantDetail) {
                                final _description = tenantDetail.value;
                                final _isStatus = _description is PaymentStatus;
                                return KeyValueRow(
                                  title: tenantDetail.key,
                                  titleStyle: _cKTextStyle,
                                  titleFlex: _ckFlex,
                                  description: _isStatus
                                      ? _description.label(context)
                                      : _description.toString(),
                                  descriptionStyle: _cVTextStyle?.copyWith(
                                    color:
                                        _isStatus ? _description.color : null,
                                    fontWeight:
                                        _isStatus ? FontWeight.w600 : null,
                                  ),
                                  descriptionFlex: _cVFlex,
                                );
                              }),
                              const Divider(),

                              // Rent Agreement
                              Text(
                                // 'Rent Agreement PDF',
                                context.t.common.rentAgreementPdf,
                                style: _cLabelStyle?.copyWith(
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const SizedBox.square(dimension: 8),
                              FileFormField.download(
                                downloadURL:
                                    _rentInfo?.tenantAgreement?.remote ??
                                        '${context.t.common.noFile}.pdf',
                                fileType: FileFormFieldFileType.pdf,
                                onDownloadTap: () => onDownloadAgreement?.call(
                                  _rentInfo?.tenantAgreement?.remote,
                                ),
                              ),
                              const SizedBox.square(dimension: 12),

                              SizedBox(
                                height: 42,
                                width: double.maxFinite,
                                child: OutlinedButton(
                                  onPressed: () => onCancelRent?.call(
                                    _rentInfo!,
                                  ),
                                  style:
                                      CustomButtonStyles.destructiveOutline(),
                                  // child: const Text('Cancel Renting'),
                                  child: Text(context.t.common.cancelRenting),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    );
                  },
                ),
            ],
          )
        ]
      ],
    );
  }
}

class TenantExpiringReason {
  final String title;
  final DateTime date;
  final String message;

  const TenantExpiringReason({
    required this.title,
    required this.date,
    required this.message,
  });
}
