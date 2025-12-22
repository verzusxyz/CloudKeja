part of 'landlord_manage_withdraw_method_view.dart';

class LandlordManageWithdrawMethodViewNotifier extends ChangeNotifier {
  LandlordManageWithdrawMethodViewNotifier(this._repo);
  final LandlordWithdrawRepository _repo;

  //---------------------------Form Props---------------------------//
  AdminWithdrawMethod? selectedMethod;
  void handleSelectPaymentMethod(AdminWithdrawMethod? method) {
    if (method == selectedMethod) return;
    selectedMethod = method;

    dynamicFields.clear();
    if (method != null) {
      for (var field in method.meta!) {
        if (field.input != null) {
          dynamicFields[field.input!] = TextEditingController();
        }
      }
    }
    notifyListeners();
  }

  late final accountNumberController = TextEditingController();

  final Map<String, TextEditingController> dynamicFields = {};

  //---------------------------Form Props---------------------------//

  void handleEditInit(UserWithdrawMethod model) {
    selectedMethod = AdminWithdrawMethod(
      id: model.methodId,
      name: model.name,
      meta: model.meta,
    );
    accountNumberController.text = model.accountNo ?? "";

    dynamicFields.clear();
    if (model.infos != null) {
      for (var entry in model.infos!.entries) {
        dynamicFields[entry.key] = TextEditingController(text: entry.value);
      }
    }
    notifyListeners();
  }

  Future<Either<String, UserWithdrawMethod>> handleFormSubmit([int? id]) async {
    final _data = UserWithdrawMethod(
      methodId: selectedMethod?.id,
      accountNo: accountNumberController.text,
      infos: dynamicFields.map((key, value) {
        return MapEntry(key, value.text);
      }),
    );

    return _repo.manageUserWithdrawMethod(id: id, data: _data);
  }

  @override
  void dispose() {
    selectedMethod = null;
    dynamicFields.clear();
    super.dispose();
  }
}

final landlordManageWithdrawMethodViewNotifier =
    ChangeNotifierProvider.autoDispose(
  (ref) => LandlordManageWithdrawMethodViewNotifier(
    ref.read(landlordWithdrawRepoProvider),
  ),
);
