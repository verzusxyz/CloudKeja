import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:recase/recase.dart';

import '../../../i18n/strings.g.dart';
import '../../core/core.dart';

class NumberFormField extends StatelessWidget {
  const NumberFormField({
    super.key,
    this.decoration,
    this.controller,
    this.textInputAction,
    this.validator,
    this.maxLength = 16,
  });

  final InputDecoration? decoration;
  final TextEditingController? controller;
  final TextInputAction? textInputAction;
  final String? Function(String? value)? validator;
  final int maxLength;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: decoration?.copyWith(counterText: ''),
      keyboardType: TextInputType.numberWithOptions(
        decimal: true,
      ),
      textInputAction: textInputAction,
      validator: validator,
      inputFormatters: [
        TextInputFormatter.withFunction((oldValue, newValue) {
          final text = newValue.text;
          if (text.isEmpty) return newValue;

          if (!RegExp(r'^(\d+)?\.?(\d+)?$').hasMatch(text)) {
            return oldValue;
          }

          final parts = text.split('.');
          if (parts.length > 1) {
            final truncated =
                '${parts[0]}.${parts[1].substring(0, min(2, parts[1].length))}';
            return TextEditingValue(
              text: truncated,
              selection: TextSelection.collapsed(offset: truncated.length),
            );
          }
          return newValue;
        }),
      ],
      maxLength: maxLength,
    );
  }

  static String? nonZeroRequired(String? value, {String? errorText}) {
    if (value == null || value.isEmpty) {
      // return errorText ?? "Please enter a value";
      return errorText ??
          t.form.anyField.errors.required(label: t.common.value).sentenceCase;
    }
    if (value.plainNumber <= 0) {
      // return 'Value must be greater than zero.';
      return t.exceptions
          .valueMustBeGreaterThanZero(value: t.common.value)
          .sentenceCase;
    }

    return null;
  }
}

extension NumberEditingUtils on TextEditingController {
  num? get getNumber => num.tryParse(text.trim());

  void setNumber(num? value) => text = value?.toString() ?? '';
}
