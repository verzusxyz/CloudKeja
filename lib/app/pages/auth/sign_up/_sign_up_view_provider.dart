part of 'sign_up_view.dart';

class SignUpViewNotifier extends ChangeNotifier {
  SignUpViewNotifier(this.signupProvider);
  final UserRepository signupProvider;
  //-------------------------Form Field Props-------------------------//
  late final fullNameController = TextEditingController();
  late final emailController = TextEditingController();
  late final passwordController = TextEditingController();
  bool obscurePassword = true;
  void toggleObscure() {
    obscurePassword = !obscurePassword;
    notifyListeners();
  }

  Map<String, String?> fieldErrors = {
    "fullName": null,
    "email": null,
    "password": null,
  };
  //-------------------------Form Field Props-------------------------//

  Future<Either<String?, String?>> handleSignUp([
    String role = 'landlord',
  ]) async {
    final _result = await signupProvider.signUp(
      email: emailController.text,
      password: passwordController.text,
      name: fullNameController.text,
      role: role,
    );

    if (_result.isFailure) {
      return Either.failure(_result.left);
    }

    return Either.success('Signed up successfully.');
  }
}

final signupProvider = ChangeNotifierProvider.autoDispose((ref) {
  final _dependency = ref.read(userRepositoryProvider.notifier);
  return SignUpViewNotifier(_dependency);
});
