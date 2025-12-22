import 'package:fdevs_fitkit/fdevs_fitkit.dart';
import 'package:flutter/material.dart';

import '../../../../core/core.dart';

class CurrencySackListTile extends StatelessWidget {
  final num value;
  final String label;
  final Color? color;

  const CurrencySackListTile({
    super.key,
    required this.value,
    required this.label,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);
    final _amnt = value.quickCurrency();

    return Tooltip(
      message: '$label:$_amnt',
      preferBelow: false,
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: _theme.colorScheme.primaryContainer,
          border: Border.all(
            color: _theme.colorScheme.secondary.withValues(alpha: 0.15),
          ),
        ),
        child: ListTile(
          visualDensity: const VisualDensity(
            horizontal: -4,
            vertical: -4,
          ),
          contentPadding: const EdgeInsets.symmetric(horizontal: 8),
          horizontalTitleGap: 16,
          leading: CircleAvatar(
            backgroundColor: color,
            child: Image.asset(
              'assets/icons/currency_sack.png',
            ).fPaddingAll(8),
          ),
          title: Text(
            _amnt,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: _theme.textTheme.titleMedium?.copyWith(
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
          subtitle: Text(
            label,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: _theme.textTheme.bodyMedium?.copyWith(
              color: _theme.colorScheme.secondary,
            ),
          ),
        ),
      ),
    );
  }
}
