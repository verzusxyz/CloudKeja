part of 'landlord_labor_list_view.dart';

class LandlordLaborListViewNotifier extends ChangeNotifier {
  LandlordLaborListViewNotifier(this._repo) {
    pagingController.addPageRequestListener(fetchPage);
    gEventListener.on<LandlordLaborEvent>().listen((_) {
      return pagingController.refresh();
    });
  }
  final LandlordLaborRepository _repo;

  late final pagingController = PagingController<int, Labor>(
    firstPageKey: 1,
  );

  Future<void> fetchPage(int pageKey) async {
    try {
      final _response = await Future.microtask(
        () => _repo.getLabors(page: pageKey),
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

final landlordLaborListViewProvider = ChangeNotifierProvider.autoDispose(
  (ref) => LandlordLaborListViewNotifier(ref.read(landlordLaborRepoProvider)),
);
