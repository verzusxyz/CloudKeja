import 'package:auto_route/auto_route.dart';
import 'package:fdevs_fitkit/fdevs_fitkit.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:icons_plus/icons_plus.dart';

import '../../../../core/core.dart';
import '../../../../widgets/widgets.dart';

@RoutePage()
class TenantLeaseDetailsView extends StatelessWidget {
  const TenantLeaseDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    final status = ApplicationStatus.pending;
    final _theme = Theme.of(context);

    final _cLabelStyle = _theme.textTheme.bodyLarge?.copyWith(
      fontWeight: FontWeight.w600,
    );
    const _ckFlex = 6;
    const _cVFlex = 8;

    return Scaffold(
      appBar: CustomAppBar(
        title: ListTile(
          contentPadding: EdgeInsets.zero,
          title: const Text('Arte Plus Jalan Ampang'),
          subtitle: Text(
            'Date: 25 Jun 2023',
            style: _theme.textTheme.bodyMedium?.copyWith(
              color: _theme.colorScheme.secondary,
            ),
          ),
        ),
      ),
      body: ScaffoldBodyWrapper(
        body: SingleChildScrollView(
          padding: const EdgeInsetsDirectional.fromSTEB(20, 20, 20, 12),
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
                title: const Text('Lease Detail'),
                titleTextStyle: _theme.textTheme.titleLarge?.copyWith(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
                trailing: Text(
                  status.label(context),
                  style: _theme.textTheme.bodyMedium?.copyWith(
                    color: status.statusColor,
                    fontWeight: FontWeight.w600,
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
                title: Text('Property Detail', style: _cLabelStyle),
                tilePadding: EdgeInsets.zero,
                children: [
                  ...{
                    'Property Type': 'Apartment',
                    'Property Name': 'Shaidul islam',
                    'Property Address':
                        'Off Jalan Ampang, Ampang, Kuala Lumpur 38',
                    'Lot Number': '10',
                    'Residential Type': 'Service Residence',
                    'Furnishing': 'Fully furnished',
                    'Floor Range': '1200 sf',
                    'Bedroom': '2 beds',
                    'Bathroom': '1 bathsr',
                    'Property Size': '760 sq.ft.',
                  }.entries.map(
                    (entry) {
                      return KeyValueRow(
                        title: entry.key,
                        titleFlex: _ckFlex,
                        description: entry.value,
                        descriptionFlex: _cVFlex,
                      );
                    },
                  )
                ],
              ),
              const SizedBox.square(dimension: 16),
              Text(
                'Description',
                style: _theme.textTheme.bodyLarge?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox.square(dimension: 4),
              ReadMore2(
                'Amet minim mollit non deserunt ullamco est sit ali qua dolor do amet sint. Velit officia co nsequat duis enim velit mollit. Exercitation veniam conse quat sunt nostrud amet.',
                textStyle: _theme.textTheme.bodyMedium?.copyWith(
                  color: _theme.colorScheme.secondary,
                ),
                handleStyle: TextStyle(
                  color: _theme.colorScheme.primary,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox.square(dimension: 16),
              // Features (Facilities & Amenities )
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text.rich(
                    TextSpan(
                      text: 'Features ',
                      children: [
                        TextSpan(
                          text: '(Facilities & Amenities )',
                          style: TextStyle(
                            color: _theme.colorScheme.secondary,
                          ),
                        ),
                      ],
                    ),
                    style: _theme.textTheme.bodyLarge?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox.square(dimension: 10),

                  // Facilities
                  Text(
                    'Facilities',
                    style: _theme.textTheme.bodyMedium,
                  ),
                  const SizedBox.square(dimension: 8),
                  LayoutBuilder(
                    builder: (context, constraints) {
                      return Wrap(
                        spacing: 10,
                        runSpacing: 10,
                        children: [
                          ...[
                            "Parking",
                            "Security",
                            "Lift",
                            "Swimming Pool",
                            "Playground",
                            "Gymnasium",
                            "Sauna",
                            "Barbeque area",
                            "Minimart",
                            "Multipurpose hall",
                          ].map(
                            (entry) {
                              return SizedBox(
                                width: constraints.maxWidth * 0.4,
                                child: _buildFeature(
                                  feature: entry,
                                  iconColor: _theme.colorScheme.primary,
                                  style: _theme.textTheme.bodyMedium?.copyWith(
                                    color: _theme.colorScheme.secondary,
                                  ),
                                ),
                              );
                            },
                          ),
                        ],
                      );
                    },
                  ),
                  const SizedBox.square(dimension: 12),

                  // Amenities
                  Text(
                    'Amenities ',
                    style: _theme.textTheme.bodyMedium,
                  ),
                  const SizedBox.square(dimension: 8),
                  LayoutBuilder(
                    builder: (context, constraints) {
                      return Wrap(
                        spacing: 10,
                        runSpacing: 10,
                        children: [
                          ...[
                            "Air-Cond",
                            "Cooking Allowed",
                            "Near KTM/LRT",
                            "Washing Machine",
                            "Internet",
                          ].map(
                            (entry) {
                              return SizedBox(
                                width: constraints.maxWidth * 0.4,
                                child: _buildFeature(
                                  feature: entry,
                                  iconColor: _theme.colorScheme.primary,
                                  style: _theme.textTheme.bodyMedium?.copyWith(
                                    color: _theme.colorScheme.secondary,
                                  ),
                                ),
                              );
                            },
                          ),
                        ],
                      );
                    },
                  ),
                ],
              ),
              const SizedBox.square(dimension: 16),
              // Floor Plans
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Floor Plans',
                    style: _theme.textTheme.bodyLarge?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox.square(dimension: 4),
                  ListTile(
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 5,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                      side: BorderSide(
                        color: _theme.colorScheme.secondary.withValues(
                          alpha: 0.20,
                        ),
                      ),
                    ),
                    leading: const ColoredBox(
                      color: Colors.red,
                      child: SizedBox.square(dimension: 50),
                    ),
                    title: const Text('Typical Floor 07-11-15 & 19'),
                  )
                ],
              ),

              const SizedBox.square(dimension: 16),
              // Property Details
              ExpansionTile(
                visualDensity: const VisualDensity(
                  horizontal: -4,
                  vertical: -4,
                ),
                initiallyExpanded: true,
                shape: const Border(),
                title: Text('Payment Details', style: _cLabelStyle),
                tilePadding: EdgeInsets.zero,
                children: [
                  ...{
                    "Monthly Rental": "RM 1200",
                    "Security Deposit": "RM 200",
                    "Utility Deposit": "RM 200",
                  }.entries.map(
                    (entry) {
                      return KeyValueRow(
                        title: entry.key,
                        titleFlex: _ckFlex,
                        description: entry.value,
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
                title: Text('Landlord Details', style: _cLabelStyle),
                tilePadding: EdgeInsets.zero,
                children: [
                  ...{
                    "landlord ID": "324153",
                    "Landlord Name": "Shaidul Islma",
                    "Mobile Number": "+60 035628-2952 ",
                    "Tenant Email": "shaidul@gmail.com",
                  }.entries.map(
                    (entry) {
                      return KeyValueRow(
                        title: entry.key,
                        titleFlex: _ckFlex,
                        description: entry.value,
                        descriptionFlex: _cVFlex,
                      );
                    },
                  )
                ],
              ),

              // Rent Agreement PDF
              const SizedBox.square(dimension: 16),
              Text(
                'Download Rent Agreement',
                style: _cLabelStyle,
              ),
              const SizedBox.square(dimension: 12),
              DecoratedBox(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  border: Border.all(
                    color: _theme.colorScheme.secondary.withValues(alpha: 0.25),
                  ),
                ),
                child: ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 8),
                  visualDensity: const VisualDensity(
                    horizontal: -4,
                    vertical: -4,
                  ),
                  leading: Image.asset(
                    'assets/icons/acrobat_pdf.png',
                    height: 34,
                    width: 34,
                  ),
                  title: const Text('Rent Agreement'),
                  subtitle: const Text('Pdf'),
                  trailing: IconButton.filledTonal(
                    onPressed: () {},
                    iconSize: 18,
                    style: IconButton.styleFrom(
                      backgroundColor: _theme.colorScheme.primary.withValues(
                        alpha: 0.20,
                      ),
                      foregroundColor: _theme.colorScheme.primary,
                    ),
                    icon: const Icon(FeatherIcons.download),
                  ),
                ),
              ),
              const SizedBox.square(dimension: 8),
              Text.rich(
                TextSpan(
                  children: [
                    WidgetSpan(
                      alignment: PlaceholderAlignment.middle,
                      child: SizedBox.fromSize(
                        size: Size.square(20.fH),
                        child: Icon(
                          Icons.check_box,
                          color: _theme.colorScheme.primary,
                        ),
                      ).fMarginOnly(right: 8),
                    ),
                    TextSpan(
                      text: 'Accepted ',
                      recognizer: TapGestureRecognizer()..onTap = () => (),
                    ),
                    TextSpan(
                      text: 'Terms & Conditions',
                      style: _theme.textTheme.bodyMedium
                          ?.copyWith(color: _theme.colorScheme.primary),
                      recognizer: TapGestureRecognizer()..onTap = () => (),
                    )
                  ],
                ),
                style: _theme.textTheme.bodyMedium?.copyWith(
                  color: _theme.colorScheme.secondary,
                ),
              ),
              const SizedBox.square(dimension: 16),
              Text.rich(
                TextSpan(
                  text: 'Note: ',
                  children: [
                    TextSpan(
                      text:
                          'Please download and read the agreement. Please send the signed agreement to landlord via WhatsApp or email.',
                      style: TextStyle(
                        color: _theme.colorScheme.secondary,
                      ),
                    ),
                  ],
                ),
                style: _theme.textTheme.bodyLarge,
              ),
              const SizedBox.square(dimension: 12),
              Text.rich(
                TextSpan(
                  text: 'Note: ',
                  children: [
                    TextSpan(
                      text:
                          'Landlord approves the application, when the tenant pays the security, utility, and one-month advance rental payment.',
                      style: TextStyle(
                        color: _theme.colorScheme.secondary,
                      ),
                    ),
                  ],
                ),
                style: _theme.textTheme.bodyLarge,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: status == ApplicationStatus.approved
          ? Expanded(
              child: SizedBox(
                height: 50,
                child: OutlinedButton(
                  onPressed: () => (status) {},
                  style: CustomButtonStyles.destructiveOutline(),
                  child: const Text(
                    'Cancel Renting',
                  ),
                ),
              ),
            ).fMarginLTRB(24, 16, 24, 16)
          : ScaffoldBottomNavWrapper(
              child: Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 50,
                      child: ElevatedButton.icon(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xff47E158)),
                        icon: const Icon(Bootstrap.whatsapp,
                            size: 16, color: Colors.white),
                        label: const Text('Whatsapp'),
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: SizedBox(
                      height: 50,
                      child: ElevatedButton.icon(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xff017EFA)),
                        icon: const Icon(Icons.email_outlined,
                            size: 20, color: Colors.white),
                        label: const Text('Email'),
                      ),
                    ),
                  ),
                ],
              ).fMarginLTRB(24, 16, 24, 16),
            ),
    );
  }

  Future<void> _handleCancel(BuildContext ctx) async {
    final _reasonController = TextEditingController();

    final _result = await showDialog<bool>(
      context: ctx,
      barrierDismissible: false,
      builder: (popContext) {
        return DescriptionTakerDialog(
          dialogTitle: 'Why are you rejecting this application?',
          controller: _reasonController,
          fieldDecoration: const InputDecoration(
            labelText: 'Enter Reason',
            hintText:
                'Lorem ipsum dolor sit amet, cons ectetur adipiscing elit.',
          ),
          validator: (value) {
            if (value == null || value.trim().isEmpty) {
              return 'Please enter a reason.';
            }
            return null;
          },
        );
      },
    );

    print(_result);
  }

  Widget _buildFeature({
    required String feature,
    Color? iconColor,
    TextStyle? style,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(Bootstrap.check2_circle, color: iconColor, size: 18),
        const SizedBox.square(dimension: 4),
        Flexible(child: Text(feature, style: style)),
      ],
    );
  }
}
