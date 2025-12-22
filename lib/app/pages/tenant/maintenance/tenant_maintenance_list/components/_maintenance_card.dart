import 'package:flutter/material.dart';

import '../../../../../../i18n/strings.g.dart';
import '../../../../../core/core.dart';
import '../../../../../data/models/models.dart' show Maintenance;

class MaintenanceCard extends StatelessWidget {
  const MaintenanceCard({
    super.key,
    required this.data,
    this.onTap,
  });

  final Maintenance data;
  final void Function(int id)? onTap;

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);

    final _status = MaintenanceStatus.fromString(data.status);

    return InkWell(
      onTap: () => onTap?.call(data.id!),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: _theme.colorScheme.primaryContainer,
          border: Border.all(
            color: _theme.colorScheme.outline.withValues(alpha: 0.15),
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 10,
          children: [
            // Image
            Flexible(
              flex: 2,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: SizedBox.square(
                  dimension: 66,
                  child: CustomNetworkImage(
                    url: data.property?.coverImage?.firstOrNull?.remote,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),

            // Info
            Expanded(
              flex: 8,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 1.5,
                children: [
                  // Property Title
                  Text(
                    data.property?.propertyDetail?.propertyInfo
                            ?.propertyTitle ??
                        'N/A',
                    style: _theme.textTheme.bodyLarge?.copyWith(
                      fontWeight: FontWeight.w500,
                    ),
                  ),

                  // Maintenance Title
                  Text(
                    data.title ?? 'N/A',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: _theme.textTheme.bodyMedium?.copyWith(
                      color: _theme.colorScheme.secondary,
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          "${context.t.common.date}: ${data.createdAt?.formatDate() ?? 'N/A'}",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: _theme.textTheme.bodyMedium?.copyWith(
                            color: _theme.colorScheme.secondary,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          _status.label(context),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.end,
                          style: _theme.textTheme.bodyMedium?.copyWith(
                            color: _status.color,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
