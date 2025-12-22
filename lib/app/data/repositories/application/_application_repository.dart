import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../repositories.dart';

class ApplicationRepository {
  ApplicationRepository(this._httpClient);

  final HTTPDioClient _httpClient;
  late final dioClient = _httpClient.restClient;

  //--------------------------Get Application List--------------------------//
  Future<PaginatedApplicationListModel> getApplicationList({
    int page = 1,
    String? search,
    int? status,
  }) async {
    try {
      final _response = await dioClient.get(
        DAPIEndpoints.applications,
        options: DioOptions(headers: _httpClient.getAuthHeader),
        queryParameters: {
          "page": page,
          "search": search,
          "status": status,
        },
      );

      if (_response.statusCode == HttpStatus.ok) {
        return PaginatedApplicationListModel.fromJson(
          _response.data,
          (json) => Application.fromJson(json),
        );
      }

      throw Exception(
        'Failed to get application list, please try again.\nstatusCode:${_response.statusCode}',
      );
    } on DioException catch (e) {
      throw Exception(
        e.response?.data['message'] ?? 'Failed to get application list',
      );
    } catch (e) {
      throw Exception('An unexpected error occurred: $e');
    }
  }
  //--------------------------Get Application List--------------------------//

  //--------------------------Get Application Details--------------------------//
  Future<ApplicationDetailsModel> getApplicationDetails(int id) async {
    try {
      final _response = await dioClient.get(
        DAPIEndpoints.application(id),
        options: DioOptions(headers: _httpClient.getAuthHeader),
      );

      if (_response.statusCode == HttpStatus.ok) {
        final _model = ApplicationDetailsModel.fromJson(_response.data);
        return _model;
      }

      throw Exception(
        'Failed to get application details: ${_response.statusCode}',
      );
    } on DioException catch (e) {
      throw Exception(
        e.response?.data['message'] ?? 'Failed to get application',
      );
    } catch (e) {
      throw Exception('An unexpected error occurred: $e');
    }
  }
  //--------------------------Get Application Details--------------------------//

  //--------------------------Manage Application--------------------------//
  Future<Either<String, ApplicationDetailsModel>> createApplication({
    int? id,
    required Application data,
  }) async {
    final _formData = await Future.microtask(data.toRequest().getTypedData);

    if (id != null) {
      _formData.fields.add(MapEntry("_method", 'put'));
    }

    try {
      final _response = await dioClient.post(
        id != null ? DAPIEndpoints.application(id) : DAPIEndpoints.applications,
        options: DioOptions(headers: _httpClient.getAuthHeader),
        data: _formData,
      );

      if (_response.statusCode == HttpStatus.ok) {
        final _application = ApplicationDetailsModel.fromJson(_response.data);
        gEventListener.fire<ApplicationEvent>(ApplicationEvent.modified);
        return Either.success(_application);
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
  //--------------------------Manage Application--------------------------//

  //--------------------------Process Application--------------------------//
  Future<Either<String, ApplicationDetailsModel>> processApplication(
    int id,
    File agreementFile,
  ) async {
    try {
      final _data = DioFormData()
        ..files.add(
          MapEntry(
            'landlord_agreement',
            await MultipartFile.fromFile(agreementFile.path),
          ),
        );

      final _response = await dioClient.post(
        DAPIEndpoints.processApplication(id),
        options: DioOptions(headers: _httpClient.getAuthHeader),
        data: _data,
      );

      if (_response.statusCode == HttpStatus.ok) {
        final _model = ApplicationDetailsModel.fromJson(_response.data);
        gEventListener.fire<ApplicationEvent>(ApplicationEvent.modified);
        return Either.success(_model);
      }

      return Either.failure(
        'Failed to process application: ${_response.statusCode}',
      );
    } on DioException catch (e) {
      return Either.failure(
        e.response?.data['message'] ?? 'Failed to process application',
      );
    } catch (e) {
      return Either.failure('An unexpected error occurred: $e');
    }
  }
  //--------------------------Process Application--------------------------//

  //-----------------------Sign Application (Tenant)-----------------------//
  Future<Either<String, ApplicationDetailsModel>> signApplication(
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
        DAPIEndpoints.signApplication(id),
        options: DioOptions(headers: _httpClient.getAuthHeader),
        data: _data,
      );

      if (_response.statusCode == HttpStatus.ok) {
        final _model = ApplicationDetailsModel.fromJson(_response.data);
        gEventListener.fire<ApplicationEvent>(ApplicationEvent.modified);
        return Either.success(_model);
      }

      return Either.failure(
        'Failed to sign application: ${_response.statusCode}',
      );
    } on DioException catch (e) {
      return Either.failure(
        e.response?.data['message'] ?? 'Failed to sign application',
      );
    } catch (e) {
      return Either.failure('An unexpected error occurred: $e');
    }
  }
  //-----------------------Sign Application (Tenant)-----------------------//

  //--------------------------Reject Application--------------------------//
  Future<Either<String, ApplicationDetailsModel>> rejectApplication(
    int id, {
    required String reason,
  }) async {
    try {
      final _response = await dioClient.post(
        DAPIEndpoints.rejectApplication(id),
        options: DioOptions(headers: _httpClient.getAuthHeader),
        data: DioFormData.fromMap({"rejected_cause": reason}),
      );

      if (_response.statusCode == HttpStatus.ok) {
        final _model = ApplicationDetailsModel.fromJson(_response.data);
        gEventListener.fire<ApplicationEvent>(ApplicationEvent.modified);
        return Either.success(_model);
      }

      return Either.failure(
        'Failed to reject application: ${_response.statusCode}',
      );
    } on DioException catch (e) {
      return Either.failure(
        e.response?.data['message'] ?? 'Failed to reject application',
      );
    } catch (e) {
      return Either.failure('An unexpected error occurred: $e');
    }
  }
  //--------------------------Reject Application--------------------------//

  //--------------------------Complete Application--------------------------//
  Future<Either<String, ApplicationDetailsModel>> approveApplication(
    int id,
  ) async {
    try {
      final _response = await dioClient.post(
        DAPIEndpoints.approveApplication(id),
        options: DioOptions(headers: _httpClient.getAuthHeader),
      );

      if (_response.statusCode == HttpStatus.ok) {
        final _model = ApplicationDetailsModel.fromJson(_response.data);
        gEventListener.fire<ApplicationEvent>(ApplicationEvent.modified);
        return Either.success(_model);
      }

      return Either.failure(
        'Failed to approve application: ${_response.statusCode}',
      );
    } on DioException catch (e) {
      return Either.failure(
        e.response?.data['message'] ?? 'Failed to approve application',
      );
    } catch (e) {
      return Either.failure('An unexpected error occurred: $e');
    }
  }
  //--------------------------Complete Application--------------------------//
}

final applicationRepoProvider = Provider.autoDispose<ApplicationRepository>(
  (ref) => ApplicationRepository(ref.watch(httpDioClientProvider)),
);

final applicationDetailsProvider =
    FutureProvider.autoDispose.family<ApplicationDetailsModel, int>(
  (ref, id) => Future.microtask(
    () => ref.watch(applicationRepoProvider).getApplicationDetails(id),
  ),
);

typedef PaginatedApplicationListModel = PaginatedListModel<Application>;

enum ApplicationEvent { modified }
