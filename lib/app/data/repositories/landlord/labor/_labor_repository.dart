import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../repositories.dart';

class LandlordLaborRepository {
  LandlordLaborRepository(this._httpClient);

  final HTTPDioClient _httpClient;
  late final dioClient = _httpClient.restClient;

  //-----------------------Get Labors-----------------------//
  Future<PaginatedLaborListModel> getLabors({
    int page = 1,
    bool noPaging = false,
  }) async {
    try {
      final _response = await dioClient.get(
        DAPIEndpoints.labors,
        options: DioOptions(headers: _httpClient.getAuthHeader),
        queryParameters: {
          "page": page,
          if (noPaging) "no_paginate": 1,
        },
      );

      if (_response.statusCode == HttpStatus.ok) {
        final _model = PaginatedLaborListModel.fromJson(
          _response.data,
          (list) => Labor.fromJson(list),
        );

        return _model;
      }

      throw Exception(
        'Failed to get labors, please try again.\nstatusCode:${_response.statusCode}',
      );
    } on DioException catch (err) {
      throw Exception(
        err.response?.data['message'] ?? 'Failed to get labor list.',
      );
    } catch (e) {
      throw Exception('An unexpected error occurred: $e');
    }
  }
  //-----------------------Get Labors-----------------------//

  //-------------------Get Labor Details-------------------//
  Future<Labor> getLabor(int id) async {
    try {
      final _response = await dioClient.get(
        DAPIEndpoints.labor(id),
        options: DioOptions(headers: _httpClient.getAuthHeader),
      );

      if (_response.statusCode == HttpStatus.ok) {
        final _model = LaborDetails.fromJson(_response.data);
        return _model.labor!;
      }

      throw Exception(
        'Failed to get labor details: ${_response.statusCode}',
      );
    } on DioException catch (e) {
      final _message = e.response?.data['message'] ?? 'Failed to get labor';
      throw Exception(_message);
    } catch (e) {
      throw Exception('An unexpected error occurred: $e');
    }
  }
  //-------------------Get Labor Details-------------------//

  //-----------------------Manage Labor-----------------------//
  Future<Either<String, Labor>> manageLabor({
    int? id,
    required Labor labor,
  }) async {
    final _formData = await Future.microtask(labor.toRequest().getTypedData);

    if (id != null) {
      _formData.fields.add(MapEntry("_method", 'put'));
    }

    try {
      final _response = await dioClient.post(
        id != null ? DAPIEndpoints.labor(id) : DAPIEndpoints.labors,
        options: DioOptions(
          contentType: DioHeaders.multipartFormDataContentType,
          headers: _httpClient.getAuthHeader,
        ),
        data: _formData,
      );

      if (_response.statusCode == HttpStatus.ok) {
        final _labor = Labor.fromJson(_response.data?['data']);
        gEventListener.fire<LandlordLaborEvent>(
          LandlordLaborEvent.modified,
        );
        return Either.success(_labor);
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
  //-----------------------Manage Labor-----------------------//

  //--------------------Delete Labor--------------------//
  Future<Either<String, String>> deleteLabor(int id) async {
    try {
      final _response = await dioClient.delete(
        DAPIEndpoints.labor(id),
        options: DioOptions(headers: _httpClient.getAuthHeader),
      );

      if (_response.statusCode == HttpStatus.ok) {
        final _message =
            _response.data?['message'] as String? ?? 'Deleted successfully';
        gEventListener.fire<LandlordLaborEvent>(LandlordLaborEvent.deleted);
        return Either.success(_message);
      }

      return Either.failure(
        'Failed to delete labor, please try again!\nstatusCode:${_response.statusCode}',
      );
    } on DioException catch (e) {
      final _errorMessage = e.response?.data['message'] as String? ??
          'Failed to delete labor, please try again!';
      return Either.failure(_errorMessage);
    } catch (e) {
      return Either.failure('An unexpected error occurred: $e');
    }
  }
  //--------------------Delete Labor--------------------//
}

final landlordLaborRepoProvider = Provider.autoDispose<LandlordLaborRepository>(
  (ref) => LandlordLaborRepository(ref.watch(httpDioClientProvider)),
);

final landlordLaborDetails = FutureProvider.autoDispose.family<Labor, int>(
  (ref, id) => Future.microtask(
    () => ref.read(landlordLaborRepoProvider).getLabor(id),
  ),
);

typedef PaginatedLaborListModel = PaginatedListModel<Labor>;

enum LandlordLaborEvent { modified, deleted }
