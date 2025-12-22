import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart' as intl;

import '../../services/services.dart';

extension NumberFormatterExtension on num {
  bool get _isDouble => this != toInt();

  String quickCurrency({
    String? customCurrency,
    int decimalDigits = 2,
    String? locale,
  }) {
    final _symbol =
        customCurrency ?? GlobalAppLocaleHolder.notifier.value.currencySymbol;
    // customCurrency ?? intl.NumberFormat.simpleCurrency().currencySymbol;
    return intl.NumberFormat.currency(
      symbol: _symbol,
      decimalDigits: _isDouble ? decimalDigits : 0,
      locale: locale,
    ).format(this);
  }

  String compactCurrency({
    String? customCurrency,
    int decimalDigits = 2,
    String? locale,
  }) {
    final symbol =
        customCurrency ?? GlobalAppLocaleHolder.notifier.value.currencySymbol;
    // intl.NumberFormat.simpleCurrency(locale: locale).currencySymbol;

    return intl.NumberFormat.compactCurrency(
      locale: locale,
      symbol: symbol,
      decimalDigits: _isDouble ? decimalDigits : 0,
    ).format(this);
  }

  String compactNumber({
    bool explicitSign = false,
    String? locale,
  }) {
    return intl.NumberFormat.compact(
      explicitSign: explicitSign,
      locale: locale,
    ).format(this);
  }

  String commaSeparated({
    int decimalDigits = 2,
    String? locale,
  }) {
    return intl.NumberFormat.decimalPatternDigits(
      decimalDigits: _isDouble ? decimalDigits : 0,
      locale: locale,
    ).format(this);
  }
}

extension DateFormatterExtension on DateTime {
  String formatDate({String? pattern = 'dd MMM yyyy'}) {
    return intl.DateFormat(pattern).format(this);
  }

  String formatChatTimestamp() {
    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    final sentDay = DateTime(year, month, day);
    final diff = today.difference(sentDay).inDays;

    if (diff == 0) {
      return intl.DateFormat('h:mm a').format(this);
    } else if (diff == 1) {
      final weekday = intl.DateFormat('EEE').format(this).toUpperCase();
      return "$weekday at ${intl.DateFormat('h:mm a').format(this)}";
    } else {
      final monthDay = intl.DateFormat('MMM d').format(this).toUpperCase();
      return "$monthDay at ${intl.DateFormat('h:mm a').format(this)}";
    }
  }
}

extension StringFormatterExtension on String {
  num get plainNumber {
    final _num = num.tryParse(replaceAll(',', '')) ?? 0;
    return _num;
  }

  String obscure({
    int length = 0,
    bool fromEnd = true,
    int? gapCount,
    int? groupCount,
  }) {
    if (this.length <= length) return this;

    String visiblePart;
    String obscuredPart;

    if (fromEnd) {
      visiblePart = substring(this.length - length);
      obscuredPart = '*' * (this.length - length);
    } else {
      visiblePart = substring(0, length);
      obscuredPart = '*' * (this.length - length);
    }

    if (groupCount != null && groupCount > 0) {
      visiblePart = _groupWithGap(visiblePart, groupCount, gapCount);
      obscuredPart = _groupWithGap(obscuredPart, groupCount, gapCount);
    }

    return obscuredPart + visiblePart;
  }

  String _groupWithGap(String str, int groupCount, int? gapCount) {
    List<String> groups = [];
    for (int i = 0; i < str.length; i += groupCount) {
      groups.add(
        str.substring(
            i, i + groupCount > str.length ? str.length : i + groupCount),
      );
    }

    String gap = ' ' * (gapCount ?? 1);
    return groups.join(gap);
  }
}

extension DemoCheckExtension<T> on AsyncValue<T> {
  bool get isAnyLoading => isLoading || isReloading || isRefreshing;
}
