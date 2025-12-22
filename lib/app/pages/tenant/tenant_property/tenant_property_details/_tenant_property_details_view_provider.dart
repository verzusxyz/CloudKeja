part of 'tenant_property_details_view.dart';

class TenantPropertyDetailsViewNotifier extends ChangeNotifier {
  final ApplicationRepository _repo;
  TenantPropertyDetailsViewNotifier(this._repo);

  late final fromDateController = TextEditingController();
  late final toDateController = TextEditingController();

  Future<Either<String, ApplicationDetailsModel>> handleFormSubmit({
    int? id,
    required int propertyId,
  }) async {
    final _data = Application(
      propertyId: propertyId,
      startDate: DateTime.tryParse(fromDateController.text),
      endDate: DateTime.tryParse(toDateController.text),
    );

    fromDateController.clear();
    toDateController.clear();
    return _repo.createApplication(id: id, data: _data);
  }

  @override
  void dispose() {
    fromDateController.dispose();
    toDateController.dispose();
    super.dispose();
  }
}

final tenantPropertyDetailsViewProvider = ChangeNotifierProvider.autoDispose(
  (ref) => TenantPropertyDetailsViewNotifier(ref.read(applicationRepoProvider)),
);
