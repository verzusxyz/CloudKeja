part of 'tenant_manage_maintenance_view.dart';

class TenantManageMaintenanceViewNotifier extends ChangeNotifier {
  TenantManageMaintenanceViewNotifier(this._repo);
  final MaintenanceRepository _repo;

  //----------------------------Form Props----------------------------//
  int? selectedPropertyId;
  late final titleController = TextEditingController();
  late final descriptionController = TextEditingController();

  late final images = <DynamicFileType>[];
  void handleImage(DynamicFileType value, [int? index]) {
    index != null ? images.removeAt(index) : images.add(value);

    notifyListeners();
  }

  void handleInitEdit(Maintenance model) {
    selectedPropertyId = model.propertyId;
    titleController.text = model.title ?? '';
    descriptionController.text = model.description ?? '';
    images
      ..clear()
      ..addAll([...?model.images]);

    _previousImages = [
      ...?model.images
          ?.where((element) => element.remote != null)
          .map((e) => e.remote!)
    ];
  }

  //----------------------------Form Props----------------------------//
  List<String>? _previousImages;
  Future<Either<String, MaintenanceDetailsModel>> handleFormSubmit([int? id]) {
    var _data = Maintenance(
      propertyId: selectedPropertyId,
      title: titleController.text,
      description: descriptionController.text,
      images: images,
    );

    if (_previousImages?.isNotEmpty == true) {
      List<String> _removedImages = [];
      for (var previousImage in _previousImages!) {
        final isRemoved = !(_data.images?.any(
              (newImage) => newImage.remote == previousImage,
            ) ??
            false);

        if (isRemoved) {
          _removedImages.add(
            previousImage.split('${DAPIEndpoints.baseURL}/').last,
          );
        }
      }
      _data = _data.copyWith(removedImages: _removedImages);
    }

    return _repo.manageMaintenance(id: id, data: _data);
  }

  @override
  void dispose() {
    titleController.dispose();
    descriptionController.dispose();
    super.dispose();
  }
}

final tenantManageMaintenanceViewProvider = ChangeNotifierProvider.autoDispose(
  (ref) => TenantManageMaintenanceViewNotifier(
    ref.read(maintenanceRepoProvider),
  ),
);
