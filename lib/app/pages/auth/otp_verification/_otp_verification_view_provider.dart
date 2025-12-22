part of 'otp_verification_view.dart';

class OTPVerificationViewNotifier extends ChangeNotifier {
  OTPVerificationViewNotifier(this.userProvider) {
    _startCountDown();
  }
  final UserRepository userProvider;

  @override
  void dispose() {
    _cancelTimer();
    otpController.dispose();
    super.dispose();
  }

  //---------------------Form Field Props---------------------//
  late final otpController = TextEditingController();
  Map<String, String?> fieldErrors = {
    'otp_field': null,
  };

  // Countdown Timer
  Timer? _timer;
  int _resendDelayInSeconds = 180;
  Stream<int> get resendDelayInSeconds => Stream.value(_resendDelayInSeconds);
  int _resendCount = 0;
  bool get reachedMaxResend => _resendCount == 100;
  // Countdown method
  void _startCountDown() {
    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_resendDelayInSeconds > 0) {
        _resendDelayInSeconds--;
        notifyListeners();
      } else {
        _cancelTimer();
      }
    });
  }

  void _resetTimer() {
    if (reachedMaxResend) return;

    _resendDelayInSeconds = 180;
    _resendCount++;
    _startCountDown();
  }

  void _cancelTimer() {
    _timer?.cancel();
    _timer = null;
  }
  //---------------------Form Field Props---------------------//

  // Handle OTP Submit
  Future<Either<String, bool>> handleOTPSubmit(
    String email, {
    bool? saveToken,
  }) async {
    final _result = await userProvider.submitOtp(
      email: email,
      otp: otpController.text,
      saveToken: saveToken,
    );
    fieldErrors.updateAll((key, value) => null);
    notifyListeners();
    if (_result.isFailure) {
      fieldErrors['otp_field'] = _result.left;
      notifyListeners();
      return Either.failure('Request completed with errors.');
    }
    return Either.success(true);
  }

  // Handle OTP Resend
  Future<Either<String, String>?> handleOTPResend(String email) async {
    if (reachedMaxResend) {
      return Either.failure(
        'Max resend reached. Please try again later.',
      );
    }
    final _result = await userProvider.resubmitOtp(email: email);
    if (_result.isFailure) {
      return Either.failure(_result.left ?? '');
    }
    final _value = await Future.delayed(
      const Duration(seconds: 2),
      _resetTimer,
    ).then((value) => 'OTP resend sucessfully, please check your email.');
    return Either.success(_value);
  }
}

final otpViewProvider =
    ChangeNotifierProvider.autoDispose<OTPVerificationViewNotifier>(
  (ref) {
    final _opt = ref.read(userRepositoryProvider.notifier);
    return OTPVerificationViewNotifier(_opt);
  },
);
