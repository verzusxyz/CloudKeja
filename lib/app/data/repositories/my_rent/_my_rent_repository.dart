import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../repositories.dart';

class MyRentRepository {
  MyRentRepository(this._httpClient);

  final HTTPDioClient _httpClient;
  late final dioClient = _httpClient.restClient;

  //--------------------------Get Rent List--------------------------//
  Future<PaginatedRentListModel> getRentList({
    int page = 1,
    String? search,
    String? status,
    bool noPaging = false,
  }) async {
    try {
      final _response = await dioClient.get(
        DAPIEndpoints.rentList,
        options: DioOptions(headers: _httpClient.getAuthHeader),
        queryParameters: {
          "page": page,
          "search": search,
          "status": status,
          if (noPaging) "no_paginate": 1,
        },
      );

      if (_response.statusCode == HttpStatus.ok) {
        return PaginatedRentListModel.fromJson(
          _response.data,
          (json) => RentDetails.fromJson(json),
        );
      }

      throw Exception(
        'Failed to get rent invitation list, please try again.\nstatusCode:${_response.statusCode}',
      );
    } on DioException catch (e) {
      throw Exception(
        e.response?.data['message'] ?? 'Failed to get rent invitation list',
      );
    } catch (e) {
      throw Exception('An unexpected error occurred: $e');
    }
  }
  //--------------------------Get Rent List--------------------------//

  //--------------------------Get Rent Details--------------------------//
  Future<RentDetailsModel> getRentDetails(int id) async {
    try {
      final _response = await dioClient.get(
        DAPIEndpoints.rentDetails(id),
        options: DioOptions(headers: _httpClient.getAuthHeader),
      );

      if (_response.statusCode == HttpStatus.ok) {
        final _model = RentDetailsModel.fromJson(_response.data);
        return _model;
      }

      throw Exception(
        'Failed to get rent invitation details: ${_response.statusCode}',
      );
    } on DioException catch (e) {
      throw Exception(
        e.response?.data['message'] ?? 'Failed to get rent invitation',
      );
    } catch (e) {
      throw Exception('An unexpected error occurred: $e');
    }
  }
  //--------------------------Get Rent Details--------------------------//

  //--------------------------Manage Rent Invite--------------------------//
  Future<Either<String, RentDetailsModel>> manageRentInvite({
    int? id,
    required RentDetails data,
  }) async {
    try {
      final _formData = await Future.microtask(data.toRequest().getTypedData);
      if (id != null) {
        _formData.fields.add(MapEntry('_method', 'put'));
      }

      final _response = await dioClient.post(
        id != null ? DAPIEndpoints.rentDetails(id) : DAPIEndpoints.rentList,
        options: DioOptions(headers: _httpClient.getAuthHeader),
        data: _formData,
      );

      if (_response.statusCode == HttpStatus.ok) {
        final _model = RentDetailsModel.fromJson(_response.data);
        gEventListener.fire<MyRentEvent>(MyRentEvent.modified);
        return Either.success(_model);
      }

      return Either.failure(
        'Failed to Approve rent invitation: ${_response.statusCode}',
      );
    } on DioException catch (e) {
      return Either.failure(
        e.response?.data['message'] ?? 'Failed to Approve rent invitation',
      );
    } catch (e) {
      return Either.failure('An unexpected error occurred: $e');
    }
  }
  //--------------------------Manage Rent Invite--------------------------//

  //--------------------------Approve Rent--------------------------//
  Future<Either<String, RentDetailsModel>> approveRent(
    int id,
  ) async {
    try {
      final _response = await dioClient.post(
        DAPIEndpoints.rentApprove(id),
        options: DioOptions(headers: _httpClient.getAuthHeader),
      );

      if (_response.statusCode == HttpStatus.ok) {
        final _model = RentDetailsModel.fromJson(_response.data);
        gEventListener.fire<MyRentEvent>(MyRentEvent.modified);
        return Either.success(_model);
      }

      return Either.failure(
        'Failed to approve rent invitation: ${_response.statusCode}',
      );
    } on DioException catch (e) {
      return Either.failure(
        e.response?.data['message'] ?? 'Failed to approve rent invitation',
      );
    } catch (e) {
      return Either.failure('An unexpected error occurred: $e');
    }
  }
  //--------------------------Approve Rent--------------------------//

  //--------------------------Cancel Rent--------------------------//
  Future<Either<String, RentDetailsModel>> cancelRent(
    int id, {
    required String title,
    required String reason,
  }) async {
    try {
      final _response = await dioClient.post(
        DAPIEndpoints.rentCancel(id),
        options: DioOptions(headers: _httpClient.getAuthHeader),
        data: DioFormData.fromMap({"title": title, "reason": reason}),
      );

      if (_response.statusCode == HttpStatus.ok) {
        final _model = RentDetailsModel.fromJson(_response.data);
        gEventListener.fire<MyRentEvent>(MyRentEvent.modified);
        return Either.success(_model);
      }

      return Either.failure(
        'Failed to cancel rent: ${_response.statusCode}',
      );
    } on DioException catch (e) {
      return Either.failure(
        e.response?.data['message'] ?? 'Failed to cancel rent invitation',
      );
    } catch (e) {
      return Either.failure('An unexpected error occurred: $e');
    }
  }
  //--------------------------Cancel Rent--------------------------//

  //--------------------------Accept Rent--------------------------//
  Future<Either<String, RentDetailsModel>> acceptRent(
    int id,
  ) async {
    try {
      final _response = await dioClient.post(
        DAPIEndpoints.rentAccept(id),
        options: DioOptions(headers: _httpClient.getAuthHeader),
      );

      if (_response.statusCode == HttpStatus.ok) {
        final _model = RentDetailsModel.fromJson(_response.data);
        gEventListener.fire<MyRentEvent>(MyRentEvent.modified);
        return Either.success(_model);
      }

      return Either.failure(
        'Failed to accept rent invitation: ${_response.statusCode}',
      );
    } on DioException catch (e) {
      return Either.failure(
        e.response?.data['message'] ?? 'Failed to accept rent invitation',
      );
    } catch (e) {
      return Either.failure('An unexpected error occurred: $e');
    }
  }
  //--------------------------Accept Rent--------------------------//

  //--------------------------Process Rent--------------------------//
  Future<Either<String, RentDetailsModel>> processRent(
    int id,
    File agreementFile,
  ) async {
    try {
      final _data = DioFormData()
        ..files.add(
          MapEntry(
            'tenant_agreement',
            await MultipartFile.fromFile(agreementFile.path),
          ),
        );

      final _response = await dioClient.post(
        DAPIEndpoints.rentProcess(id),
        options: DioOptions(headers: _httpClient.getAuthHeader),
        data: _data,
      );

      if (_response.statusCode == HttpStatus.ok) {
        final _model = RentDetailsModel.fromJson(_response.data);
        gEventListener.fire<MyRentEvent>(MyRentEvent.modified);
        return Either.success(_model);
      }

      return Either.failure(
        'Failed to process rent invitation: ${_response.statusCode}',
      );
    } on DioException catch (e) {
      return Either.failure(
        e.response?.data['message'] ?? 'Failed to process rent invitation',
      );
    } catch (e) {
      return Either.failure('An unexpected error occurred: $e');
    }
  }
  //--------------------------Process Rent--------------------------//
}

final myRentRepoProvider = Provider.autoDispose<MyRentRepository>(
  (ref) => MyRentRepository(ref.watch(httpDioClientProvider)),
);

final myRentDetailsProvider =
    FutureProvider.autoDispose.family<RentDetailsModel, int>(
  (ref, id) => Future.microtask(
    () => ref.watch(myRentRepoProvider).getRentDetails(id),
  ),
);

typedef PaginatedRentListModel = PaginatedListModel<RentDetails>;

enum MyRentEvent { modified }
