part of 'landlord_home_view.dart';

class LandlordHomeViewNotifier extends ChangeNotifier {
  LandlordHomeViewNotifier(this._repo) {
    pagingController.addPageRequestListener(fetchPage);
    gEventListener.on<PropertyEvent>().listen((_) {
      return pagingController.refresh();
    });
  }
  final PropertyRepository _repo;

  final pagingController = PagingController<int, PropertyModel>(
    firstPageKey: 1,
  );

  Future<void> fetchPage(int pageKey) async {
    try {
      final _response = await Future.microtask(
        () => _repo.getProperties(page: pageKey),
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

  Future<String> changeStatus(int id, bool isPublished) async {
    return await _repo.changePropertyVisibility(
      id: id,
      isPublished: isPublished,
    );
  }

  @override
  void dispose() {
    pagingController.dispose();
    super.dispose();
  }
}

final landlordHomeViewProvider = ChangeNotifierProvider.autoDispose(
  (ref) => LandlordHomeViewNotifier(ref.read(propertyRepoProvider)),
);
