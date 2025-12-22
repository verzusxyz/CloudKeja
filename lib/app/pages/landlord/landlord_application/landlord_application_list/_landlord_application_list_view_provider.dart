part of 'landlord_application_list_view.dart';

class LandlordApplicationListViewNotifier extends ChangeNotifier {
  LandlordApplicationListViewNotifier(this._repo) {
    pagingController.addPageRequestListener(fetchPage);
    gEventListener.on<ApplicationEvent>().listen((_) {
      return pagingController.refresh();
    });
  }
  final ApplicationRepository _repo;

  late final searchController = TextEditingController();
  final PagingController<int, Application> pagingController = PagingController(
    firstPageKey: 1,
  );

  ApplicationStatus selectedFilter = ApplicationStatus.all;
  void changeFilter(int index) {
    final _newStatus = ApplicationStatus.values[index];
    if (selectedFilter == _newStatus) return;
    selectedFilter = _newStatus;
    Future.delayed(Durations.short1, pagingController.refresh);
    notifyListeners();
  }

  Future<void> fetchPage(int pageKey) async {
    try {
      final _response = await Future.microtask(
        () => _repo.getApplicationList(
          page: pageKey,
          search: searchController.text,
          status: selectedFilter.statusId,
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

final landlordApplicationListViewProvider = ChangeNotifierProvider.autoDispose(
  (ref) => LandlordApplicationListViewNotifier(
    ref.read(applicationRepoProvider),
  ),
);
