part of 'reset_password_view.dart';

class ResetPasswordViewNotifier extends ChangeNotifier {
  ResetPasswordViewNotifier(this.resetProvider);
  final UserRepository resetProvider;
  //-------------------------Form Field Props-------------------------//
  late final passwordController = TextEditingController();
  late final confirmPasswordController = TextEditingController();
  bool obscurePassword = true;
  bool obscureConfirmPassword = true;
  void toggleObscure([bool isConfirm = false]) {
    if (isConfirm) {
      obscureConfirmPassword = !obscureConfirmPassword;
    } else {
      obscurePassword = !obscurePassword;
    }
    notifyListeners();
  }

  bool rememberMe = true;
  void toggleRememberMe([bool? value]) {
    rememberMe = value ?? !rememberMe;
    notifyListeners();
  }

  Map<String, String?> fieldErrors = {
    "email": null,
    "password": null,
  };
  //-------------------------Form Field Props-------------------------//

  Future<Either<String?, String?>> handleResetPassword(String email) async {
    final _result = await resetProvider.changePassword(
      email: email,
      password: passwordController.text,
      confirmPass: confirmPasswordController.text,
    );
    if (_result.isSuccess) {
      return Either.success('Password changed successfully');
    }
    return Either.failure('Failed to save new password, please try again!');
  }
}

final resetPasswordProvider = ChangeNotifierProvider.autoDispose(
  (ref) {
    final _dependency = ref.read(userRepositoryProvider.notifier);
    return ResetPasswordViewNotifier(_dependency);
  },
);
