import 'package:flutter/material.dart';

import '../../../i18n/strings.g.dart';

abstract class RetryButtons {
  // Text Span
  static TextSpan inlineText(
    Object error, {
    required void Function() onRetry,
  }) {
    return TextSpan(
      text: error.toString(),
      children: [
        WidgetSpan(
          alignment: PlaceholderAlignment.middle,
          child: TextButton.icon(
            onPressed: onRetry,
            // label: const Text('Retry'),
            label: Builder(builder: (context) => Text(context.t.action.retry)),
            icon: Icon(Icons.refresh),
            style: TextButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 2),
              visualDensity: const VisualDensity(
                horizontal: -4,
                vertical: -4,
              ),
            ),
          ),
        ),
      ],
    );
  }

  // ScrollView
  static Widget scrollView(
    Object error, {
    required void Function() onRetry,
    Widget Function(Object error)? builder,
  }) {
    return Builder(
      builder: (context) => Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          builder?.call(error) ??
              Text(
                error.toString(),
                textAlign: TextAlign.center,
              ),
          TextButton.icon(
            onPressed: onRetry,
            icon: Icon(Icons.refresh),
            // label: const Text('Retry'),
            label: Text(context.t.action.retry),
          ),
        ],
      ),
    );
  }
}
