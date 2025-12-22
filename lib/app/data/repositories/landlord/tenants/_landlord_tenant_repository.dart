import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../repositories.dart';

class LandlordTenantRepository {
  LandlordTenantRepository(this._httpClient);

  final HTTPDioClient _httpClient;
  late final dioClient = _httpClient.restClient;

  //-----------------------Get Tenants-----------------------//
  Future<PaginatedTenantListModel> getTenants({
    int page = 1,
    String? search,
    String? filter,
    bool noPaging = false,
  }) async {
    try {
      final _response = await dioClient.get(
        DAPIEndpoints.tenants,
        options: DioOptions(headers: _httpClient.getAuthHeader),
        queryParameters: {
          "page": page,
          "search": search,
          "status": filter,
          if (noPaging) "no_paginate": 1,
        },
      );

      if (_response.statusCode == HttpStatus.ok) {
        final _model = PaginatedTenantListModel.fromJson(
          _response.data,
          (list) => Tenant.fromJson(list),
        );

        return _model;
      }

      throw Exception(
        'Failed to get tenants, please try again.\nstatusCode:${_response.statusCode}',
      );
    } on DioException catch (err) {
      throw Exception(
        err.response?.data['message'] ?? 'Failed to get tenant list.',
      );
    } catch (e) {
      throw Exception('An unexpected error occurred: $e');
    }
  }
  //-----------------------Get Tenants-----------------------//

  //-------------------Get Tenant Details-------------------//
  Future<TenantDetails> getTenant(int id) async {
    try {
      final _response = await dioClient.get(
        DAPIEndpoints.tenant(id),
        options: DioOptions(headers: _httpClient.getAuthHeader),
      );

      if (_response.statusCode == HttpStatus.ok) {
        final _model = TenantDetailsModel.fromJson(_response.data);
        return _model.details!;
      }

      throw Exception(
        'Failed to get tenant details: ${_response.statusCode}',
      );
    } on DioException catch (e) {
      final _message = e.response?.data['message'] ?? 'Failed to get tenant';
      throw Exception(_message);
    } catch (e) {
      throw Exception('An unexpected error occurred: $e');
    }
  }
  //-------------------Get Tenant Details-------------------//

  //-----------------------Manage Tenant-----------------------//
  Future<Tenant> manageTenant({
    int? id,
    required Tenant tenant,
  }) async {
    final _formData = await Future.microtask(tenant.toRequest().getTypedData);

    if (id != null) {
      _formData.fields.add(MapEntry("_method", 'put'));
    }

    try {
      final _response = await dioClient.post(
        id != null ? DAPIEndpoints.tenant(id) : DAPIEndpoints.tenants,
        options: DioOptions(
          contentType: DioHeaders.multipartFormDataContentType,
          headers: _httpClient.getAuthHeader,
        ),
        data: _formData,
      );

      if (_response.statusCode == HttpStatus.ok) {
        final _tenant = Tenant.fromJson(_response.data);
        gEventListener.fire<LandlordTenantEvent>(
          LandlordTenantEvent.modified,
        );
        return _tenant;
      }

      throw Exception(
        'Something went wrong, please try again.\nstatusCode:${_response.statusCode}',
      );
    } on DioException catch (e) {
      throw Exception(
        e.response?.data['message'] ?? 'Something went wrong, please try again',
      );
    } catch (e) {
      throw Exception('An unexpected error occurred: $e');
    }
  }
  //-----------------------Manage Tenant-----------------------//
}

final landlordTenantRepoProvider =
    Provider.autoDispose<LandlordTenantRepository>(
  (ref) {
    return LandlordTenantRepository(
      ref.watch(httpDioClientProvider),
    );
  },
);

final landlordTenantDetails =
    FutureProvider.autoDispose.family<TenantDetails, int>(
  (ref, id) => Future.microtask(
    () => ref.read(landlordTenantRepoProvider).getTenant(id),
  ),
);

typedef PaginatedTenantListModel = PaginatedListModel<Tenant>;

enum LandlordTenantEvent { modified, deleted }
