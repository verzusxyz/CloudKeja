import 'package:flutter/material.dart';

abstract class CustomButtonStyles {
  static ButtonStyle destructiveOutline({
    Color? borderColor,
    Color? foregroundColor,
  }) {
    final _color = borderColor ?? Colors.red;

    return OutlinedButton.styleFrom(
      side: BorderSide(
        color: _color,
        strokeAlign: BorderSide.strokeAlignOutside,
        width: 1.25,
      ),
      foregroundColor: foregroundColor ?? _color,
    );
  }
}
