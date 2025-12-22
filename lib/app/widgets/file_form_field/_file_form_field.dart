import 'dart:io';

import 'package:collection/collection.dart';
import 'package:fdevs_fitkit/fdevs_fitkit.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:iconly/iconly.dart';
import 'package:path/path.dart' as p;
import 'package:proper_filesize/proper_filesize.dart';

import '../../core/core.dart';

class FileFormField extends FormField<File> {
  FileFormField.upload({
    super.key,
    super.initialValue,
    required void Function(File value) onSelectFile,
    String? Function(File?)? validator,
    int? maxFileSizeInKb,
    FileFormFieldType fieldType = FileFormFieldType.listTile,
    FileFormFieldFileType fileType = FileFormFieldFileType.any,
    FileFormFieldDecoration? decoration,
    String? maxSizeError,
  }) : super(
          builder: (state) {
            return _FileField(
              key: key,
              isUpload: true,
              state: state as _FileFormFieldState,
              fieldType: fieldType,
              fileType: fileType,
              onSelectFile: onSelectFile,
              decoration: decoration,
            );
          },
          validator: (value) {
            if (maxFileSizeInKb != null && value != null) {
              final _size = _FileFormFieldState.getFileSize(
                value,
                returnInKb: true,
              );

              if (_size.size != null && (_size.size! > maxFileSizeInKb)) {
                return maxSizeError ??
                    "File size must be smaller than $maxFileSizeInKb KB.";
              }
            }

            return validator?.call(value);
          },
        );

  FileFormField.download({
    super.key,
    void Function()? onDownloadTap,
    String? downloadURL,
    FileFormFieldType fieldType = FileFormFieldType.listTile,
    FileFormFieldFileType fileType = FileFormFieldFileType.any,
    FileFormFieldDecoration? decoration,
  }) : super(
          builder: (state) {
            return _FileField(
              key: key,
              isUpload: false,
              state: state as _FileFormFieldState,
              fieldType: fieldType,
              fileType: fileType,
              downloadURL: downloadURL,
              onDownloadTap: onDownloadTap,
              decoration: decoration,
            );
          },
        );

  @override
  FormFieldState<File> createState() => _FileFormFieldState();
}

class _FileFormFieldState extends FormFieldState<File> {
  static String getFileName(
    String filePath, {
    bool showExtension = false,
  }) {
    final _baseName = p.basename(filePath);
    final _extension = p.extension(_baseName);
    String _trimmedName = _baseName.split(_extension).join(
          showExtension ? _extension : '',
        );

    if (_baseName.length > 20) {
      final start = _baseName.substring(0, 10);
      final end = _baseName.substring(
        _baseName.length - 5 - _extension.length,
        _baseName.length - _extension.length,
      );
      _trimmedName = '$start...$end${showExtension ? _extension : ''}';
    }

    return _trimmedName;
  }

  static ({num? size, String unit}) getFileSize(
    File file, {
    int decimals = 2,
    bool returnInKb = false,
  }) {
    try {
      final bytes = file.lengthSync();
      final fileSize = FileSize.fromBytes(bytes);

      final result = returnInKb
          ? fileSize.toString(
              unit: Unit.kilobyte,
              decimals: decimals,
              formatType: FormatType.short,
            )
          : fileSize.toString(
              unit: Unit.auto(size: bytes, baseType: BaseType.metric),
              decimals: decimals,
              formatType: FormatType.short,
            );

      final parts = result.split(' ');
      if (parts.length != 2) {
        return (size: null, unit: 'Invalid format');
      }

      return (
        size: num.tryParse(parts[0]),
        unit: parts[1].toUpperCase(),
      );
    } catch (e) {
      return (size: null, unit: 'Unknown size');
    }
  }
}

class _FileField extends StatelessWidget {
  const _FileField({
    super.key,
    required this.isUpload,
    required this.state,
    required this.fieldType,
    required this.fileType,
    this.downloadURL,
    this.onDownloadTap,
    this.onSelectFile,
    this.decoration,
  });
  final bool isUpload;
  final _FileFormFieldState state;
  final FileFormFieldType fieldType;
  final FileFormFieldFileType fileType;
  final String? downloadURL;
  final void Function()? onDownloadTap;
  final void Function(File value)? onSelectFile;
  final FileFormFieldDecoration? decoration;

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);

    if (fieldType == FileFormFieldType.listTile) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          DecoratedBox(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              border: Border.all(
                color: _theme.colorScheme.secondary.withValues(alpha: 0.20),
              ),
            ),
            child: ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 8),
              visualDensity: VisualDensity(
                horizontal: -4,
                vertical: isUpload && state.value == null ? 0 : -4,
              ),
              leading: fileType.icon,
              title: Text(
                isUpload
                    ? (state.value == null
                        ? 'No file selected'
                        : _FileFormFieldState.getFileName(state.value!.path))
                    : downloadURL == null
                        ? "N/A"
                        : _FileFormFieldState.getFileName(downloadURL!),
              ),
              subtitle: isUpload
                  ? (state.value == null
                      ? null
                      : Builder(
                          builder: (_) {
                            final _size = _FileFormFieldState.getFileSize(
                              state.value!,
                            );
                            return Text('${_size.size ?? ''} ${_size.unit}');
                          },
                        ))
                  : Text(
                      downloadURL == null
                          ? ''
                          : p
                              .extension(p.basename(downloadURL!))
                              .split('.')
                              .join(''),
                    ),
              trailing: IconButton.filledTonal(
                onPressed: _handleOnActionTap,
                style: IconButton.styleFrom(
                  backgroundColor:
                      _theme.colorScheme.primary.withValues(alpha: 0.25),
                  foregroundColor: _theme.colorScheme.primary,
                ),
                icon: Icon(
                    isUpload ? FeatherIcons.upload : FeatherIcons.download),
                iconSize: 20,
              ),
            ),
          ),
          if (state.hasError && state.errorText != null) ...[
            const SizedBox.square(dimension: 2),
            Text(
              state.errorText!,
              style: _theme.inputDecorationTheme.errorStyle,
            )
          ]
        ],
      );
    }

    return InputDecorator(
      decoration: (decoration ?? const InputDecoration()).copyWith(
        suffixIcon: IconButton.filledTonal(
          onPressed: _handleOnActionTap,
          style: IconButton.styleFrom(
            backgroundColor: _theme.colorScheme.primary.withValues(alpha: 0.25),
            foregroundColor: _theme.colorScheme.primary,
            visualDensity: const VisualDensity(
              horizontal: -4,
              vertical: -4,
            ),
          ),
          icon: Icon(isUpload ? FeatherIcons.upload : FeatherIcons.download),
          iconSize: 20,
        ).fPaddingAll(6),
        errorText: state.errorText,
      ),
      child: Text(
        isUpload
            ? (state.value == null
                ? 'No file selected'
                : _FileFormFieldState.getFileName(state.value!.path,
                    showExtension: true))
            : _FileFormFieldState.getFileName(downloadURL!,
                showExtension: true),
        style: _theme.inputDecorationTheme.hintStyle,
      ),
    );
  }

  Future<void> _handleOnActionTap() async {
    if (!isUpload) return onDownloadTap?.call();

    try {
      final _pickResult = await FilePicker.platform.pickFiles(
        allowMultiple: false,
        type: fileType == FileFormFieldFileType.any
            ? FileType.any
            : FileType.custom,
        allowedExtensions: fileType.extensions,
      );
      if (_pickResult != null &&
          _pickResult.isSinglePick &&
          _pickResult.files.isNotEmpty) {
        final _file = File(_pickResult.files.first.path!);
        onSelectFile?.call(_file);
        state.didChange(_file);
      }
    } catch (e) {}
  }
}

enum FileFormFieldType { listTile, textField }

enum FileFormFieldFileType {
  pdf(extension: [FileFormFieldFileExtensions.pdf]),
  word(extension: [
    FileFormFieldFileExtensions.doc,
    FileFormFieldFileExtensions.docx,
  ]),
  excel(extension: [
    FileFormFieldFileExtensions.xls,
    FileFormFieldFileExtensions.xlsx,
  ]),
  powerpoint(extension: [
    FileFormFieldFileExtensions.ppt,
    FileFormFieldFileExtensions.pptx,
  ]),
  image(extension: [
    FileFormFieldFileExtensions.jpg,
    FileFormFieldFileExtensions.jpeg,
    FileFormFieldFileExtensions.png,
    FileFormFieldFileExtensions.svg,
    FileFormFieldFileExtensions.gif,
    FileFormFieldFileExtensions.bmp,
  ]),
  video(extension: [
    FileFormFieldFileExtensions.mp4,
    FileFormFieldFileExtensions.avi,
    FileFormFieldFileExtensions.mkv,
    FileFormFieldFileExtensions.mov,
  ]),
  audio(extension: [
    FileFormFieldFileExtensions.mp3,
    FileFormFieldFileExtensions.wav,
    FileFormFieldFileExtensions.aac,
    FileFormFieldFileExtensions.flac,
  ]),
  text(extension: [
    FileFormFieldFileExtensions.txt,
    FileFormFieldFileExtensions.rtf,
  ]),
  archive(extension: [
    FileFormFieldFileExtensions.zip,
    FileFormFieldFileExtensions.rar,
    FileFormFieldFileExtensions.z7z,
    FileFormFieldFileExtensions.tar,
    FileFormFieldFileExtensions.gz,
  ]),
  any;

  final List<FileFormFieldFileExtensions>? extension;
  List<String>? get extensions {
    return extension?.map((e) => e.ext).toList();
  }

  const FileFormFieldFileType({this.extension});

  bool get isPdf => this == FileFormFieldFileType.pdf;
  bool get isWord => this == FileFormFieldFileType.word;
  bool get isExcel => this == FileFormFieldFileType.excel;
  bool get isPowerpoint => this == FileFormFieldFileType.powerpoint;
  bool get isImage => this == FileFormFieldFileType.image;
  bool get isVideo => this == FileFormFieldFileType.video;
  bool get isAudio => this == FileFormFieldFileType.audio;
  bool get isText => this == FileFormFieldFileType.text;
  bool get isArchive => this == FileFormFieldFileType.archive;
  bool get isAny => this == FileFormFieldFileType.any;

  Widget get icon {
    return SizedBox.square(
      dimension: 40,
      child: switch (this) {
        pdf => Image.asset('assets/icons/acrobat_pdf.png'),
        _ => Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: DAppColors.kPendingColor.withValues(alpha: 0.25),
            ),
            child: const Icon(
              IconlyLight.document,
              color: DAppColors.kPendingColor,
            ),
          ),
      },
    );
  }

  static FileFormFieldFileType? fromString(String? value) {
    if (value == null) return null;

    final ext = p.extension(value).toLowerCase().replaceAll('.', '');
    final target = ext.isNotEmpty ? ext : value.toLowerCase();

    return values.firstWhereOrNull(
      (type) => type.extension?.any((e) => e.ext == target) ?? false,
    );
  }

  static FileFormFieldFileType? fromFile(File? file) {
    if (file == null) return null;
    final path = file.path;
    return fromString(path);
  }
}

enum FileFormFieldFileExtensions {
  pdf(ext: 'pdf'),
  doc(ext: 'doc'),
  docx(ext: 'docx'),
  xls(ext: 'xls'),
  xlsx(ext: 'xlsx'),
  ppt(ext: 'ppt'),
  pptx(ext: 'pptx'),
  jpg(ext: 'jpg'),
  jpeg(ext: 'jpeg'),
  png(ext: 'png'),
  svg(ext: 'svg'),
  gif(ext: 'gif'),
  bmp(ext: 'bmp'),
  mp4(ext: 'mp4'),
  avi(ext: 'avi'),
  mkv(ext: 'mkv'),
  mov(ext: 'mov'),
  mp3(ext: 'mp3'),
  wav(ext: 'wav'),
  aac(ext: 'aac'),
  flac(ext: 'flac'),
  txt(ext: 'txt'),
  rtf(ext: 'rtf'),
  zip(ext: 'zip'),
  rar(ext: 'rar'),
  z7z(ext: '7z'),
  tar(ext: 'tar'),
  gz(ext: 'gz');

  final String ext;
  const FileFormFieldFileExtensions({required this.ext});

  static FileFormFieldFileExtensions fromString(String value) {
    return values.firstWhere(
      (e) => e.ext == value,
      orElse: () => throw ArgumentError('No extension found for $value'),
    );
  }
}

class FileFormFieldDecoration extends InputDecoration {
  const FileFormFieldDecoration({
    super.labelText,
    super.hintText,
    super.prefixIcon,
  });
}
