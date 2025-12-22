import 'package:flutter/material.dart';
import 'package:intl/intl.dart' as intl;

class OverviewContainer extends StatelessWidget {
  const OverviewContainer({
    super.key,
    required this.label,
    required this.value,
    this.alignment = OverviewAlignment.start,
    this.color,
    this.isCurrency = false,
    this.decimalDigits = 0,
    this.locale,
    this.customCurrencySymbol,
  });

  final String label;
  final num value;
  final OverviewAlignment alignment;
  final Color? color;
  final bool isCurrency;
  final int decimalDigits;
  final String? locale;
  final String? customCurrencySymbol;

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);
    return Container(
      alignment: alignment.alignment,
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: alignment.crossAxisAlignment,
        mainAxisSize: MainAxisSize.min,
        children: [
          Flexible(
            child: Text(
              getValue(),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: _theme.textTheme.titleLarge?.copyWith(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const SizedBox.square(dimension: 8),
          Flexible(
            child: Text(
              label,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: _theme.textTheme.bodyMedium?.copyWith(
                color: const Color(0xff1F1F1F),
                fontSize: 13,
              ),
            ),
          ),
        ],
      ),
    );
  }

  String getValue() {
    if (isCurrency) {
      if (customCurrencySymbol != null) {
        return intl.NumberFormat.currency(
          symbol: customCurrencySymbol,
          decimalDigits: decimalDigits,
        ).format(value);
      } else {
        return intl.NumberFormat.simpleCurrency(
          decimalDigits: decimalDigits,
          locale: locale,
        ).format(value);
      }
    }
    return value.toString();
  }
}

enum OverviewAlignment {
  start,
  center,
  end;

  CrossAxisAlignment get crossAxisAlignment {
    return switch (this) {
      start => CrossAxisAlignment.start,
      end => CrossAxisAlignment.end,
      center => CrossAxisAlignment.center,
    };
  }

  AlignmentGeometry get alignment {
    return switch (this) {
      start => AlignmentDirectional.centerStart,
      center => AlignmentDirectional.center,
      end => AlignmentDirectional.centerEnd,
    };
  }
}
