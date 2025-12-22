import 'package:flutter/material.dart';

class MultiChoiceSelector<T> extends StatelessWidget {
  const MultiChoiceSelector({
    super.key,
    required this.headerText,
    this.value,
    required this.items,
    required this.onChanged,
  });

  final String headerText;
  final List<T>? value;
  final List<MultiChoiceItem<T>> items;
  final void Function(List<T> selectedList) onChanged;

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);

    final _isChecked =
        value?.isNotEmpty == true && value?.length != items.length
            ? null
            : value?.length == items.length;
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Header
        Row(
          children: [
            // Header Text
            Expanded(
              child: Text(
                headerText,
                style: _theme.textTheme.bodyLarge?.copyWith(
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),

            // Select/Unselect All
            Checkbox(
              tristate: true,
              value: _isChecked,
              onChanged: (checked) {
                if (checked == true) {
                  onChanged.call(items.map((item) => item.value as T).toList());
                } else {
                  onChanged.call([]);
                }
              },
              visualDensity: const VisualDensity(
                horizontal: -4,
                vertical: -4,
              ),
            )
          ],
        ),
        const SizedBox.square(dimension: 8),

        // Items
        Wrap(
          spacing: 12,
          runSpacing: 4,
          children: [
            ...items.map((item) {
              return _SelectableButton(
                key: ValueKey(item),
                label: item.label,
                isSelected: value?.contains(item.value),
                onSelect: () => _handleSelection(item.value as T),
              );
            })
          ],
        )
      ],
    );
  }

  void _handleSelection(T v) {
    if (value?.contains(v) == true) {
      value?.remove(v);
    } else {
      value?.add(v);
    }

    onChanged.call(value ?? []);
  }
}

class MultiChoiceItem<T> {
  final T? value;
  final String label;

  const MultiChoiceItem({
    this.value,
    required this.label,
  });

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;

    return other is MultiChoiceItem &&
        other.value == value &&
        other.label == label;
  }

  @override
  int get hashCode => Object.hash(value, label);
}

class _SelectableButton extends StatelessWidget {
  const _SelectableButton({
    super.key,
    this.isSelected,
    required this.label,
    this.onSelect,
  });
  final bool? isSelected;
  final String label;
  final void Function()? onSelect;

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);

    final _isSelected = isSelected ?? false;
    return OutlinedButton(
      onPressed: onSelect,
      style: OutlinedButton.styleFrom(
        backgroundColor: _isSelected ? _theme.colorScheme.primary : null,
        foregroundColor: _isSelected
            ? _theme.colorScheme.onPrimary
            : _theme.colorScheme.secondary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6),
        ),
        side: BorderSide(
          color: _isSelected
              ? _theme.colorScheme.primary
              : _theme.colorScheme.secondary,
        ),
        padding: EdgeInsets.symmetric(horizontal: 14),
        textStyle: _theme.textTheme.bodyMedium,
      ),
      child: Text(label),
    );
  }
}

typedef SelectableOutlineButton = _SelectableButton;
