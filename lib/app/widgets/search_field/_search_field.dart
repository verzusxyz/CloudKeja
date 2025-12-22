import 'package:fdevs_fitkit/fdevs_fitkit.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:searchfield/searchfield.dart';

import '../../../i18n/strings.g.dart';
import '../../core/core.dart';

typedef CustomSearchFieldItem<T> = SearchFieldListItem<T>;

abstract class CustomSearchField {
  static Widget placeholder({void Function()? onTap}) {
    return Builder(
      builder: (context) {
        final _theme = Theme.of(context);

        return GestureDetector(
          onTap: onTap,
          child: Container(
            alignment: Alignment.bottomCenter,
            margin: const EdgeInsets.symmetric(
              horizontal: 24,
            ),
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
            ),
            child: InputDecorator(
              textAlignVertical: TextAlignVertical.center,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                prefixIcon: const Icon(Icons.search),
                suffixIcon: filterButton(
                  onPressed: onTap,
                ).fMarginSymmetric(horizontal: 8, vertical: 4),
                border: InputBorder.none,
                enabledBorder: InputBorder.none,
              ),
              child: Text(
                // 'Search anything in Idaman Sewa...',
                context.t.common
                    .searchHintWithAppName(appName: AppConfig.appName),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: _theme.inputDecorationTheme.hintStyle,
              ),
            ),
          ),
        );
      },
    );
  }

  static Widget filterButton({
    Key? key,
    required void Function()? onPressed,
    int? appliedFilters,
  }) {
    return Builder(
      key: key,
      builder: (context) {
        final _showMore = (appliedFilters ?? 0) > 9;

        final _theme = Theme.of(context);

        return IconButton.filled(
          onPressed: onPressed,
          style: IconButton.styleFrom(
            padding: const EdgeInsets.all(8),
            visualDensity: const VisualDensity(
              horizontal: 0,
              vertical: -4,
            ),
            backgroundColor: _theme.colorScheme.primary,
            foregroundColor: _theme.colorScheme.onPrimary,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6),
            ),
          ),
          icon: Badge(
            isLabelVisible: appliedFilters != null && appliedFilters > 0,
            label: Text(
              "${_showMore ? '9+' : appliedFilters}",
              style: _theme.textTheme.labelSmall?.copyWith(
                fontWeight: FontWeight.w600,
                color: _theme.colorScheme.onPrimary,
              ),
            ),
            backgroundColor: _theme.scaffoldBackgroundColor,
            textColor: _theme.colorScheme.onPrimaryContainer,
            alignment: _showMore
                ? const Alignment(0, -1)
                : AlignmentDirectional.topEnd,
            child: const Icon(IconlyBold.filter, size: 20),
          ),
        );
      },
    );
  }

  static Widget searchField<T>({
    required List<CustomSearchFieldItem<T?>> suggestions,
    double? maxSuggestionBoxHeight,
    bool dynamicHeight = true,
    void Function()? onFilterPress,
  }) {
    final _baseDecor = CustomFieldStyles.kSearchDecoration(
      hintText: 'Search Properties',
      iconAlignment: IconAlignment.start,
    );

    return Builder(
      builder: (context) {
        return SearchField(
          suggestions: suggestions,
          maxSuggestionBoxHeight: maxSuggestionBoxHeight,
          dynamicHeight: dynamicHeight,
          searchInputDecoration: SearchInputDecoration(
            hintText: _baseDecor.hintText,
            prefixIcon: _baseDecor.prefixIcon,
            border: _baseDecor.border,
            enabledBorder: _baseDecor.enabledBorder,
            focusedBorder: _baseDecor.focusedBorder,
            suffixIcon: onFilterPress == null
                ? null
                : filterButton(onPressed: onFilterPress).fMarginAll(6),
            suffixIconConstraints: BoxConstraints.tight(Size.square(48)),
          ),
        );
      },
    );
  }
}
