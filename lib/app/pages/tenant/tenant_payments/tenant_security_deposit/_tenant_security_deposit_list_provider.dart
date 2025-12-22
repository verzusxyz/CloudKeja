part of 'tenant_security_deposit_list_view.dart';

class TenantSecurityDepositListViewNotifier extends ChangeNotifier {
  TenantSecurityDepositListViewNotifier(this._repo) {
    pagingController.addPageRequestListener(fetchPage);
    gEventListener.on<PaymentsEvent>().listen((_) {
      return pagingController.refresh();
    });
  }
  final PaymentsRepository _repo;

  late final searchController = TextEditingController();
  final pagingController = PagingController<int, SecurityDepositDetails>(
    firstPageKey: 1,
  );

  Future<void> fetchPage(int pageKey) async {
    try {
      final _response = await Future.microtask(
        () => _repo.getSecurityDepositList(page: pageKey),
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

final tenantSecurityDepositListViewProvider =
    ChangeNotifierProvider.autoDispose(
  (ref) => TenantSecurityDepositListViewNotifier(
    ref.read(paymentsRepoProvider),
  ),
);
