part of 'landlord_maintenance_list_view.dart';

class LandlordMaintenanceListViewNotifier extends ChangeNotifier {
  LandlordMaintenanceListViewNotifier(this._repo) {
    pagingController.addPageRequestListener(fetchPage);
    gEventListener.on<MaintenanceEvent>().listen((_) {
      return pagingController.refresh();
    });
  }
  final MaintenanceRepository _repo;

  late final searchController = TextEditingController();
  final pagingController = PagingController<int, Maintenance>(
    firstPageKey: 1,
  );

  MaintenanceStatus selectedStatus = MaintenanceStatus.pending;
  void changeFilter(int index) {
    final _newStatus = MaintenanceStatus.values[index];
    if (selectedStatus == _newStatus) return;

    selectedStatus = _newStatus;
    Future.delayed(Durations.short1, pagingController.refresh);
    notifyListeners();
  }

  Future<void> fetchPage(int pageKey) async {
    try {
      final _response = await Future.microtask(
        () => _repo.getMaintenanceList(
          page: pageKey,
          status: selectedStatus.name,
          search: searchController.text,
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

final landlordMaintenanceListViewProvider = ChangeNotifierProvider.autoDispose(
  (ref) => LandlordMaintenanceListViewNotifier(
    ref.read(maintenanceRepoProvider),
  ),
);
