import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

import '../theme/_app_colors.dart';

abstract class CustomFieldStyles {
  static InputDecoration kSearchDecoration({
    String? hintText,
    IconAlignment iconAlignment = IconAlignment.end,
  }) {
    OutlineInputBorder _searchBorder([
      Color? borderColor,
    ]) {
      return OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(
          color: borderColor ?? DAppColors.kBorder.withValues(alpha: 0.5),
          width: 1,
        ),
      );
    }

    const _icon = Icon(
      FeatherIcons.search,
      color: DAppColors.kSecondary,
      size: 20,
    );

    return InputDecoration(
      filled: true,
      fillColor: Colors.white,
      hintText: hintText,
      suffixIcon: iconAlignment == IconAlignment.end ? _icon : null,
      prefixIcon: iconAlignment == IconAlignment.start ? _icon : null,
      enabledBorder: _searchBorder(),
      focusedBorder: _searchBorder(DAppColors.kPrimary),
    );
  }
}
