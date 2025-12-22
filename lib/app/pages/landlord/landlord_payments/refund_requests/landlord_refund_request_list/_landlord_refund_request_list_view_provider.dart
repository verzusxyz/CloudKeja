part of 'landlord_refund_request_list_view.dart';

class LandlordRefundRequestListViewNotifier extends ChangeNotifier {
  LandlordRefundRequestListViewNotifier(this._repo) {
    pagingController.addPageRequestListener(fetchPage);
    final _initDate = DateTime.now().formatDate(pattern: 'yyyy-MM-dd');
    _fromDate = _toDate = _initDate;
    gEventListener.on<PaymentsEvent>().listen((_) {
      return pagingController.refresh();
    });
  }
  final PaymentsRepository _repo;

  final pagingController = PagingController<int, RefundRequestDetails>(
    firstPageKey: 1,
  );

  final tabFilters = [
    ...PaymentStatus.values.where(
      (status) => !{
        PaymentStatus.pending,
        PaymentStatus.refund,
      }.contains(status),
    )
  ];

  PaymentStatus selectedFilter = PaymentStatus.all;
  void changeFilter(int index) {
    final _newStatus = tabFilters[index];
    if (selectedFilter == _newStatus) return;

    selectedFilter = _newStatus;
    Future.delayed(Durations.short1, pagingController.refresh);
    notifyListeners();
  }

  String? _fromDate;
  String? _toDate;
  void changeDataFilter({String? fromDate, String? toDate}) {
    if (_fromDate == fromDate && _toDate == toDate) return;

    _fromDate = fromDate;
    _toDate = toDate;
    Future.delayed(Durations.short1, pagingController.refresh);
    notifyListeners();
  }

  Future<void> fetchPage(int pageKey) async {
    try {
      final _response = await Future.microtask(
        () => _repo.getRefundRequestList(
          page: pageKey,
          status: selectedFilter.status,
          fromDate: _fromDate,
          toDate: _toDate,
        ),
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

final landlordRefundRequestListViewProvider =
    ChangeNotifierProvider.autoDispose(
  (ref) => LandlordRefundRequestListViewNotifier(
    ref.read(paymentsRepoProvider),
  ),
);
