part of 'landlord_withdraw_request_view.dart';

class LandlordWithdrawRequestViewNotifier extends ChangeNotifier {
  LandlordWithdrawRequestViewNotifier(this._repo);
  final LandlordWithdrawRepository _repo;

  UserWithdrawMethod? selectedPaymentMethod;
  void handleSelectedPaymentMethod(UserWithdrawMethod? method) {
    selectedPaymentMethod = method;
    notifyListeners();
  }

  late final withdrawAmountController = TextEditingController();

  Future<Either<String, WithdrawDetailsModel>> handleFormSubmit() async {
    final _result = await _repo.createUserWithdrawRequest(
      methodId: selectedPaymentMethod!.id!,
      amount: withdrawAmountController.text.plainNumber,
    );

    if (_result.isSuccess) {
      withdrawAmountController.clear();
    }

    return _result;
  }
}

final landlordWithdrawRequestViewProvider = ChangeNotifierProvider.autoDispose(
  (ref) => LandlordWithdrawRequestViewNotifier(
    ref.read(landlordWithdrawRepoProvider),
  ),
);
