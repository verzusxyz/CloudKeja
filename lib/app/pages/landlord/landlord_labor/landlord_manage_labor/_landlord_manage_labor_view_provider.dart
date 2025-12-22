part of 'landlord_manage_labor_view.dart';

class LandlordManageLaborViewNotifier extends ChangeNotifier {
  LandlordManageLaborViewNotifier(this._repo);
  final LandlordLaborRepository _repo;

  //----------------------Form Field Props----------------------//
  late final fullNameController = TextEditingController();
  late final emailController = TextEditingController();
  late final mobileNumberController = TextEditingController();
  late final salaryController = TextEditingController();
  CountryCode? selectedCountryCode;
  void handleSelectCountryCode(CountryCode value) {
    selectedCountryCode = value;
    notifyListeners();
  }

  String? selectedGender;
  void handleSelectGender(String? value) {
    selectedGender = value;
    notifyListeners();
  }

  void handleInitEdit(Labor labor) {
    fullNameController.text = labor.name ?? '';
    emailController.text = labor.email ?? '';
    mobileNumberController.text = labor.phone?.mobileNo ?? '';
    salaryController.text = labor.salary?.toString() ?? '0';
    selectedCountryCode = CountryCode.tryFromDialCode(
      labor.phone?.mobileCode ?? '',
    );
    selectedGender = labor.gender;
  }
  //----------------------Form Field Props----------------------//

  Future<Either<String, Labor>> handleManageLabor([int? id]) async {
    final _data = Labor(
      name: fullNameController.text,
      email: emailController.text,
      phone: Phone(
        mobileCode: selectedCountryCode?.dialCode,
        mobileNo: mobileNumberController.text,
      ),
      salary: num.tryParse(salaryController.text),
      gender: selectedGender,
    );
    return await _repo.manageLabor(id: id, labor: _data);
  }
}

final landlordManageLaborProvider = ChangeNotifierProvider.autoDispose(
  (ref) => LandlordManageLaborViewNotifier(
    ref.read(landlordLaborRepoProvider),
  ),
);
