import 'dart:io';

import 'package:fdevs_fitkit/fdevs_fitkit.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:image_picker/image_picker.dart';

import '../../../i18n/strings.g.dart';
import '../../core/core.dart' show DAppColors;

Future<File?> showImagePickerDialog(BuildContext context) async {
  return await showDialog<File?>(
    context: context,
    builder: (popContext) => _ImagePickerDialog(
      onSelect: (value) async {
        final _picker = ImagePicker();
        final _pickedFile = await _picker.pickImage(source: value.source);
        if (popContext.mounted) {
          Navigator.of(popContext).pop(
            _pickedFile != null ? File(_pickedFile.path) : null,
          );
        }
      },
    ),
  );
}

class _ImagePickerDialog extends StatelessWidget {
  const _ImagePickerDialog({super.key, required this.onSelect});
  final void Function(_ImagePickerType value) onSelect;

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Header
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                // 'Select Option',
                context.t.prompt.imagePicker.title,
                style: _theme.textTheme.bodyLarge?.copyWith(
                  fontWeight: FontWeight.w500,
                ),
              ),
              CloseButton(
                style: IconButton.styleFrom(
                  padding: EdgeInsets.zero,
                ),
              ),
            ],
          ),
          const SizedBox.square(dimension: 16),

          // Options
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ..._ImagePickerType.values.map(
                (type) => Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    InkWell(
                      onTap: () => onSelect(type),
                      borderRadius: BorderRadius.circular(6),
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: type.color?.withValues(alpha: 0.15),
                        ),
                        child: Icon(
                          type.icon,
                          color: type.color,
                        ).fMarginAll(8),
                      ),
                    ),
                    const SizedBox.square(dimension: 4),
                    Text(
                      type.label(context),
                      style: _theme.textTheme.bodyLarge,
                    ),
                  ],
                ).fMarginSymmetric(horizontal: 12.fW),
              )
            ],
          )
        ],
      ).fMarginLTRB(16.fW, 0, 0, 24.fW),
    );
  }
}

enum _ImagePickerType {
  gallery(
    source: ImageSource.gallery,
    icon: IconlyBold.image,
    color: DAppColors.kPrimary,
  ),
  camera(
    source: ImageSource.camera,
    icon: IconlyBold.camera,
    color: Colors.red,
  );

  final ImageSource source;
  String label(BuildContext context) {
    return switch (this) {
      gallery => context.t.prompt.imagePicker.gallery,
      camera => context.t.prompt.imagePicker.camera,
    };
  }

  final IconData icon;
  final Color? color;

  const _ImagePickerType({
    required this.source,
    required this.icon,
    this.color,
  });
}
