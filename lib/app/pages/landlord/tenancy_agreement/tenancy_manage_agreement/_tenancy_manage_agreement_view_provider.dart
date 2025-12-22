part of 'tenancy_manage_agreement_view.dart';

class TenancyManageAgreementViewNotifier extends ChangeNotifier {
  void initEdit(LandlordTenancyAgreement? data) {}

  //--------------------------Form Field Props--------------------------//
  late final titleController = TextEditingController();
  late final pdfDescriptionController = TextEditingController();
  //--------------------------Form Field Props--------------------------//
}

final tenancyManageAgreementProvider = ChangeNotifierProvider.autoDispose(
  (ref) {
    return TenancyManageAgreementViewNotifier();
  },
);
