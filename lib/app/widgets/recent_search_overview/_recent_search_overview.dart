import 'package:fdevs_fitkit/fdevs_fitkit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

import '../../core/core.dart';

class RecentSearchOverview extends StatelessWidget {
  const RecentSearchOverview({
    super.key,
    this.searchHistory = const [],
    this.onTap,
  });
  final List<String> searchHistory;
  final ValueChanged<String>? onTap;

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);

    return Card(
      margin: EdgeInsets.zero,
      color: _theme.colorScheme.primaryContainer,
      elevation: 1.25,
      child: Column(
        children: [
          // Header
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Recent Searches',
                style: _theme.textTheme.bodyLarge?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox.square(
                dimension: 52,
                child: Image.asset(
                  DAppImages.azSearchShape,
                  fit: BoxFit.cover,
                ),
              )
            ],
          ).fMarginLTRB(16, 6, 0, 8),

          // Search List
          SizedBox.fromSize(
            size: Size.fromHeight(75),
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              itemCount: searchHistory.length,
              itemBuilder: (_, index) {
                final item = searchHistory[index];
                return GestureDetector(
                  onTap: () => onTap?.call(searchHistory[index]),
                  child: SizedBox.fromSize(
                    size: Size.fromWidth(165),
                    child: _buildRecentSearchItem(item),
                  ),
                );
              },
              separatorBuilder: (_, __) {
                return const SizedBox.square(dimension: 12);
              },
            ),
          ),
          const SizedBox.square(dimension: 16),
        ],
      ),
    );
  }

  Widget _buildRecentSearchItem(String title) {
    return Builder(
      builder: (context) {
        final _theme = Theme.of(context);

        return Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: _theme.colorScheme.secondary.withValues(alpha: 0.15),
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          padding: const EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(
                    FeatherIcons.search,
                    size: 20,
                    color: _theme.colorScheme.primary,
                  ),
                  const SizedBox.square(dimension: 4),
                  Text(
                    'Search results',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: _theme.textTheme.bodyLarge?.copyWith(
                      color: _theme.colorScheme.primary,
                    ),
                  ),
                ],
              ),
              const SizedBox.square(dimension: 2),
              Flexible(
                child: Text(
                  title,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: _theme.textTheme.bodySmall?.copyWith(
                    color: _theme.colorScheme.secondary,
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
