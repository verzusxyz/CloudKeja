import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:fdevs_fitkit/fdevs_fitkit.dart';
import 'package:flutter/material.dart';

import '../../core/core.dart';
import '../image_picker_dialog/_show_image_picker_dialog.dart';

class IDCardPreview extends StatelessWidget {
  const IDCardPreview._({
    super.key,
    this.images,
    this.onSelectImage,
    required this.hasPicker,
  });
  final List<DynamicFileType>? images;
  final void Function(int index, DynamicFileType value)? onSelectImage;
  final bool hasPicker;

  const IDCardPreview.picker({
    Key? key,
    List<DynamicFileType>? images,
    void Function(int index, DynamicFileType value)? onSelectImage,
  }) : this._(
          key: key,
          images: images,
          onSelectImage: onSelectImage,
          hasPicker: true,
        );

  const IDCardPreview.preview({
    Key? key,
    List<DynamicFileType>? images,
  }) : this._(
          key: key,
          images: images,
          hasPicker: false,
        );

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      itemCount: images?.length ?? 0,
      itemBuilder: (context, index) {
        final _image = images![index];
        final _imagePath = _image.remote ?? _image.local?.path;

        return ConstrainedBox(
          constraints: BoxConstraints.tightFor(width: 140.fW),
          child: _imagePath != null
              ? _buildImagePreview(index, _imagePath, _image.remote != null)
              : _buildBlankPlaceholder(context, index),
        );
      },
      separatorBuilder: (_, __) => const SizedBox(width: 16),
    );
  }

  Widget _buildBlankPlaceholder(BuildContext context, int index) {
    final _theme = Theme.of(context);
    return DottedBorder(
      options: RoundedRectDottedBorderOptions(
        radius: const Radius.circular(6),
        color: _theme.colorScheme.outline,
      ),
      child: SizedBox.expand(
        child: hasPicker
            ? Center(
                child: IconButton(
                  onPressed: () async =>
                      await showImagePickerDialog(context).then(
                    (value) {
                      return onSelectImage?.call(
                        index,
                        DynamicFileType(local: value),
                      );
                    },
                  ),
                  color: _theme.colorScheme.secondary,
                  icon: const Icon(Icons.add_circle_outline_rounded),
                ),
              )
            : Image.asset(
                DAppImages.emptyImagePlaceholder,
                fit: BoxFit.cover,
              ),
      ),
    );
  }

  Widget _buildImagePreview(int index, String path, [bool isRemote = false]) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Stack(
        children: [
          Positioned.fill(
            child: isRemote
                ? CustomNetworkImage(url: path, fit: BoxFit.cover)
                : Image.file(File(path), fit: BoxFit.cover),
          ),
          if (hasPicker)
            PositionedDirectional(
              end: 0,
              top: 0,
              child: IconButton.filled(
                onPressed: () => onSelectImage?.call(index, DynamicFileType()),
                iconSize: 18.fW,
                style: IconButton.styleFrom(
                  backgroundColor: Colors.red,
                  padding: EdgeInsets.zero,
                  visualDensity:
                      const VisualDensity(horizontal: -4, vertical: -4),
                ),
                icon: const Icon(Icons.close),
              ),
            ),
        ],
      ),
    );
  }
}
