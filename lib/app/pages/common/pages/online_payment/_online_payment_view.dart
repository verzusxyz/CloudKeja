import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/core.dart';
import '../../../../data/repositories/repositories.dart';
import '../../../../widgets/widgets.dart';

class OnlinePaymentView extends ConsumerStatefulWidget {
  const OnlinePaymentView({
    super.key,
    required this.invoiceId,
    required this.paymentType,
    this.payableAmount,
    this.onPayment,
  });

  final int invoiceId;
  final PaymentType paymentType;
  final num? payableAmount;
  final void Function(Either<String, String> result)? onPayment;

  @override
  ConsumerState<OnlinePaymentView> createState() => _OnlinePaymentViewState();
}

class _OnlinePaymentViewState extends ConsumerState<OnlinePaymentView> {
  late InAppWebViewController webViewController;
  late PullToRefreshController pullToRefreshController;

  String get urlPath {
    final _userId = ref.read(userRepositoryProvider).valueOrNull?.id;
    final _url = switch (widget.paymentType) {
      PaymentType.rentPayment ||
      PaymentType.securityDeposit =>
        'online-payments-gateways/${widget.invoiceId}/${_userId ?? ""}?payment_type=${widget.paymentType.status}&platform=app',
      PaymentType.subscription =>
        'payments-gateways/${widget.invoiceId}/${_userId ?? ""}?platform=app',
    };

    return _url;
  }

  @override
  void initState() {
    super.initState();

    pullToRefreshController = PullToRefreshController(
      onRefresh: () async {
        await webViewController.reload();
      },
      settings: PullToRefreshSettings(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: const Text('Online Payment'),
      ),
      body: ScaffoldBodyWrapper(
        body: InAppWebView(
          initialUrlRequest: URLRequest(
            url: WebUri.uri(Uri.parse("${DAPIEndpoints.baseURL}/$urlPath")),
          ),
          onWebViewCreated: (controller) {
            webViewController = controller;
          },
          pullToRefreshController: pullToRefreshController,
          onLoadStart: (_, url) => _handlePaymentComplete(url),
          onLoadStop: (controller, url) async {
            pullToRefreshController.endRefreshing();
          },
          onProgressChanged: (controller, progress) {
            if (progress == 100) {
              pullToRefreshController.endRefreshing();
            }
          },
        ),
      ),
    );
  }

  void _handlePaymentComplete(WebUri? url) {
    if (url == null || url.path.isEmpty) {
      widget.onPayment?.call(
        Either.failure('Invalid payment URL'),
      );
      return;
    }

    if (url.queryParameters['status'] == 'success') {
      return widget.onPayment?.call(
        Either.success('Payment completed successfully.'),
      );
    } else if (url.queryParameters['status'] == 'failed') {
      return widget.onPayment?.call(
        Either.failure('Payment failed successfully.'),
      );
    }
  }
}
