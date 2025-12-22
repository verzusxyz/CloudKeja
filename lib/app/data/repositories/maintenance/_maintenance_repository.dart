import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../repositories.dart';

class MaintenanceRepository {
  MaintenanceRepository(this._httpClient);

  final HTTPDioClient _httpClient;
  late final dioClient = _httpClient.restClient;

  //--------------------------Get Maintenance List--------------------------//
  Future<PaginatedMaintenanceListModel> getMaintenanceList({
    int page = 1,
    String? search,
    String? status,
  }) async {
    try {
      final _response = await dioClient.get(
        DAPIEndpoints.maintenances,
        options: DioOptions(headers: _httpClient.getAuthHeader),
        queryParameters: {
          "page": page,
          "search": search,
          "status": status,
        },
      );

      if (_response.statusCode == HttpStatus.ok) {
        return PaginatedMaintenanceListModel.fromJson(
          _response.data,
          (json) => Maintenance.fromJson(json),
        );
      }

      throw Exception(
        'Failed to get maintenance list, please try again.\nstatusCode:${_response.statusCode}',
      );
    } on DioException catch (e) {
      throw Exception(
        e.response?.data['message'] ?? 'Failed to get maintenance list',
      );
    } catch (e) {
      throw Exception('An unexpected error occurred: $e');
    }
  }
  //--------------------------Get Maintenance List--------------------------//

  //--------------------------Get Maintenance Details--------------------------//
  Future<MaintenanceDetailsModel> getMaintenanceDetails(int id) async {
    try {
      final _response = await dioClient.get(
        DAPIEndpoints.maintenance(id),
        options: DioOptions(headers: _httpClient.getAuthHeader),
      );

      if (_response.statusCode == HttpStatus.ok) {
        final _model = MaintenanceDetailsModel.fromJson(_response.data);
        return _model;
      }

      throw Exception(
        'Failed to get maintenance details: ${_response.statusCode}',
      );
    } on DioException catch (e) {
      throw Exception(
        e.response?.data['message'] ?? 'Failed to get maintenance details.',
      );
    } catch (e) {
      throw Exception('An unexpected error occurred: $e');
    }
  }
  //--------------------------Get Maintenance Details--------------------------//

  //--------------------------Manage Maintenance--------------------------//
  Future<Either<String, MaintenanceDetailsModel>> manageMaintenance({
    int? id,
    required Maintenance data,
  }) async {
    try {
      final _formData = await Future.microtask(data.toRequest().getTypedData);

      if (id != null) {
        _formData.fields.add(MapEntry("_method", 'put'));
      }

      final _response = await dioClient.post(
        id != null ? DAPIEndpoints.maintenance(id) : DAPIEndpoints.maintenances,
        options: DioOptions(headers: _httpClient.getAuthHeader),
        data: _formData,
      );

      if (_response.statusCode == HttpStatus.ok) {
        final _model = MaintenanceDetailsModel.fromJson(_response.data);
        gEventListener.fire<MaintenanceEvent>(MaintenanceEvent.modified);
        return Either.success(_model);
      }

      return Either.failure(
        'Failed to update maintenance: ${_response.statusCode}',
      );
    } on DioException catch (e) {
      return Either.failure(
        e.response?.data['message'] ?? 'Failed to update maintenance',
      );
    } catch (e) {
      return Either.failure('An unexpected error occurred: $e');
    }
  }
  //--------------------------Manage Maintenance--------------------------//

  //--------------------------Reject Maintenance--------------------------//
  Future<Either<String, MaintenanceDetailsModel>> rejectMaintenance(
    int id, {
    required String note,
  }) async {
    try {
      final _response = await dioClient.post(
        DAPIEndpoints.rejectMaintenance(id),
        options: DioOptions(headers: _httpClient.getAuthHeader),
        data: DioFormData.fromMap({"notes": note}),
      );

      if (_response.statusCode == HttpStatus.ok) {
        final _model = MaintenanceDetailsModel.fromJson(_response.data);
        gEventListener.fire<MaintenanceEvent>(MaintenanceEvent.modified);
        return Either.success(_model);
      }

      return Either.failure(
        'Failed to reject maintenance: ${_response.statusCode}',
      );
    } on DioException catch (e) {
      return Either.failure(
        e.response?.data['message'] ?? 'Failed to reject maintenance',
      );
    } catch (e) {
      return Either.failure('An unexpected error occurred: $e');
    }
  }
  //--------------------------Reject Maintenance--------------------------//

  //--------------------------Approve Maintenance--------------------------//
  Future<Either<String, MaintenanceDetailsModel>> approveMaintenance(
    int id, {
    required int laborId,
    required num totalCosting,
    required String comments,
  }) async {
    try {
      final _data = DioFormData.fromMap({
        "labor_id": laborId,
        "total_costing": totalCosting,
        "comments": comments,
      });

      final _response = await dioClient.post(
        DAPIEndpoints.approveMaintenance(id),
        options: DioOptions(headers: _httpClient.getAuthHeader),
        data: _data,
      );

      if (_response.statusCode == HttpStatus.ok) {
        final _model = MaintenanceDetailsModel.fromJson(_response.data);
        gEventListener.fire<MaintenanceEvent>(MaintenanceEvent.modified);
        return Either.success(_model);
      }

      return Either.failure(
        'Failed to Approve maintenance: ${_response.statusCode}',
      );
    } on DioException catch (e) {
      return Either.failure(
        e.response?.data['message'] ?? 'Failed to Approve maintenance',
      );
    } catch (e) {
      return Either.failure('An unexpected error occurred: $e');
    }
  }
  //--------------------------Approve Maintenance--------------------------//

  //--------------------------Complete Maintenance--------------------------//
  Future<Either<String, MaintenanceDetailsModel>> completeMaintenance(
    int id, {
    required String comments,
  }) async {
    try {
      final _data = DioFormData.fromMap({"comments": comments});

      final _response = await dioClient.post(
        DAPIEndpoints.completeMaintenance(id),
        options: DioOptions(headers: _httpClient.getAuthHeader),
        data: _data,
      );

      if (_response.statusCode == HttpStatus.ok) {
        final _model = MaintenanceDetailsModel.fromJson(_response.data);
        gEventListener.fire<MaintenanceEvent>(MaintenanceEvent.modified);
        return Either.success(_model);
      }

      return Either.failure(
        'Failed to complete maintenance: ${_response.statusCode}',
      );
    } on DioException catch (e) {
      return Either.failure(
        e.response?.data['message'] ?? 'Failed to complete maintenance',
      );
    } catch (e) {
      return Either.failure('An unexpected error occurred: $e');
    }
  }
  //--------------------------Complete Maintenance--------------------------//

  //--------------------------Get Maintenance Report--------------------------//
  Future<MaintenanceReportModel> getMaintenanceReport({
    String? fromDate,
    String? toDate,
    int? propertyId,
  }) async {
    try {
      final _response = await dioClient.get(
        DAPIEndpoints.maintenaceReport,
        options: DioOptions(headers: _httpClient.getAuthHeader),
        queryParameters: {
          "from_date": fromDate,
          "to_date": toDate,
          if (propertyId != null) "property_id": propertyId,
        },
      );

      if (_response.statusCode == HttpStatus.ok) {
        final _model = MaintenanceReportModel.fromJson(_response.data);
        return _model;
      }

      throw Exception(
        'Failed to get maintenance details: ${_response.statusCode}',
      );
    } on DioException catch (e) {
      throw Exception(
        e.response?.data['message'] ?? 'Failed to get maintenance details.',
      );
    } catch (e) {
      throw Exception('An unexpected error occurred: $e');
    }
  }
  //--------------------------Get Maintenance Report--------------------------//
}

final maintenanceRepoProvider = Provider.autoDispose<MaintenanceRepository>(
  (ref) => MaintenanceRepository(ref.watch(httpDioClientProvider)),
);

final maintenanceDetails =
    FutureProvider.autoDispose.family<MaintenanceDetailsModel, int>(
  (ref, id) => Future.microtask(
    () => ref.watch(maintenanceRepoProvider).getMaintenanceDetails(id),
  ),
);

typedef PaginatedMaintenanceListModel = PaginatedListModel<Maintenance>;

enum MaintenanceEvent { modified }
