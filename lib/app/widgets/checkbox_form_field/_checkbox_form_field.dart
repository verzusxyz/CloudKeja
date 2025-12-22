import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../i18n/strings.g.dart';
import '../../routes/app_routes.gr.dart';

class CheckboxFormField extends FormField<bool> {
  CheckboxFormField({
    super.key,
    required Widget title,
    required bool super.initialValue,
    super.onSaved,
    super.validator,
    bool autovalidate = false,
    bool tristate = false,
  }) : super(
          autovalidateMode: autovalidate
              ? AutovalidateMode.always
              : AutovalidateMode.disabled,
          builder: (field) {
            return Builder(
              builder: (context) {
                final _theme = Theme.of(context);
                return CheckboxListTile(
                  value: field.value,
                  tristate: tristate,
                  onChanged: field.didChange,
                  title: title,
                  subtitle: field.hasError
                      ? Text(
                          field.errorText ?? '',
                          style: _theme.inputDecorationTheme.errorStyle,
                        )
                      : null,
                  controlAffinity: ListTileControlAffinity.leading,
                  visualDensity: const VisualDensity(
                    horizontal: -4,
                    vertical: -4,
                  ),
                  contentPadding: EdgeInsets.zero,
                );
              },
            );
          },
        );
}

class TermsConditionsFormField extends StatelessWidget {
  const TermsConditionsFormField({super.key, this.initialValue = false});
  final bool initialValue;

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);
    return CheckboxFormField(
      initialValue: initialValue,
      title: Text.rich(
        context.t.common.acceptTermsConditions(
          toc: (toc) {
            return TextSpan(
              // text: 'Terms & Conditions',
              text: toc,
              style: TextStyle(
                color: _theme.colorScheme.primary,
              ),
              recognizer: TapGestureRecognizer()
                ..onTap = () async {
                  // ignore: unused_local_variable
                  final _result = await context.router.push(
                    TermsConditionsRoute(),
                  );
                },
            );
          },
        ),
        style: _theme.textTheme.bodyMedium?.copyWith(
          fontWeight: FontWeight.w600,
          color: _theme.colorScheme.secondary,
        ),
      ),
      validator: (value) {
        if (value == false) {
          return 'Please review the terms & conditions';
        }
        return null;
      },
    );
  }
}
