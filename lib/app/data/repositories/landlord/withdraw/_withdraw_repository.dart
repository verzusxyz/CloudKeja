import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../repositories.dart';

class LandlordWithdrawRepository {
  LandlordWithdrawRepository(this._httpClient);

  final HTTPDioClient _httpClient;
  late final dioClient = _httpClient.restClient;

  //-----------------------Get Admin Withdraw Methods-----------------------//
  Future<AdminWithdrawMethodModel> getAdminWithdrawMethods() async {
    try {
      final _response = await dioClient.get(
        DAPIEndpoints.adminMethods,
        options: DioOptions(headers: _httpClient.getAuthHeader),
      );

      if (_response.statusCode == HttpStatus.ok) {
        final _model = AdminWithdrawMethodModel.fromJson(_response.data);
        return _model;
      }

      throw Exception(
        'Failed to get withdraw methods, please try again.\nstatusCode:${_response.statusCode}',
      );
    } on DioException catch (err) {
      throw Exception(
        err.response?.data['message'] ?? 'Failed to get withdraw methods.',
      );
    } catch (e) {
      throw Exception('An unexpected error occurred: $e');
    }
  }
  //-----------------------Get Admin Withdraw Methods-----------------------//

  //-----------------------Get User Withdraw Methods-----------------------//
  Future<UserWithdrawMethodModel> getUserWithdrawMethods() async {
    try {
      final _response = await dioClient.get(
        DAPIEndpoints.userMethods,
        options: DioOptions(headers: _httpClient.getAuthHeader),
      );

      if (_response.statusCode == HttpStatus.ok) {
        final _model = UserWithdrawMethodModel.fromJson(_response.data);
        return _model;
      }

      throw Exception(
        'Failed to get withdraw methods, please try again.\nstatusCode:${_response.statusCode}',
      );
    } on DioException catch (err) {
      throw Exception(
        err.response?.data['message'] ?? 'Failed to get withdraw methods.',
      );
    } catch (e) {
      throw Exception('An unexpected error occurred: $e');
    }
  }
  //-----------------------Get User Withdraw Methods-----------------------//

  //-----------------------Manage User Withdraw Methods-----------------------//
  Future<Either<String, UserWithdrawMethod>> manageUserWithdrawMethod({
    int? id,
    required UserWithdrawMethod data,
  }) async {
    final _formData = await Future.microtask(data.toRequest().getTypedData);

    if (id != null) {
      _formData.fields.add(MapEntry("_method", 'put'));
    }

    try {
      final _response = await dioClient.post(
        "${DAPIEndpoints.adminMethods}${id != null ? "/$id" : ""}",
        options: DioOptions(
          contentType: DioHeaders.multipartFormDataContentType,
          headers: _httpClient.getAuthHeader,
        ),
        data: _formData,
      );

      if (_response.statusCode == HttpStatus.ok) {
        final _method = UserWithdrawMethod.fromJson(_response.data?['data']);
        gEventListener.fire<LandlordWithdrawEvent>(
          LandlordWithdrawEvent.modified,
        );
        return Either.success(_method);
      }

      return Either.failure(
        'Something went wrong, please try again.\nstatusCode:${_response.statusCode}',
      );
    } on DioException catch (e) {
      return Either.failure(
        e.response?.data['message'] ?? 'Something went wrong, please try again',
      );
    } catch (e) {
      return Either.failure('An unexpected error occurred: $e');
    }
  }
  //-----------------------Manage User Withdraw Methods-----------------------//

  //-----------------------Delete User Withdraw Method-----------------------//
  Future<Either<String, String>> deleteUserWithdrawMethod(int id) async {
    try {
      final _response = await dioClient.delete(
        "${DAPIEndpoints.adminMethods}/$id",
        options: DioOptions(headers: _httpClient.getAuthHeader),
      );

      if (_response.statusCode == HttpStatus.ok) {
        final _message =
            _response.data?['message'] as String? ?? 'Deleted successfully';
        gEventListener.fire<LandlordWithdrawEvent>(
          LandlordWithdrawEvent.deleted,
        );
        return Either.success(_message);
      }

      return Either.failure(
        'Failed to delete, please try again!\nstatusCode:${_response.statusCode}',
      );
    } on DioException catch (e) {
      final _errorMessage = e.response?.data['message'] as String? ??
          'Failed to delete, please try again!';
      return Either.failure(_errorMessage);
    } catch (e) {
      return Either.failure('An unexpected error occurred: $e');
    }
  }
  //-----------------------Delete User Withdraw Method-----------------------//

  //-----------------------Create User Withdraw Request-----------------------//
  Future<Either<String, WithdrawDetailsModel>> createUserWithdrawRequest({
    required int methodId,
    required num amount,
  }) async {
    try {
      final _response = await dioClient.post(
        DAPIEndpoints.userWithdrawRequests,
        options: DioOptions(
          contentType: DioHeaders.multipartFormDataContentType,
          headers: _httpClient.getAuthHeader,
        ),
        data: DioFormData.fromMap({
          "user_method_id": methodId,
          "amount": amount,
        }),
      );

      if (_response.statusCode == HttpStatus.ok) {
        final _method = WithdrawDetailsModel.fromJson(_response.data);
        gEventListener.fire<LandlordWithdrawEvent>(
          LandlordWithdrawEvent.modified,
        );
        return Either.success(_method);
      }

      return Either.failure(
        'Something went wrong, please try again.\nstatusCode:${_response.statusCode}',
      );
    } on DioException catch (e) {
      return Either.failure(
        e.response?.data['message'] ?? 'Something went wrong, please try again',
      );
    } catch (e) {
      return Either.failure('An unexpected error occurred: $e');
    }
  }
  //-----------------------Create User Withdraw Request-----------------------//

  //-----------------------Get Withdraw Requests-----------------------//
  Future<PaginatedWithdrawRequestListModel> getWithdrawRequests({
    int page = 1,
    bool noPaging = false,
    String? fromDate,
    String? toDate,
  }) async {
    try {
      final _response = await dioClient.get(
        DAPIEndpoints.userWithdrawRequests,
        options: DioOptions(headers: _httpClient.getAuthHeader),
        queryParameters: {
          "page": page,
          if (noPaging) "no_paginate": 1,
          "from_date": fromDate,
          "to_date": toDate,
        },
      );

      if (_response.statusCode == HttpStatus.ok) {
        final _model = PaginatedWithdrawRequestListModel.fromJson(
          _response.data,
          (list) => WithdrawDetails.fromJson(list),
        );

        return _model;
      }

      throw Exception(
        'Failed to get withdraw requests, please try again.\nstatusCode:${_response.statusCode}',
      );
    } on DioException catch (err) {
      throw Exception(
        err.response?.data['message'] ?? 'Failed to withdraw requests.',
      );
    } catch (e) {
      throw Exception('An unexpected error occurred: $e');
    }
  }
  //-----------------------Get Withdraw Requests-----------------------//

  //-------------------Get Withdraw Request Summary-------------------//
  Future<WithdrawSummaryModel> getWithdrawSummary(int id) async {
    try {
      final _response = await dioClient.get(
        DAPIEndpoints.withdrawSummary(id),
        options: DioOptions(headers: _httpClient.getAuthHeader),
      );

      if (_response.statusCode == HttpStatus.ok) {
        final _model = WithdrawSummaryModel.fromJson(_response.data);
        return _model;
      }

      throw Exception(
        'Failed to get withdraw summary, please try again.\nstatusCode:${_response.statusCode}',
      );
    } on DioException catch (err) {
      throw Exception(
        err.response?.data['message'] ?? 'Failed to get withdraw summary.',
      );
    } catch (e) {
      throw Exception('An unexpected error occurred: $e');
    }
  }
  //-------------------Get Withdraw Request Summary-------------------//
}

final landlordWithdrawRepoProvider =
    Provider.autoDispose<LandlordWithdrawRepository>(
  (ref) => LandlordWithdrawRepository(ref.watch(httpDioClientProvider)),
);

final landlordAdminWithdrawMethodProvider = FutureProvider(
  (ref) => Future.microtask(
    () => ref.read(landlordWithdrawRepoProvider).getAdminWithdrawMethods(),
  ),
);

final landlordUserWithdrawMethodProvider = FutureProvider.autoDispose(
  (ref) => Future.microtask(
    () => ref.read(landlordWithdrawRepoProvider).getUserWithdrawMethods(),
  ),
);

final landlordWithdrawSummaryProvider =
    FutureProvider.autoDispose.family<WithdrawSummaryModel, int>(
  (ref, id) => Future.microtask(
    () => ref.read(landlordWithdrawRepoProvider).getWithdrawSummary(id),
  ),
);

typedef PaginatedWithdrawRequestListModel = PaginatedListModel<WithdrawDetails>;

enum LandlordWithdrawEvent { modified, deleted }
