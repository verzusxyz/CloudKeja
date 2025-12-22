import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

export '_common_dropdowns.dart';
export '_facility_amenity_field.dart';
export '_image_preview_card.dart';

class StepTitle extends StatelessWidget {
  const StepTitle(this.title, {super.key});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.w600,
          ),
    );
  }
}

class YearFormField extends StatelessWidget {
  const YearFormField({
    super.key,
    this.decoration,
    this.controller,
    this.textInputAction,
    this.validator,
    this.readOnly = true,
  });
  final InputDecoration? decoration;
  final TextEditingController? controller;
  final TextInputAction? textInputAction;
  final String? Function(String? value)? validator;
  final bool readOnly;

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);

    return TextFormField(
      decoration: decoration?.copyWith(
        suffixIcon: IconButton(
          onPressed: () async => await _showYearPicker(context),
          icon: Icon(IconlyLight.calendar),
          color: _theme.colorScheme.secondary,
        ),
      ),
      keyboardType: TextInputType.number,
      textInputAction: textInputAction,
      readOnly: readOnly,
      controller: controller,
      validator: validator,
      onTap: () async {
        if (!readOnly) return;

        await _showYearPicker(context);
      },
    );
  }

  static const firstYear = 1950;
  static const lastYear = 2050;
  Future<void> _showYearPicker(BuildContext context) async {
    const defaultYear = 2020;

    DateTime selectedYear = controller?.text.isNotEmpty == true
        ? DateTime(int.tryParse(controller!.text) ?? defaultYear)
        : DateTime(defaultYear);

    final _result = await showDialog<int>(
      context: context,
      builder: (popContext) => Dialog(
        child: ConstrainedBox(
          constraints: BoxConstraints.tightFor(
            height: MediaQuery.sizeOf(context).height * 0.5,
          ),
          child: YearPicker(
            firstDate: DateTime(firstYear),
            lastDate: DateTime(lastYear),
            selectedDate: selectedYear,
            onChanged: (v) => Navigator.of(popContext).pop(v.year),
          ),
        ),
      ),
    );

    if (_result != null) {
      controller?.text = _result.toString();
    }
  }
}
