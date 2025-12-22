import 'package:flutter/material.dart';

extension OverlayExtension on Widget {
  Widget overlap({
    bool showWhen = false,
    bool ignorePointer = true,
  }) {
    if (!showWhen) return this;
    return IgnorePointer(
      ignoring: ignorePointer,
      child: ColorFiltered(
        colorFilter: ColorFilter.mode(
          Colors.white.withValues(alpha: 0.40),
          BlendMode.dstIn,
        ),
        child: this,
      ),
    );
  }
}
