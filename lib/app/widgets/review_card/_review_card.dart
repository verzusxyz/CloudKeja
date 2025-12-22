import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:intl/intl.dart' as intl;

import '../../../i18n/strings.g.dart';
import '../../core/core.dart';

class ReviewCard extends StatelessWidget {
  const ReviewCard({super.key, required this.data});
  final ReviewCardData data;

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);

    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: _theme.colorScheme.primaryContainer,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: _theme.colorScheme.secondary.withValues(alpha: 0.15),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Top Section
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // User Image
              SizedBox.square(
                dimension: 40,
                child: ClipRRect(
                  borderRadius: BorderRadiusDirectional.circular(40),
                  child: CustomNetworkImage(
                    url: data.userImage,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox.square(dimension: 10),

              // Other Info
              Flexible(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // User Name
                        Expanded(
                          child: Text(
                            data.userName,
                            style: _theme.textTheme.bodyMedium?.copyWith(
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),

                        if (data.onEdit != null)
                          InkWell(
                            onTap: data.onEdit,
                            child: Row(
                              children: [
                                Icon(
                                  FeatherIcons.edit,
                                  color: _theme.colorScheme.primary,
                                  size: 16,
                                ),
                                const SizedBox.square(dimension: 4),
                                Text(
                                  // 'Edit',
                                  context.t.common.edit,
                                  style: _theme.textTheme.bodyMedium?.copyWith(
                                    color: _theme.colorScheme.primary,
                                  ),
                                )
                              ],
                            ),
                          )
                      ],
                    ),
                    const SizedBox.square(dimension: 2),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        // Star Rating
                        Expanded(
                          child: RatingBarIndicator(
                            rating: data.rating,
                            itemCount: 5,
                            itemSize: 14,
                            unratedColor: Colors.amber,
                            itemBuilder: (context, index) {
                              final _rating = RatingWidget(
                                full: _buildIcon(Icons.star),
                                half: _buildIcon(Icons.star_half),
                                empty: _buildIcon(Icons.star_outline),
                              );

                              return index < data.rating.floor()
                                  ? _rating.full
                                  : (index == data.rating.floor() &&
                                          data.rating % 1 != 0
                                      ? _rating.half
                                      : _rating.empty);
                            },
                          ),
                        ),

                        // Review Date
                        Text(
                          data.date == null
                              ? 'N/A'
                              : intl.DateFormat('dd MMM, yyyy')
                                  .format(data.date!),
                          textAlign: TextAlign.end,
                          style: _theme.textTheme.bodySmall?.copyWith(
                            color: _theme.colorScheme.secondary,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
          const SizedBox.square(dimension: 10),

          // Description
          Text(
            data.description,
            textAlign: TextAlign.start,
            style: _theme.textTheme.bodyMedium?.copyWith(
              color: _theme.colorScheme.secondary,
            ),
          ),
        ],
      ),
    );
  }

  Icon _buildIcon(IconData data) {
    return Icon(
      data,
      color: Colors.amber,
    );
  }
}

class ReviewCardData {
  final String? userImage;
  final String userName;
  final DateTime? date;
  final double rating;
  final String description;
  final void Function()? onEdit;

  ReviewCardData({
    this.userImage,
    required this.userName,
    required this.date,
    required this.rating,
    required this.description,
    this.onEdit,
  });
}
