part of 'manage_tenant_view.dart';

class ManageTenantNotifier extends ChangeNotifier {
  ManageTenantNotifier(this._repo, {required this.formFieldController});

  final LandlordTenantRepository _repo;
  final TenantProfileFormFieldNotifier formFieldController;

  //-------------------------Create Tenant-------------------------//
  Future<Tenant> handleManageTenant([int? id]) async {
    final _tenant = formFieldController.getModUser(isLandlord: true);
    return await _repo.manageTenant(id: id, tenant: _tenant);
  }
  //-------------------------Create Tenant-------------------------//
}

final manageTenantProvider = ChangeNotifierProvider.autoDispose(
  (ref) {
    final _formFieldController = ref.watch(tenantProfileFormFieldProvider);
    final _dependency = ref.read(landlordTenantRepoProvider);

    return ManageTenantNotifier(
      _dependency,
      formFieldController: _formFieldController,
    );
  },
);
