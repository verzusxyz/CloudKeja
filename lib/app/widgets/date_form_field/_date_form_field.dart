import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateFormField extends StatelessWidget {
  const DateFormField({
    super.key,
    this.controller,
    this.decoration,
    this.dateFormat,
    this.validator,
    this.enabled = true,
  });
  final TextEditingController? controller;
  final InputDecoration? decoration;
  final CustomDateFormat? dateFormat;
  final String? Function(String? value)? validator;
  final bool enabled;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      enabled: enabled,
      controller: controller,
      readOnly: true,
      decoration: decoration,
      onTap: enabled ? () async => await _handleDatePicker(context) : null,
      validator: validator,
    );
  }

  Future<void> _handleDatePicker(BuildContext context) async {
    DateTime? _initialDate = DateTime.now();
    if (controller?.text != null && controller!.text.isNotEmpty) {
      _initialDate = _parseDate(controller!.text);
    }

    final _result = await showDatePicker(
      context: context,
      initialDate: _initialDate,
      firstDate: DateTime(1950),
      lastDate: DateTime(2050),
    );

    if (_result != null) {
      controller?.text = DateFormat(
        dateFormat?.pattern ?? 'dd MMM, yyyy',
      ).format(_result);
    }
  }

  DateTime? _parseDate(String dateString) {
    final RegExp regex = RegExp(
      r'(?:(\d{1,2})\s+([A-Za-z]{3}),\s+(\d{4}))|'
      r'(?:(\d{1,2})[-/](\d{1,2})[-/](\d{4}))|'
      r'(?:(\d{4})[-/](\d{1,2})[-/](\d{1,2}))',
    );

    final match = regex.firstMatch(dateString);
    if (match != null) {
      if (match.group(1) != null) {
        final day = int.parse(match.group(1)!);
        final month = DateFormat('MMM').parse(match.group(2)!).month;
        final year = int.parse(match.group(3)!);
        return DateTime(year, month, day);
      } else if (match.group(4) != null) {
        final day = int.parse(match.group(4)!);
        final month = int.parse(match.group(5)!);
        final year = int.parse(match.group(6)!);
        return DateTime(year, month, day);
      } else if (match.group(7) != null) {
        final year = int.parse(match.group(7)!);
        final month = int.parse(match.group(8)!);
        final day = int.parse(match.group(9)!);
        return DateTime(year, month, day);
      }
    }

    return null;
  }
}

typedef CustomDateFormat = DateFormat;
