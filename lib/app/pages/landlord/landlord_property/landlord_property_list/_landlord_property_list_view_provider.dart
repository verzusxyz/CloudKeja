part of 'landlord_property_list_view.dart';

class LandlordPropertyListViewNotifier extends ChangeNotifier {
  LandlordPropertyListViewNotifier(this._repo) {
    pagingController.addPageRequestListener(fetchPage);
    gEventListener.on<PropertyEvent>().listen((_) {
      return pagingController.refresh();
    });
  }
  final PropertyRepository _repo;

  final pagingController = PagingController<int, PropertyModel>(
    firstPageKey: 1,
  );

  PropertyStatus selectedStatus = PropertyStatus.allProperty;
  void changeFilter(int index) {
    final _newStatus = PropertyStatus.values[index];
    if (selectedStatus == _newStatus) return;

    selectedStatus = _newStatus;
    Future.delayed(Durations.short1, pagingController.refresh);
    notifyListeners();
  }

  Future<void> fetchPage(int pageKey) async {
    try {
      final _response = await Future.microtask(
        () => _repo.getProperties(
          page: pageKey,
          status: selectedStatus.statusId,
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

final landlordPropertyListViewProvider = ChangeNotifierProvider.autoDispose(
  (ref) => LandlordPropertyListViewNotifier(ref.read(propertyRepoProvider)),
);
