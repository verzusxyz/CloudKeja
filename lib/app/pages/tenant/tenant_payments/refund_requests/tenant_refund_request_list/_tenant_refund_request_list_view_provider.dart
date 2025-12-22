part of 'tenant_refund_request_list_view.dart';

class TenantRefundRequestListViewNotifier extends ChangeNotifier {
  TenantRefundRequestListViewNotifier(this._repo) {
    pagingController.addPageRequestListener(fetchPage);
    gEventListener.on<PaymentsEvent>().listen((_) {
      return pagingController.refresh();
    });
  }
  final PaymentsRepository _repo;

  final pagingController = PagingController<int, RefundRequestDetails>(
    firstPageKey: 1,
  );

  Future<void> fetchPage(int pageKey) async {
    try {
      final _response = await Future.microtask(
        () => _repo.getRefundRequestList(page: pageKey),
      );

      final _data = _response.data;
      final _isLastPage = _data?.currentPage == _data?.lastPage;
      if (_isLastPage) {
        pagingController.appendLastPage(_data?.data ?? []);
      } else {
        pagingController.appendPage(
          _data?.data ?? [],
          (_data?.currentPage ?? 0) + 1,
        );
      }
    } catch (e) {
      pagingController.error = e;
    }
  }

  @override
  void dispose() {
    pagingController.dispose();
    super.dispose();
  }
}

final tenantRefundRequestListViewProvider = ChangeNotifierProvider.autoDispose(
  (ref) => TenantRefundRequestListViewNotifier(
    ref.read(paymentsRepoProvider),
  ),
);
