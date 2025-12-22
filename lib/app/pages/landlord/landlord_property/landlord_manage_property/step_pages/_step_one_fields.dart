import 'package:flutter/material.dart';
import 'package:recase/recase.dart';

import '../../../../../../i18n/strings.g.dart';
import '../../../../../core/core.dart';
import '../components/components.dart';

class AddPropertyStepOne extends StatelessWidget {
  const AddPropertyStepOne({
    super.key,
    required this.value,
    required this.onChanged,
  });
  final int? value;
  final void Function(int? value) onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        StepTitle(
          // 'What Would you like to Post?',
          context.t.common.whatWouldYouLikeToPost,
        ),
        const SizedBox.square(dimension: 16),

        // Categories
        DropdownButtonFormField<int?>(
          // hint: const Text('Select a category.'),
          hint: Text(
            context.t.form.anyDropdown
                .hint(label: context.t.common.category)
                .sentenceCase,
          ),
          decoration: InputDecoration(
            // labelText: 'Select a Category',
            labelText: context.t.form.anyDropdown
                .label(label: context.t.common.category),
          ),
          isExpanded: true,
          value: value,
          items: [
            ...PropertyType.values.map((category) {
              return DropdownMenuItem(
                value: category.value,
                child: Text(category.label(context)),
              );
            })
          ],
          onChanged: onChanged,
          validator: (value) {
            if (value == null) {
              // return 'Please select a category';
              return context.t.form.anyDropdown.errors
                  .required(label: context.t.common.category)
                  .sentenceCase;
            }
            return null;
          },
        ),
      ],
    );
  }
}
