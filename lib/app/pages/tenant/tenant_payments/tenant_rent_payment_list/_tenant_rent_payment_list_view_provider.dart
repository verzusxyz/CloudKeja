part of 'tenant_rent_payment_list_view.dart';

class TenantRentPaymentListViewNotifier extends ChangeNotifier {
  TenantRentPaymentListViewNotifier(this._repo) {
    pagingController.addPageRequestListener(fetchPage);
    gEventListener.on<PaymentsEvent>().listen((_) {
      return pagingController.refresh();
    });
  }
  final PaymentsRepository _repo;

  late final searchController = TextEditingController();
  final pagingController = PagingController<int, RentPaymentDetails>(
    firstPageKey: 1,
  );

  Future<void> fetchPage(int pageKey) async {
    try {
      final _response = await Future.microtask(
        () => _repo.getRentPaymentList(page: pageKey),
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
    searchController.dispose();
    super.dispose();
  }
}

final tenantRentPaymentListViewProvider = ChangeNotifierProvider.autoDispose(
  (ref) => TenantRentPaymentListViewNotifier(
    ref.read(paymentsRepoProvider),
  ),
);
