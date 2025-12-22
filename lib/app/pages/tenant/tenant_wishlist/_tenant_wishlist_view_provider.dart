part of 'tenant_wishlist_view.dart';

class TenantWishListViewNotifier extends ChangeNotifier {
  TenantWishListViewNotifier(this._repo) {
    pagingController.addPageRequestListener(fetchPage);
    gEventListener.on<PropertyEvent>().listen((_) {
      return pagingController.refresh();
    });
  }
  final PropertyRepository _repo;

  final pagingController = PagingController<int, FavoriteModel>(
    firstPageKey: 1,
  );

  Future<void> fetchPage(int pageKey) async {
    try {
      final _response = await Future.microtask(
        () => _repo.getFavorites(page: pageKey),
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

final tenantWishListViewProvider = ChangeNotifierProvider.autoDispose(
  (ref) => TenantWishListViewNotifier(ref.read(propertyRepoProvider)),
);
