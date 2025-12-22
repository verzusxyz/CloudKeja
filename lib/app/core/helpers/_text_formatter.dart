import 'package:flutter/services.dart';

class NumberCommaFormatter extends TextInputFormatter {
  NumberCommaFormatter({this.decimalDigits = 2});
  final int decimalDigits;

  @override
  TextEditingValue formatEditUpdate(oldValue, newValue) {
    final cleanText = newValue.text.replaceAll(RegExp(r'[^\d.]'), '');

    final parts = cleanText.split('.');

    if (parts.length > 2 || cleanText.startsWith('.')) {
      return oldValue;
    }

    if (parts.length > 1) {
      parts[1] = parts[1].length > decimalDigits
          ? parts[1].substring(0, decimalDigits)
          : parts[1];
    }

    final formattedText = parts.join('.');
    final thousandSeparatedText = _formatNumber(formattedText);

    return newValue.copyWith(
      text: thousandSeparatedText,
      selection: TextSelection.collapsed(
        offset: thousandSeparatedText.length,
      ),
    );
  }

  String _formatNumber(String text) {
    final regExp = RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))');
    return text.replaceAllMapped(regExp, (match) => '${match[1]},');
  }
}
