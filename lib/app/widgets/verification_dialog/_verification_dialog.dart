import 'package:fdevs_fitkit/fdevs_fitkit.dart';
import 'package:flutter/material.dart';

import '../../../i18n/strings.g.dart';

class VerificationDialog extends StatelessWidget {
  const VerificationDialog({
    super.key,
    this.title,
    this.description,
    this.email,
  });
  final String? title;
  final String? description;
  final String? email;

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      insetPadding: EdgeInsets.all(24.fW),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            // title ?? 'Verify Your Email',
            title ?? context.t.prompt.verificationDialog.title,
            style: _theme.textTheme.headlineSmall?.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox.square(dimension: 8),
          Text.rich(
            TextSpan(
              // text: description ??
              //     'We have sent a verification code email ${email == null ? '.' : ' to '}',
              text: description ??
                  (email == null
                      ? context.t.prompt.verificationDialog.message
                      : context.t.prompt.verificationDialog
                          .messageWithEmail(email: email)),
              children: description == null && email == null
                  ? []
                  : [
                      if (email != null)
                        TextSpan(
                          text: email?.toString(),
                          style: TextStyle(
                            color: _theme.colorScheme.onPrimaryContainer,
                          ),
                        ),
                    ],
            ),
            textAlign: TextAlign.center,
            style: _theme.textTheme.bodyLarge?.copyWith(
              color: _theme.colorScheme.secondary,
            ),
          ),
        ],
      ).fMarginAll(24.fW),
    );
  }
}
