import 'package:flutter/material.dart';
import 'package:recase/recase.dart';

import '../../../../../../i18n/strings.g.dart';

class OneToTenDropdown extends StatelessWidget {
  const OneToTenDropdown({
    super.key,
    required this.labelText,
    required this.hintText,
    this.isRequired = true,
    this.value,
    required this.onChanged,
  });
  final String labelText;
  final String hintText;

  final bool isRequired;
  final String? value;
  final void Function(String? value) onChanged;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String?>(
      hint: Text(hintText),
      decoration: InputDecoration(labelText: labelText),
      isExpanded: true,
      menuMaxHeight: 300,
      value: value,
      items: List.generate(
        10,
        (i) {
          final index = (i + 1).toString();
          return DropdownMenuItem(
            value: index,
            child: Text(index),
          );
        },
      ),
      onChanged: onChanged,
      validator: (value) => isRequired && (value == null || value.isEmpty)
          // ? "Please select the number of ${labelText.toLowerCase()}"
          ? context.t.exceptions
              .oneToTenRequiredField(value: labelText)
              .sentenceCase
          : null,
    );
  }

  // static String bedroomLabel = 'Bedroom';
  static String bedroomLabel(BuildContext ctx) => ctx.t.common.bedrooms;
  // static String bedroomHint = 'Select ${bedroomLabel.toLowerCase()}';
  static String bedroomHint(BuildContext ctx) =>
      ctx.t.form.anyDropdown.hint(label: bedroomLabel(ctx)).sentenceCase;

  // static String bathroomLabel = 'Bathroom';
  static String bathroomLabel(BuildContext ctx) => ctx.t.common.bathrooms;
  // static String bathroomHint = 'Select ${bathroomLabel.toLowerCase()}';
  static String bathroomHint(BuildContext ctx) =>
      ctx.t.form.anyDropdown.hint(label: bathroomLabel(ctx)).sentenceCase;
}

class FurnishingsDropdown extends StatelessWidget {
  const FurnishingsDropdown({
    super.key,
    this.isRequired = true,
    this.value,
    required this.onChanged,
  });

  final bool isRequired;
  final String? value;
  final void Function(String? value) onChanged;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String?>(
      // hint: const Text("Select furnishings"),
      hint: Text(
        context.t.form.anyDropdown
            .hint(label: context.t.common.furnishings)
            .sentenceCase,
      ),
      decoration: InputDecoration(
        // labelText: "Furnishings",
        labelText: context.t.form.anyDropdown
            .label(label: context.t.common.furnishings),
      ),
      isExpanded: true,
      menuMaxHeight: 300,
      value: value,
      items: [
        ...{
          "Fully Furnished": context.t.enums.furnishings.fullyFurnished,
          "Partially Furnished": context.t.enums.furnishings.partiallyFurnished,
          "Not Furnished": context.t.enums.furnishings.notFurnished,
        }.entries.map(
              (fur) => DropdownMenuItem(
                value: fur.key,
                child: Text(fur.value),
              ),
            )
      ],
      onChanged: onChanged,
      validator: (value) => isRequired && (value == null || value.isEmpty)
          // ? "Please select furnishings."
          ? context.t.form.anyDropdown.errors
              .required(label: context.t.common.furnishings)
              .sentenceCase
          : null,
    );
  }
}
