part of 'tenant_my_rent_list_view.dart';

class TenatMyRentListViewNotifier extends ChangeNotifier {
  TenatMyRentListViewNotifier(this._repo) {
    pagingController.addPageRequestListener(fetchPage);
    gEventListener.on<MyRentEvent>().listen((_) {
      return pagingController.refresh();
    });
  }
  final MyRentRepository _repo;

  late final searchController = TextEditingController();
  final PagingController<int, RentDetails> pagingController = PagingController(
    firstPageKey: 1,
  );

  MyRentStatus selectedFilter = MyRentStatus.pending;
  void changeFilter(int index) {
    final _newStatus = MyRentStatus.values[index];
    if (selectedFilter == _newStatus) return;

    selectedFilter = _newStatus;
    Future.delayed(Durations.short1, pagingController.refresh);
    notifyListeners();
  }

  Future<void> fetchPage(int pageKey) async {
    try {
      final _response = await Future.microtask(
        () => _repo.getRentList(
          page: pageKey,
          search: searchController.text,
          status: selectedFilter.status,
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

final tenantMyRentListViewProvider = ChangeNotifierProvider.autoDispose(
  (ref) => TenatMyRentListViewNotifier(
    ref.read(myRentRepoProvider),
  ),
);
