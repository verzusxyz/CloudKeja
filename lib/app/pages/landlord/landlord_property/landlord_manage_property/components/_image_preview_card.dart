import 'package:flutter/material.dart';

import '../../../../../core/core.dart';

export '../../../../../core/core.dart' show DynamicFileType, DAppImages;

class ImagePreviewCard extends StatelessWidget {
  const ImagePreviewCard({
    super.key,
    required this.image,
    required this.svgPlaceholder,
    this.placeholderText,
    this.size = const Size.fromHeight(128),
    this.onTap,
  });

  final DynamicFileType image;
  final String svgPlaceholder;
  final String? placeholderText;
  final Size size;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);

    return InkWell(
      onTap: onTap,
      child: Container(
        constraints: BoxConstraints.tight(size),
        decoration: BoxDecoration(
          border: Border.all(
            color: _theme.colorScheme.outline.withValues(
              alpha: 0.5,
            ),
          ),
          borderRadius: BorderRadius.circular(4),
        ),
        child: _buildImageContent(),
      ),
    );
  }

  Widget _buildImageContent() {
    if (image.isLocal) {
      final localFile = image.local;
      if (localFile != null) {
        return Image.file(localFile);
      }
    }

    if (image.isRemote) {
      final remoteUrl = image.remote;
      if (remoteUrl != null) {
        return CustomNetworkImage(url: remoteUrl);
      }
    }

    return _buildPlaceholder(
      svgPath: svgPlaceholder,
      label: placeholderText,
    );
  }

  Widget _buildPlaceholder({
    required String svgPath,
    String? label,
  }) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(svgPath, height: 40, width: 40),
        if (label != null) ...[
          const SizedBox.square(dimension: 8),
          Flexible(
            child: Text(
              label,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
          ),
        ]
      ],
    );
  }
}
