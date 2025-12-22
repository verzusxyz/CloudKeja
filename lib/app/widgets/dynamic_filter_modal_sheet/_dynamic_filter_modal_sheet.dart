import 'package:fdevs_fitkit/fdevs_fitkit.dart';
import 'package:flutter/material.dart';

import '../../../i18n/strings.g.dart';
import '../../core/core.dart';
import '../widgets.dart';

//------------------------------Widgets & Usages------------------------------//
class _FilterBottomModalSheet<R, T> extends StatefulWidget {
  _FilterBottomModalSheet({
    super.key,
    this.selectedFilters,
    required this.filters,
  }) : assert(filters.isNotEmpty, "`filters cannot be empty`");

  final FilterValue<R, T>? selectedFilters;
  final List<FilterModalData<R, T>> filters;

  @override
  State<_FilterBottomModalSheet<R, T>> createState() =>
      _FilterBottomModalSheetState<R, T>();
}

class _FilterBottomModalSheetState<R, T>
    extends State<_FilterBottomModalSheet<R, T>> {
  final FilterValue<R, T> values = {};

  @override
  void initState() {
    super.initState();

    values
      ..clear()
      ..addEntries(
        widget.filters.map((entry) {
          return MapEntry(
            entry.key,
            widget.selectedFilters?[entry.key] ?? entry.value,
          );
        }),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints.tightFor(width: double.maxFinite),
      child: Column(
        children: [
          // Header
          ListTile(
            // title: const Text('Filter'),
            title: Text(context.t.common.filter),
            trailing: const CloseButton(),
            visualDensity: const VisualDensity(horizontal: -4),
            contentPadding: const EdgeInsetsDirectional.only(start: 20, end: 8),
          ),
          const Divider(height: 0),

          // Filters
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(20),
              child: Column(
                spacing: 16,
                children: widget.filters.map((filter) {
                  return filter.builder(
                    context,
                    initialValue: values[filter.key],
                    onChanged: (nV) => setState(
                      () => values[filter.key] = nV,
                    ),
                  );
                }).toList(),
              ),
            ),
          ),

          // Action Buttons
          Row(
            children: [
              // Reset Button
              Expanded(
                child: SizedBox(
                  height: 50,
                  child: OutlinedButton(
                    onPressed: () => Navigator.maybeOf(context)?.pop(
                      values..clear(),
                    ),
                    style: CustomButtonStyles.destructiveOutline(),
                    // child: const Text('Reset'),
                    child: Text(context.t.action.reset),
                  ),
                ),
              ),
              const SizedBox(width: 16),

              // Apply Button
              Expanded(
                child: SizedBox(
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () => Navigator.maybeOf(context)?.pop(values),
                    // child: const Text('Apply'),
                    child: Text(context.t.action.apply),
                  ),
                ),
              ),
            ],
          ).fPaddingSymmetric(horizontal: 20, vertical: 20),
        ],
      ),
    ).unfocusPrimary();
  }
}

Future<void> showDynamicFilterModalSheet<R, T>(
  BuildContext context, {
  required List<FilterModalData<R, T>> filters,
  FilterValue<R, T>? selectedFilters,
  void Function(FilterValue<R, T> value)? onSave,
}) async {
  final _result = await showModalBottomSheet<FilterValue<R, T>>(
    context: context,
    builder: (modalContext) {
      return _FilterBottomModalSheet<R, T>(
        key: UniqueKey(),
        filters: filters,
        selectedFilters: selectedFilters,
      );
    },
  );

  if (_result != null) return onSave?.call(_result);
}
//------------------------------Widgets & Usages------------------------------//

typedef FilterValue<R, T> = Map<R, T?>;
typedef _FieldBuilder<T> = Widget Function(
  BuildContext context, {
  T? initialValue,
  required ValueChanged<T?> onChanged,
});

class FilterModalData<R, T> {
  final R key;
  final T? value;
  // ignore: library_private_types_in_public_api
  final _FieldBuilder<T> builder;
  FilterModalData._({required this.key, this.value, required this.builder});

  factory FilterModalData.dropdown({
    required R key,
    String? labelText,
    String? hintText,
    required List<DropdownMenuItem<T>> items,
  }) {
    return FilterModalData._(
      key: key,
      builder: (context, {initialValue, required onChanged}) {
        return DropdownButtonFormField<T>(
          isExpanded: true,
          hint: hintText != null ? Text(hintText) : null,
          decoration: InputDecoration(labelText: labelText),
          menuMaxHeight: MediaQuery.of(context).size.height * 0.375,
          value: initialValue,
          items: items,
          onChanged: onChanged,
        );
      },
    );
  }

  factory FilterModalData.multiChoice({
    required R key,
    required String labelText,
    required List<MultiChoiceItem<T>> items,
  }) {
    return FilterModalData._(
      key: key,
      builder: (context, {initialValue, required onChanged}) {
        return MultiChoiceSelector<T>(
          headerText: labelText,
          items: items,
          value: [...?(initialValue as List<T>?)],
          onChanged: (v) => onChanged(v as T?),
        );
      },
    );
  }
}
