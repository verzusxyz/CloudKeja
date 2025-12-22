part of 'forgot_password_view.dart';

class ForgotPasswordViewNotifier extends ChangeNotifier {
  ForgotPasswordViewNotifier(this.forgotPassProvider);
  final UserRepository forgotPassProvider;

  //-------------------------Form Field Props-------------------------//
  late final emailController = TextEditingController();
  Map<String, String?> fieldErrors = {
    "email": null,
    "password": null,
  };
  //-------------------------Form Field Props-------------------------//

  Future<Either<String?, String?>> handleForgotPassword() async {
    final _result = await forgotPassProvider.getResetPasswordOtp(
      email: emailController.text,
    );

    if (_result.isSuccess) {
      return Either.success('Signed in successfully');
    }
    return Either.failure(_result.left);
  }
}

final forgotPasswordProvider = ChangeNotifierProvider.autoDispose((ref) {
  final _dependency = ref.read(userRepositoryProvider.notifier);
  return ForgotPasswordViewNotifier(_dependency);
});
