import 'dart:io';

import 'package:fdevs_fitkit/fdevs_fitkit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:path_provider/path_provider.dart';

import '../../../../i18n/strings.g.dart';
import '../../../core/core.dart';
import '../../../services/services.dart';

Future<Either<String, File>> showFileDownloadOverlay(
  BuildContext ctx, {
  required String? urlPath,
  bool saveFile = false,
  String? savePath,
}) async {
  if (urlPath == null || urlPath.trim().isEmpty) {
    // return Either.failure('Invalid download url!');
    return Either.failure(ctx.t.exceptions.invalidDownloadUrl);
  }

  final provider = ProviderScope.containerOf(ctx);
  final progressNotifier = ValueNotifier<double>(0.0);
  final _result = await showAsyncLoadingOverlay(
    ctx,
    asyncFunction: () async {
      final httpClient = provider.read(httpDioClientProvider);
      final result = await httpClient.downloadFile(
        urlPath,
        onReceiveProgress: (count, total) {
          if (total > 0) {
            progressNotifier.value = count / total;
          }
        },
      );
      return result;
    },
    loadingWidget: Material(
      color: Colors.transparent,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 16,
        children: [
          Center(
            child: ValueListenableBuilder<double>(
              valueListenable: progressNotifier,
              builder: (context, progress, child) {
                return CircularProgressIndicator(
                  value: progress > 0 && progress <= 1 ? progress : null,
                );
              },
            ),
          ),
          Text(
            // 'Downloading...',
            ctx.t.common.downloading,
            style: Theme.of(ctx).textTheme.bodyLarge?.copyWith(
                  color: Colors.white,
                ),
          )
        ],
      ),
    ),
  );

  if (saveFile && _result.isSuccess) {
    await provider
        .read(globalPermissionHandler)
        .requestPermission(GlobalPermissions.externalStorage);
    try {
      Directory directory;

      if (savePath != null) {
        directory = Directory(savePath);
      } else {
        if (Platform.isAndroid) {
          final baseDir = '/storage/emulated/0/Download';
          directory = Directory('$baseDir/${AppConfig.appName}');
        } else {
          final baseDir = await getApplicationDocumentsDirectory();
          directory = Directory('${baseDir.path}/${AppConfig.appName}');
        }
      }

      if (!directory.existsSync()) {
        directory.createSync(recursive: true);
      }

      final fileName = urlPath.split('/').last;
      final savedFilePath = '${directory.path}/$fileName';

      final savedFile = await _result.right!.copy(savedFilePath);
      return Either.success(savedFile);
    } catch (e) {
      return Either.failure(
        // ignore: use_build_context_synchronously
        ctx.t.exceptions.failedToSaveFile(error: e.toString()),
      );
    }
  }
  return _result;
}
