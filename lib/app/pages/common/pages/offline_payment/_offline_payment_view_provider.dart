part of '_offline_payment_view.dart';

class OfflinePaymentViewNotifier extends ChangeNotifier {
  OfflinePaymentViewNotifier(this._repo);
  final PaymentsRepository _repo;

  File? paymentReceipt;
  void handleSelectReceipt(File? file) {
    paymentReceipt = file;
    notifyListeners();
  }

  OfflinePaymentMethod? selectedMethod;
  void handleSelectPaymentMethod(OfflinePaymentMethod? value) {
    selectedMethod = value;
    notifyListeners();
  }

  Future<Either<String, String>> handleFormSubmit({
    required int invoiceId,
    required String paymentType,
  }) async {
    return await _repo.manageOfflinePayment(
      gatewayId: selectedMethod!.id!,
      invoiceId: invoiceId,
      invoiceReceipt: paymentReceipt!,
      paymentType: paymentType,
    );
  }
}

final offlinePaymentViewProvider = ChangeNotifierProvider.autoDispose(
  (ref) => OfflinePaymentViewNotifier(ref.read(paymentsRepoProvider)),
);
