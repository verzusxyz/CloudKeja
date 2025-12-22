part of 'tenant_manage_refund_request_view.dart';

class TenantManageRefundRequestViewNotifier extends ChangeNotifier {
  TenantManageRefundRequestViewNotifier(this._repo);
  final PaymentsRepository _repo;

  //--------------------------Form Props--------------------------//
  RentDetails? selectedRent;
  late final invoiceController = TextEditingController();
  int? selectedReasonId;
  late final bankAccountNameController = TextEditingController();
  late final bankNameController = TextEditingController();
  late final bankAccountNumberController = TextEditingController();
  //--------------------------Form Props--------------------------//

  Future<Either<String, RefundRequestDetails>> handleFormSubmit() async {
    final _data = RefundRequestDetails(
      propertyId: selectedRent?.propertyId,
      reasonId: selectedReasonId,
      bankInfo: BankInfo(
        accHolder: bankAccountNameController.text,
        bankName: bankNameController.text,
        accNumber: bankAccountNumberController.text,
      ),
    );
    return await _repo.manageRefundRequest(data: _data);
  }
}

final tenantManageRefundRequestViewNotifier =
    ChangeNotifierProvider.autoDispose(
  (ref) => TenantManageRefundRequestViewNotifier(
    ref.read(paymentsRepoProvider),
  ),
);
