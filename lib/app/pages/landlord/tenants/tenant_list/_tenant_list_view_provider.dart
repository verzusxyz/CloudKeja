part of 'tenant_list_view.dart';

class TenantListViewNotifier extends ChangeNotifier {
  TenantListViewNotifier(this._repo) {
    pagingController.addPageRequestListener(fetchPage);
    gEventListener.on<LandlordTenantEvent>().listen((_) {
      return pagingController.refresh();
    });
  }
  final LandlordTenantRepository _repo;

  late final searchController = TextEditingController();
  final PagingController<int, Tenant> pagingController = PagingController(
    firstPageKey: 1,
  );

  TenantType selectedFilter = TenantType.newTenant;
  void changeFilter(int index) {
    final _newStatus = TenantType.values[index];
    if (selectedFilter == _newStatus) return;

    selectedFilter = _newStatus;
    Future.delayed(Durations.short1, pagingController.refresh);
    notifyListeners();
  }

  Future<void> fetchPage(int pageKey) async {
    try {
      final _response = await Future.microtask(
        () => _repo.getTenants(
          page: pageKey,
          search: searchController.text,
          filter: selectedFilter.filterValue,
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
    searchController.dispose();
    super.dispose();
  }
}

final tenantListViewProvider = ChangeNotifierProvider.autoDispose(
  (ref) => TenantListViewNotifier(ref.read(landlordTenantRepoProvider)),
);
