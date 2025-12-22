import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

import '../../core/core.dart';
import '../widgets.dart';

class ImageFormField extends FormField<DynamicFileType> {
  ImageFormField({
    super.key,
    Size? previewSize,
    ImageFieldDecoration? decoration,
    final void Function(DynamicFileType value)? onSelectImage,
    super.validator,
    super.initialValue,
  }) : super(
          builder: (state) {
            return _ImageFormFieldWidget(
              state: state,
              previewSize: previewSize,
              decoration: decoration,
              onSelectImage: onSelectImage,
            );
          },
        );

  @override
  FormFieldState<DynamicFileType> createState() => _ImageFormFieldState();
}

class _ImageFormFieldState extends FormFieldState<DynamicFileType> {}

class _ImageFormFieldWidget extends StatelessWidget {
  const _ImageFormFieldWidget({
    super.key,
    required this.state,
    this.onSelectImage,
    this.decoration,
    this.previewSize,
  });

  final FormFieldState<DynamicFileType> state;
  final void Function(DynamicFileType value)? onSelectImage;
  final ImageFieldDecoration? decoration;
  final Size? previewSize;

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);
    final _imagePath = state.value?.remote ?? state.value?.local?.path;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        if (decoration?.labelText != null) Text(decoration!.labelText!),
        const SizedBox.square(dimension: 10),
        SizedBox.fromSize(
          size: previewSize,
          child: DottedBorder(
            options: RoundedRectDottedBorderOptions(
              radius: const Radius.circular(6),
              color: _theme.colorScheme.outline,
              dashPattern: const [2, 3],
              borderPadding: EdgeInsets.zero,
              padding: EdgeInsets.zero,
            ),
            child: state.value != null
                ? _buildImagePreview(_imagePath!, state.value!.isRemote)
                : _buildPlaceholder(context),
          ),
        ),
        if (state.hasError) ...[
          const SizedBox.square(dimension: 4),
          Text(
            state.errorText!,
            style: _theme.inputDecorationTheme.errorStyle,
          )
        ]
      ],
    );
  }

  Widget _buildImagePreview(String path, bool isRemote) {
    return Container(
      alignment: Alignment.topRight,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: isRemote ? NetworkImage(path) : FileImage(File(path)),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(6),
      ),
      child: state.value != null
          ? IconButton.filled(
              onPressed: () {
                onSelectImage?.call(DynamicFileType());
                state.didChange(null);
              },
              iconSize: 18,
              style: IconButton.styleFrom(
                backgroundColor: Colors.red,
                padding: EdgeInsets.zero,
                visualDensity: const VisualDensity(
                  horizontal: -4,
                  vertical: -4,
                ),
              ),
              icon: const Icon(Icons.close),
            )
          : null,
    );
  }

  Widget _buildPlaceholder(BuildContext context) {
    return Center(
      child: IconButton(
        onPressed: () => _selectImage(context),
        color: Theme.of(context).colorScheme.secondary,
        icon: const Icon(FeatherIcons.camera),
      ),
    );
  }

  Future<void> _selectImage(BuildContext context) async {
    final pickedFile = await showImagePickerDialog(context);
    if (pickedFile != null) {
      final newValue = DynamicFileType(local: pickedFile);
      onSelectImage?.call(newValue);
      state.didChange(newValue);
    }
  }
}

class ImageFieldDecoration {
  final String? labelText;
  final String? error;

  ImageFieldDecoration({
    this.labelText,
    this.error,
  });
}
