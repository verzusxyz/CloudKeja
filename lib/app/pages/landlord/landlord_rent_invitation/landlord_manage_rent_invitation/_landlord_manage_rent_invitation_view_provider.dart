part of 'landlord_manage_rent_invitation_view.dart';

class LandlordManageRentInvitationViewNotifier extends ChangeNotifier {
  LandlordManageRentInvitationViewNotifier(this._repo);
  final MyRentRepository _repo;

  //----------------------------Form Props----------------------------//
  Tenant? selectedTenant;
  void handleSelectTenant(Tenant? tenant) {
    if (selectedTenant == tenant) return;

    selectedTenant = tenant;
    tenantIdController.text = tenant?.uniqueId ?? 'N/A';
    notifyListeners();
  }

  late final tenantIdController = TextEditingController();
  int? selectedPropertyId;
  late final fromDateController = TextEditingController();
  late final toDateController = TextEditingController();
  File? agreementFile;
  //----------------------------Form Props----------------------------//

  Future<Either<String, RentDetailsModel>> handleFormSubmit() async {
    final _data = RentDetails(
      tenantId: selectedTenant?.id,
      propertyId: selectedPropertyId,
      startDate: DateTime.tryParse(fromDateController.text),
      endDate: DateTime.tryParse(toDateController.text),
      landlordAgreement: DynamicFileType(local: agreementFile),
    );
    return _repo.manageRentInvite(data: _data);
  }
}

final landlordManageRentInvitationViewProvider =
    ChangeNotifierProvider.autoDispose(
  (ref) => LandlordManageRentInvitationViewNotifier(
    ref.read(myRentRepoProvider),
  ),
);
