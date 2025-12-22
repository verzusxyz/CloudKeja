import 'package:auto_route/auto_route.dart';
import 'package:fdevs_fitkit/fdevs_fitkit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:open_file/open_file.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../i18n/strings.g.dart';
import '../../../core/core.dart';
import '../../../data/repositories/repositories.dart';
import '../../../routes/app_routes.gr.dart';
import '../../../widgets/widgets.dart';
import '../pages/common_pages.dart';
import 'widgets.dart';

abstract class SharedWidgets {
  //------------------------Sign Out------------------------//
  static Future<void> handleSignOut(
    BuildContext ctx, {
    List<ProviderBase>? disposeProviders,
  }) async {
    final _confirmation = await showAdaptiveDialog<bool>(
      context: ctx,
      builder: (popContext) => InfoDialog.confirmation(
        // title: 'Log out?',
        title: popContext.t.prompt.logout.title,
        // description: 'Are you sure to logout?',
        description: popContext.t.prompt.logout.message,
        onDecide: (v) => Navigator.of(popContext).pop(v),
        swapAction: true,
        // acceptionText: 'No',
        acceptionText: popContext.t.action.no,
        // rejectionText: 'Log Out',
        rejectionText: popContext.t.common.logout,
      ),
    );

    if (ctx.mounted && _confirmation == false) {
      final provider = ProviderScope.containerOf(ctx);

      final _result = await showAsyncLoadingOverlay(
        ctx,
        asyncFunction: () => Future.microtask(
          provider.read(userRepositoryProvider.notifier).signOut,
        ),
      );

      if (ctx.mounted) {
        if (_result.isFailure) {
          showCustomSnackBar(
            ctx,
            content: Text(_result.left!),
            customSnackBarType: CustomOverlayType.error,
          );
          return;
        }

        ctx.router.replaceAll([
          const PageRouteInfo(
            'auth',
            initialChildren: [SignInRoute()],
          )
        ]);
      }
    }
  }
  //------------------------Sign Out------------------------//

  //------------------------Online Payment------------------------//
  static Future<bool> handleOnlinePayment(
    BuildContext ctx, {
    required int invocieId,
    required PaymentType paymentType,
    num? payableAmount,
  }) async {
    Future<Either<String, String>?> onlinePayment() async {
      return await ctx.router.pushWidget<Either<String, String>>(
        OnlinePaymentView(
          invoiceId: invocieId,
          paymentType: paymentType,
          payableAmount: payableAmount,
          onPayment: ctx.router.maybePop,
        ),
      );
    }

    while (true) {
      final _paymentResult = await onlinePayment();
      if (ctx.mounted && _paymentResult != null) {
        if (_paymentResult.isFailure) {
          final didRetry = await ctx.router.pushWidget<bool>(
            PaymentStatusView(
              onPressed: () => ctx.router.maybePop(true),
              status: PaymentStatusViewType.fail,
            ),
          );

          if (didRetry == true) continue;

          return false;
        }
        if (paymentType != PaymentType.subscription) {
          gEventListener.fire<PaymentsEvent>(PaymentsEvent.modified);
        }
        return true;
      }

      return false;
    }
  }
  //------------------------Online Payment------------------------//

  //------------------------Download Overlay------------------------//
  static Future<void> handleDownloadOverlay(
    BuildContext ctx,
    String? urlPath,
  ) async {
    if (urlPath == null || urlPath.trim().isEmpty) {
      showCustomSnackBar(
        ctx,
        // content: const Text('Invalid URL!'),
        content: Text(ctx.t.exceptions.invalidDownloadUrl),
        customSnackBarType: CustomOverlayType.error,
      );
      return;
    }

    final _result = await showFileDownloadOverlay(
      ctx,
      urlPath: urlPath,
      saveFile: true,
    );

    if (!ctx.mounted) return;

    if (_result.isFailure) {
      showCustomSnackBar(
        ctx,
        content: Text(_result.left!),
        customSnackBarType: CustomOverlayType.error,
      );
      return;
    }

    Future<void> openFile() async {
      try {
        final _openResult = await OpenFile.open(_result.right!.path);
        if (ctx.mounted && _openResult.type != ResultType.done) {
          showCustomSnackBar(
            ctx,
            content: Text(_openResult.message),
            customSnackBarType: CustomOverlayType.error,
          );
        }
      } catch (e) {
        if (ctx.mounted) {
          showCustomSnackBar(
            ctx,
            // content: Text('Error opening file: $e'),
            content:
                Text(ctx.t.exceptions.errorOpeningFile(error: e.toString())),
            customSnackBarType: CustomOverlayType.error,
          );
        }
      }
    }

    showCustomSnackBar(
      ctx,
      // content: const Text('File downloaded successfully!'),
      content: Text(ctx.t.common.downloadSuccess),
      action: SnackBarAction(
        // label: 'Open',
        label: ctx.t.action.open,
        onPressed: openFile,
        backgroundColor: Theme.of(ctx).colorScheme.onPrimary.withAlpha(50),
      ),
    );
  }
  //------------------------Download Overlay------------------------//

  //-------------Change Property Visibility (Landlord)-------------//
  static Future<void> handleChangePropertyStatus(
    BuildContext context,
    Future<String> Function() callback, {
    bool showFloating = false,
  }) async {
    late final ({bool isError, String message}) _response;

    try {
      final _result = await showAsyncLoadingOverlay(
        context,
        asyncFunction: () => Future.microtask(callback),
      );
      _response = (isError: false, message: _result);
    } catch (e) {
      _response = (isError: true, message: e.toString());
    }

    if (context.mounted) {
      final _theme = Theme.of(context);
      if (showFloating) {
        showCustomSnackBar(
          context,
          snackBar: CustomSnackBar(
            content: Text(
              _response.message,
              style: _theme.textTheme.bodyLarge?.copyWith(
                color: CustomOverlayType.success.foregroundColor,
              ),
            ),
            behavior: SnackBarBehavior.floating,
            backgroundColor: _response.isError
                ? CustomOverlayType.error.backgroundColor
                : CustomOverlayType.success.backgroundColor,
            hitTestBehavior: HitTestBehavior.opaque,
          ),
        );
        return;
      }

      showCustomSnackBar(
        context,
        content: Text(_response.message),
        customSnackBarType: _response.isError
            ? CustomOverlayType.error
            : CustomOverlayType.success,
      );
      return;
    }
  }
  //-------------Change Property Visibility (Landlord)-------------//

  //-------------Launch URL-------------//
  static Future<void> handleLaunchURL(BuildContext context, String url) async {
    try {
      final parsedUrl = Uri.tryParse(url);
      if (parsedUrl == null || !parsedUrl.hasScheme) {
        throw FormatException('Invalid URL format');
      }

      final launched = await launchUrl(
        parsedUrl,
        mode: LaunchMode.externalApplication,
      );

      if (!launched && context.mounted) {
        showCustomSnackBar(
          context,
          content: Text('No application found to handle $url'),
          customSnackBarType: CustomOverlayType.error,
        );
      }
    } catch (e, stackTrace) {
      if (context.mounted) {
        showCustomSnackBar(
          context,
          content: Text('Failed to launch URL: ${e.toString()}'),
          customSnackBarType: CustomOverlayType.error,
        );
      }
      // Consider logging the error for debugging
      debugPrint('URL Launch Error: $e\n$stackTrace');
    }
  }
  //-------------Launch URL-------------//
}
