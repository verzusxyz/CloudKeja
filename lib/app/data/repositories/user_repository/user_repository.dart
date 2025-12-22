import 'dart:async';
import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../repositories.dart';

export '../../models/models.dart' hide Link;

class UserRepository extends AsyncNotifier<User?> {
  late final HTTPDioClient httpClient;

  @override
  FutureOr<User?> build() async {
    httpClient = ref.watch(httpDioClientProvider);
    return await getUser().then((value) => value.right);
  }

  //--------------------------------Get User--------------------------------//
  Future<Either<String, User?>> getUser() async {
    try {
      final _response = await httpClient.restClient.get(
        DAPIEndpoints.userProfile,
        options: DioOptions(headers: httpClient.getAuthHeader),
      );
      if (_response.statusCode == HttpStatus.ok) {
        final _model = UserModel.fromJson(_response.data);

        state = AsyncValue.data(_model.data);

        return Either.success(_model.data);
      }
    } on DioException catch (e) {
      return Either.failure(
        e.response?.data['message'] ??
            'Something went wrong, please try again!',
      );
    }

    return Either.failure("Something went wrong, please try again!");
  }
  //--------------------------------Get User--------------------------------//

  //--------------------------------Sign In--------------------------------//
  Future<Either<String?, SignInModel?>> signIn({
    required String email,
    required String password,
  }) async {
    try {
      final _response = await httpClient.restClient.post(
        DAPIEndpoints.signin,
        data: {
          "email": email,
          "password": password,
        },
      );
      if (_response.statusCode == HttpStatus.ok) {
        final _data = SignInModel.fromJson(_response.data);
        if (_data.data?.token != null) {
          await httpClient.setToken(_data.data!.token!, true);
        }
        await update((_) async => await getUser().then((value) => value.right));

        return Either.success(_data);
      } else if (_response.statusCode == HttpStatus.created) {
        return Either.failure(HttpStatus.created.toString());
      }
    } on DioException catch (e) {
      return Either.failure(e.response?.data['message']);
    }
    return Either.failure('Something went wrong, please try again!');
  }
  //--------------------------------Sign In--------------------------------//

  //--------------------------------Sign Out--------------------------------//
  Future<Either<String?, String?>> signOut() async {
    try {
      final _response = await httpClient.restClient.get(
        DAPIEndpoints.signout,
        options: DioOptions(headers: httpClient.getAuthHeader),
      );
      if (_response.statusCode == HttpStatus.ok) {
        state = const AsyncValue.data(null);
        await httpClient.prefs.remove(DAppSPrefsKeys.authToken);
        return Either.success(_response.data?['message'] ?? '');
      }
    } on DioException catch (e) {
      return Either.failure(e.response?.data['message'] ?? '');
    }
    return Either.failure('Something went wrong, please try again!');
  }
  //--------------------------------Sign Out--------------------------------//

  //--------------------------------Sign Up--------------------------------//
  Future<Either<String?, String?>> signUp({
    required String email,
    required String password,
    required String name,
    required String role,
  }) async {
    try {
      final _response = await httpClient.restClient.post(
        DAPIEndpoints.signup,
        data: {
          "email": email,
          "password": password,
          "name": name,
          "role": role,
        },
      );
      if (_response.statusCode == HttpStatus.ok) {
        return Either.success('Signed up successfully');
      }
    } on DioException catch (e) {
      return Either.failure(
        e.response?.data['message'] ??
            'Something went wrong, please try again!',
      );
    }
    return Either.failure('Something went wrong, please try again!');
  }
  //--------------------------------Sign Up--------------------------------//

  //--------------------------------Submit OTP--------------------------------//
  Future<Either<String?, OtpSubmitModel?>> submitOtp({
    required String email,
    required String otp,

    /// If [saveToken] `null`, Does nothing. if `true` then overrides with saving to prefs. if `false` just overrides
    bool? saveToken,
  }) async {
    if (saveToken == true) {
      await httpClient.prefs.remove(DAppSPrefsKeys.authToken);
    }

    try {
      final _response = await httpClient.restClient.post(
        DAPIEndpoints.submitotp,
        data: {"email": email, "otp": otp},
      );
      if (_response.statusCode == HttpStatus.ok) {
        final _data = OtpSubmitModel.fromJson(_response.data);
        if (saveToken != null && _data.token != null) {
          await httpClient.setToken(_data.token!, saveToken == true);
        }

        return Either.success(_data);
      }
    } on DioException catch (e) {
      return Either.failure(
        e.response?.data?['error'] ?? 'Something went wrong, please try again!',
      );
    }
    return Either.failure('Something went wrong, please try again!');
  }
  //--------------------------------Submit OTP--------------------------------//

  //--------------------------------Re-Submit OTP--------------------------------//
  Future<Either<String?, String?>> resubmitOtp({
    required String email,
  }) async {
    try {
      final _response = await httpClient.restClient.post(
        DAPIEndpoints.resendotp,
        data: {
          "email": email,
        },
      );
      if (_response.statusCode == HttpStatus.ok) {
        return Either.success('OTP sent successfully');
      }
    } on DioException catch (e) {
      return Either.failure(
          e.response?.data?['message'] ?? 'Something went wrong');
    }
    return Either.failure('Something went wrong, please try again!');
  }
  //--------------------------------Re-Submit OTP--------------------------------//

  //------------------------Send OTP For Reset Password------------------------//
  Future<Either<String?, String?>> getResetPasswordOtp({
    required String email,
  }) async {
    try {
      final _response = await httpClient.restClient.post(
        DAPIEndpoints.resetPassOtp,
        data: {"email": email},
        options: DioOptions(contentType: DioHeaders.jsonContentType),
      );
      if (_response.statusCode == HttpStatus.ok) {
        return Either.success('Otp send successfully');
      }
    } on DioException catch (e) {
      return Either.failure(
        e.response?.data['message'] ??
            'Something went wrong, please try again!',
      );
    }
    return Either.failure('Something went wrong, please try again!');
  }
  //------------------------Send OTP For Reset Password------------------------//

  //------------------------Reset Password------------------------//
  Future<Either<String?, String?>> changePassword({
    required String password,
    required String confirmPass,
    required String email,
  }) async {
    try {
      final _response = await httpClient.restClient.post(
        DAPIEndpoints.resetPassword,
        data: {
          "password": password,
          "password_confirmation": confirmPass,
          "email": email,
        },
        options: DioOptions(headers: httpClient.getAuthHeader),
      );
      if (_response.statusCode == HttpStatus.ok) {
        return Either.success(_response.data?['message']);
      }
    } on DioException catch (e) {
      return Either.failure(
        e.response?.data['message'] ??
            'Something went wrong, please try again!',
      );
    }
    return Either.failure('Something went wrong, please try again!');
  }
  //------------------------Reset Password------------------------//

  //------------------------Update Profile------------------------//
  Future<Either<String?, User?>> updateProfile(User data) async {
    final _formData = await Future.microtask(data.toRequest().getTypedData);

    try {
      final _response = await httpClient.restClient.post(
        DAPIEndpoints.userProfileSetup,
        options: DioOptions(
          contentType: DioHeaders.multipartFormDataContentType,
          headers: httpClient.getAuthHeader,
        ),
        data: _formData,
      );

      if (_response.statusCode == HttpStatus.ok) {
        final _user = UserModel.fromJson(_response.data).data;

        state = AsyncValue.data(_user);
        return Either.success(_user);
      }

      return Either.failure('Something went wrong, please try again');
    } on DioException catch (e) {
      return Either.failure(
        e.response?.data['message'] ?? 'Something went wrong, please try again',
      );
    }
  }

  //------------------------Get Country------------------------//
  Future<Either<String?, List<Country>>> getCountries() async {
    try {
      String _json = await Future.microtask(
        () => rootBundle.loadString(
          'assets/json/countries.json',
          cache: true,
        ),
      );

      final _countries = List<Country>.from(
        json.decode(_json).map((x) => Country.fromJson(x)),
      ).toSet().toList();
      return Either.success(_countries);
      // ignore: empty_catches
    } catch (e) {}

    return Either.failure('Failed to get countries.');
  }
  //------------------------Get Country------------------------//

  //------------------------Get Subscription Plans------------------------//
  Future<SubscriptionPlanModel> getSubscriptionPlans() async {
    try {
      final _response = await httpClient.restClient.get(
        DAPIEndpoints.subscriptionPlans,
        options: DioOptions(headers: httpClient.getAuthHeader),
      );

      if (_response.statusCode == HttpStatus.ok) {
        final _model = SubscriptionPlanModel.fromJson(_response.data);
        return _model;
      }

      throw Exception(
        'Failed to get subscription plans, please try again.\nstatusCode:${_response.statusCode}',
      );
    } on DioException catch (err) {
      throw Exception(
        err.response?.data['message'] ?? 'Failed to get subscription plans.',
      );
    } catch (e) {
      throw Exception('An unexpected error occurred: $e');
    }
  }
  //------------------------Get Subscription Plans------------------------//
}

final userRepositoryProvider = AsyncNotifierProvider<UserRepository, User?>(
  () => UserRepository(),
);

final countryProvider = FutureProvider<Either<String?, List<Country>>>((ref) {
  final _userProvider = ref.read(userRepositoryProvider.notifier);
  return Future.microtask(_userProvider.getCountries);
});
