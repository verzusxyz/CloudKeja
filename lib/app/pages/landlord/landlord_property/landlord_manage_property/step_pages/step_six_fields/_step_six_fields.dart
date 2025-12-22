import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

import '../../../../../../../i18n/strings.g.dart';
import '../../../../../../core/core.dart';
import '../../../../../../widgets/widgets.dart';
import '../../components/components.dart';

class AddPropertyStepSixFields extends StatelessWidget {
  const AddPropertyStepSixFields({
    super.key,
    this.status = PropertyStatus.pending,
    this.statusMessage,
    required this.cardData,
  });
  final PropertyStatus status;
  final PropertyCardData cardData;
  final String? statusMessage;

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      spacing: 20,
      children: [
        // Title
        StepTitle(
          // "Thank you for posting on Idaman Sewa!",
          context.t.common
              .thankYouForPostingProperty(appName: AppConfig.appName),
        ),

        // Status Message
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: _theme.colorScheme.primary.withValues(alpha: 0.1),
            borderRadius: BorderRadius.circular(4),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                IconlyLight.info_circle,
                color: _theme.colorScheme.primary,
              ),
              const SizedBox.square(dimension: 4),
              Expanded(
                child: Text(
                  statusMessage ?? 'N/A',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: _theme.textTheme.bodyMedium?.copyWith(
                    color: _theme.colorScheme.secondary,
                  ),
                ),
              ),
            ],
          ),
        ),

        // Property Overview
        HorizontalPropertyCard.landlord(
          propertyStatus: status,
          data: cardData,
          isActive: false,
        )
      ],
    );
  }
}
