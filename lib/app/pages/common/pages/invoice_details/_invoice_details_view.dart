import 'package:fdevs_fitkit/fdevs_fitkit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../../i18n/strings.g.dart';
import '../../../../core/core.dart';
import '../../../../data/repositories/repositories.dart';
import '../../../../widgets/widgets.dart';

class InvoiceDetailsView extends ConsumerStatefulWidget {
  const InvoiceDetailsView({
    super.key,
    required this.invoicePath,
    required this.actionWidget,
    this.appbarActions,
    this.scrollbodyWidget,
  });

  final String invoicePath;
  final InvoiceActionBuilder<ElevatedButton> actionWidget;
  final List<Widget>? appbarActions;
  final Widget? scrollbodyWidget;

  @override
  ConsumerState<InvoiceDetailsView> createState() => _InvoiceDetailsViewState();

  static Widget makePayment({required String invoicePath}) {
    return FormWrapper(
      builder: (formContext) {
        return InvoiceDetailsView(
          invoicePath: invoicePath,
          actionWidget: InvoiceActionBuilder(
            builder: (context) {
              return ElevatedButton(
                onPressed: () async {
                  if (FormWrapper.validate(formContext)) {
                    final _paymentMethod = await showDialog<PaymentOptions>(
                      context: formContext,
                      builder: (popContext) => PaymentTypeSelectorDialog(),
                    );

                    if (_paymentMethod != null && formContext.mounted) {
                      Navigator.maybeOf(formContext)?.pop(_paymentMethod);
                      return;
                    }
                  }
                },
                child: Text('Make a payment'),
              );
            },
          ),
          scrollbodyWidget: const TermsConditionsFormField(),
        );
      },
    );
  }

  static Widget printInvoice({
    required String invoicePath,
    List<Widget>? appbarActions,
    Widget? scrollbodyWidget,
  }) {
    return Builder(
      builder: (context) {
        final _theme = Theme.of(context);

        return InvoiceDetailsView(
          invoicePath: invoicePath,
          appbarActions: appbarActions,
          actionWidget: InvoiceActionBuilder(
            builder: (newCtx) {
              return ElevatedButton.icon(
                onPressed: () async {
                  try {
                    await InvoiceDetailsView.webViewController(newCtx)
                        ?.printCurrentPage();
                    return;
                  } catch (e) {
                    if (context.mounted) {
                      showCustomSnackBar(
                        context,
                        content: Text(
                          'Failed to print invoice, error: ${e.toString()}',
                        ),
                        customSnackBarType: CustomOverlayType.error,
                      );
                      return;
                    }
                  }
                },
                label: Text('Print'),
                icon: Icon(
                  Icons.print_outlined,
                  color: _theme.colorScheme.onPrimary,
                ),
              );
            },
          ),
          scrollbodyWidget: scrollbodyWidget,
        );
      },
    );
  }

  static InAppWebViewController? webViewController(
    InvoiceActionContext intCtx,
  ) {
    final state = intCtx.findAncestorStateOfType<_InvoiceDetailsViewState>();
    return state?.webViewController;
  }

  static Future<void>? reloadWebview(InvoiceActionContext intCtx) {
    return intCtx
        .findAncestorStateOfType<_InvoiceDetailsViewState>()
        ?.reloadWebview();
  }
}

class _InvoiceDetailsViewState extends ConsumerState<InvoiceDetailsView> {
  late InAppWebViewController webViewController;
  late PullToRefreshController pullToRefreshController;

  Future<void> reloadWebview() {
    return pullToRefreshController.beginRefreshing();
  }

  @override
  void initState() {
    super.initState();
    pullToRefreshController = PullToRefreshController(
      onRefresh: () async {
        if (context.mounted) {
          // ignore: unused_result
          await ref.refresh(invoiceDetailsProvider(widget.invoicePath).future);
          await webViewController.reload();
        }
      },
      settings: PullToRefreshSettings(),
    );
  }

  @override
  void dispose() {
    if (context.mounted) {
      pullToRefreshController.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final _invoiceData = ref.watch(invoiceDetailsProvider(widget.invoicePath));

    return Scaffold(
      appBar: AppBar(
        // title: const Text('View Details'),
        title: Text(context.t.pages.invoiceDetails.appbarTitle),
        actions: widget.appbarActions,
      ),
      body: ScaffoldBodyWrapper(
        body: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _invoiceData.when(
              skipLoadingOnRefresh: false,
              data: (data) {
                return Expanded(
                  child: InAppWebView(
                    initialData: InAppWebViewInitialData(data: data.html!),
                    onWebViewCreated: (controller) {
                      webViewController = controller;
                    },
                    pullToRefreshController: pullToRefreshController,
                    onLoadStop: (_, __) async {
                      await webViewController.evaluateJavascript(source: '''
                        var viewport = document.querySelector("meta[name=viewport]");
                        if (viewport) {
                            viewport.setAttribute("content", "width=794, initial-scale=1.0");
                        } else {
                            var meta = document.createElement('meta');
                            meta.name = 'viewport';
                            meta.content = 'width=794, initial-scale=1.0';
                            document.getElementsByTagName('head')[0].appendChild(meta);
                        }
                      ''');

                      pullToRefreshController.endRefreshing();
                    },
                    onReceivedError: (_, __, error) {
                      pullToRefreshController.endRefreshing();
                      showCustomSnackBar(
                        context,
                        content: Text(error.toString()),
                        customSnackBarType: CustomOverlayType.error,
                      );
                    },
                    onProgressChanged: (_, progress) {
                      if (progress == 100) {
                        pullToRefreshController.endRefreshing();
                      }
                    },
                  ),
                );
              },
              error: (error, _) {
                return SizedBox(
                  height: MediaQuery.sizeOf(context).width,
                  width: double.maxFinite,
                  child: EmptyWidget(
                    replaceDefault: false,
                    child: SizedBox.shrink(),
                    emptyBuilder: (_) {
                      return RetryButtons.scrollView(
                        error,
                        onRetry: () {
                          if (context.mounted) {
                            // ignore: unused_result
                            ref.refresh(
                              invoiceDetailsProvider(widget.invoicePath),
                            );
                          }
                        },
                      );
                    },
                  ),
                );
              },
              loading: () {
                return Expanded(
                  child: Center(
                    child: CircularProgressIndicator(),
                  ),
                );
              },
            ),
            if (widget.scrollbodyWidget != null)
              Skeletonizer(
                enabled: _invoiceData.isAnyLoading,
                child: widget.scrollbodyWidget!,
              ),
          ],
        ),
      ),
      bottomNavigationBar: ScaffoldBottomNavWrapper(
        child: Skeletonizer(
          enabled: _invoiceData.isAnyLoading,
          child: SizedBox(
            width: double.maxFinite,
            height: 50,
            child: widget.actionWidget,
          ).fMarginLTRB(24, 16, 24, 16),
        ),
      ),
    );
  }
}

class InvoiceActionBuilder<T extends Widget> extends StatelessWidget {
  const InvoiceActionBuilder({super.key, required this.builder});
  final T Function(InvoiceActionContext invCtx) builder;

  @override
  Widget build(BuildContext context) {
    return builder(InvoiceActionContextImpl(context));
  }
}

abstract class InvoiceActionContext {
  BuildContext get buildContext;

  T? findAncestorStateOfType<T extends State>() {
    return buildContext.findAncestorStateOfType<T>();
  }
}

class InvoiceActionContextImpl extends InvoiceActionContext {
  InvoiceActionContextImpl(this._context);

  final BuildContext _context;

  @override
  BuildContext get buildContext => _context;
}
