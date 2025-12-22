import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

import '../../core/core.dart';

class ImagePreviewGallery extends StatelessWidget {
  const ImagePreviewGallery({
    super.key,
    this.initialIndex = 0,
    required this.images,
  });
  final int initialIndex;
  final List<DynamicFileType> images;

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);
    return Stack(
      children: [
        Positioned.fill(
          child: PageView.builder(
            controller: PageController(initialPage: initialIndex),
            itemCount: images.length,
            itemBuilder: (_, index) {
              final _image = images[index];
              return PhotoView(
                imageProvider: _image.isRemote
                    ? CustomNetworkImage(url: _image.remote).image
                    : FileImage(_image.local!),
                backgroundDecoration: const BoxDecoration(),
              );
            },
          ),
        ),
        Positioned(
          top: 0,
          right: 0,
          child: CloseButton(
            style: IconButton.styleFrom(
              backgroundColor: _theme.colorScheme.primary,
              foregroundColor: _theme.colorScheme.onPrimary,
            ),
          ),
        ),
      ],
    );
  }
}

Future<void> showImagePreviewGallery(
  BuildContext context,
  List<DynamicFileType> images, {
  int initialIndex = 0,
}) async {
  return await showDialog<void>(
    context: context,
    useRootNavigator: false,
    barrierColor: Colors.black.withValues(alpha: 0.65),
    builder: (popContext) {
      return Dialog(
        insetPadding: const EdgeInsets.all(14),
        backgroundColor: Colors.transparent,
        child: ImagePreviewGallery(
          initialIndex: initialIndex,
          images: images,
        ),
      );
    },
  );
}
