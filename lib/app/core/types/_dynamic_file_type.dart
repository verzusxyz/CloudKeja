import 'dart:io';

import 'package:fdevs_fitkit/fdevs_fitkit.dart';
import 'package:flutter/material.dart';

import '../core.dart';

class DynamicFileType {
  final Either<File?, String?> _either;
  final String baseUrl;
  DynamicFileType({
    File? local,
    String? remote,
    this.baseUrl = DAPIEndpoints.baseURL,
  }) : _either = local != null ? Either.failure(local) : Either.success(remote);

  File? get local => _either.isFailure ? _either.left : null;
  String? get remote {
    return _either.isSuccess
        ? (_either.right == null ? null : "$baseUrl/${_either.right!}")
        : null;
  }

  bool get isLocal => _either.isFailure;
  bool get isRemote => _either.isSuccess;

  T resolve<T>({
    T Function(File? value)? onFailure,
    T Function(String? value)? onSuccess,
    T Function()? orElse,
  }) {
    return _either.resolve(
      onFailure: onFailure,
      onSuccess: onSuccess,
      orElse: orElse,
    );
  }
}

class CustomNetworkImage extends Image {
  CustomNetworkImage({
    super.key,
    this.url,
    super.fit,
    super.alignment,
    super.centerSlice,
    super.color,
    super.colorBlendMode,
    super.excludeFromSemantics,
    super.filterQuality,
    super.frameBuilder,
    super.gaplessPlayback,
    super.height,
    super.width,
    super.isAntiAlias,
    super.matchTextDirection,
    super.opacity,
    super.repeat,
    super.semanticLabel,
  }) : super(image: url == null ? _placeholder : NetworkImage(url));
  final String? url;

  @override
  ImageErrorWidgetBuilder? get errorBuilder => _customErrorBuilder;

  @override
  ImageLoadingBuilder? get loadingBuilder => _customLoadingBuilder;

  Widget _customErrorBuilder(
    BuildContext context,
    Object error,
    StackTrace? stackTrace,
  ) {
    return Image(image: _placeholder, fit: fit);
  }

  static Widget _customLoadingBuilder(
    BuildContext context,
    Widget child,
    ImageChunkEvent? loadingProgress,
  ) {
    if (loadingProgress == null) {
      return child;
    }
    return Center(
      child: CircularProgressIndicator(
        value: loadingProgress.expectedTotalBytes != null
            ? loadingProgress.cumulativeBytesLoaded /
                loadingProgress.expectedTotalBytes!
            : null,
      ),
    );
  }

  static final _placeholder = AssetImage(DAppImages.emptyImagePlaceholder);
}
