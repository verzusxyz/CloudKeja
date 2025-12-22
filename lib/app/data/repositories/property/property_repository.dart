import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../repositories.dart';

class PropertyRepository {
  PropertyRepository(this._httpClient);
  final HTTPDioClient _httpClient;
  late final dioClient = _httpClient.restClient;

  //--------------------Get Properties--------------------//
  Future<PaginatedPropertyListModel> getProperties({
    int page = 1,
    String? search,
    int? status,
    String? sorting,
    int? categoryId,
    String? country,
    int? perPage,
    bool showRecommended = false,
    bool noPaging = false,
    bool availableForRent = false,
  }) async {
    try {
      final response = await dioClient.get(
        DAPIEndpoints.properties,
        options: DioOptions(headers: _httpClient.getAuthHeader),
        queryParameters: {
          "page": page,
          if (status != null) "status": status,
          if (search != null) "search": search,
          if (sorting != null) "sorting": sorting,
          if (categoryId != null) "category_id": categoryId,
          if (country != null) "country": country,
          if (perPage != null) "per_page": perPage,
          if (showRecommended) "show_recommendate": 1,
          if (noPaging) "no_paginate": 1,
          if (availableForRent) "available_rent": 1,
        },
      );

      if (response.statusCode == HttpStatus.ok) {
        return PaginatedPropertyListModel.fromJson(
          response.data,
          (list) => PropertyModel.fromJson(list),
        );
      }
      throw Exception('Failed to get properties: ${response.statusCode}');
    } on DioException catch (e) {
      final message = e.response?.data['message'] ?? 'Failed to get properties';
      throw Exception(message);
    } catch (e) {
      throw Exception('An unexpected error occurred: $e');
    }
  }
  //--------------------Get Properties--------------------//

  //--------------------Get Property By Id--------------------//
  Future<PropertyDetailsResponseModel> getProperty(
    int id,
  ) async {
    try {
      final _response = await dioClient.get(
        DAPIEndpoints.property(id),
        options: DioOptions(headers: _httpClient.getAuthHeader),
      );

      if (_response.statusCode == HttpStatus.ok) {
        final _model = PropertyDetailsResponseModel.fromJson(_response.data);
        return _model;
      }

      throw Exception(
        'Failed to get property details: ${_response.statusCode}',
      );
    } on DioException catch (e) {
      final _message = e.response?.data['message'] ?? 'Failed to get property';
      throw Exception(_message);
    } catch (e) {
      throw Exception('An unexpected error occurred: $e');
    }
  }
  //--------------------Get Property By Id--------------------//

  //--------------------Manage Property--------------------//
  Future<PropertyModel> manageProperty({
    int? id,
    required ManagePropertyModel data,
  }) async {
    try {
      final _formData = await Future.microtask(data.toRequest().getTypedData);

      if (id != null) {
        _formData.fields.add(MapEntry("_method", 'put'));
      }

      final _response = await dioClient.post(
        id != null ? DAPIEndpoints.property(id) : DAPIEndpoints.properties,
        options: DioOptions(
          contentType: DioHeaders.multipartFormDataContentType,
          headers: _httpClient.getAuthHeader,
        ),
        data: _formData,
      );
      if (_response.statusCode == HttpStatus.ok) {
        gEventListener.fire<PropertyEvent>(PropertyEvent.modified);

        final _data = _response.data?['data'];
        return PropertyModel.fromJson(_data);
      }

      throw Exception(
        'Failed to create property: ${_response.statusCode}',
      );
    } on DioException catch (e) {
      throw Exception(
        e.response?.data['message'] ??
            'Something went wrong, please try again.',
      );
    } catch (e) {
      throw Exception('An unexpected error occurred: $e');
    }
  }
  //--------------------Manage Property--------------------//

  //--------------------Delete Property--------------------//
  Future<String> deleteProperty(int id) async {
    try {
      final _response = await dioClient.delete(
        DAPIEndpoints.property(id),
        options: DioOptions(headers: _httpClient.getAuthHeader),
      );

      if (_response.statusCode == HttpStatus.ok) {
        final _message =
            _response.data?['message'] as String? ?? 'Deleted successfully';
        gEventListener.fire<PropertyEvent>(PropertyEvent.deleted);
        return _message;
      }

      throw Exception(
        'Failed to delete property, please try again!\nstatusCode:${_response.statusCode}',
      );
    } on DioException catch (e) {
      final _errorMessage = e.response?.data['message'] as String? ??
          'Failed to delete property, please try again!';
      throw Exception(_errorMessage);
    } catch (e) {
      throw Exception('An unexpected error occurred: $e');
    }
  }
  //--------------------Delete Property--------------------//

  //--------------------Change Property Visibility--------------------//
  Future<String> changePropertyVisibility({
    required int id,
    required bool isPublished,
  }) async {
    try {
      final _response = await dioClient.post(
        DAPIEndpoints.propertyVisibility,
        options: DioOptions(headers: _httpClient.getAuthHeader),
        data: {
          "property_id": id,
          "is_published": isPublished ? 1 : 0,
        },
      );

      if (_response.statusCode == HttpStatus.ok) {
        gEventListener.fire<PropertyEvent>(PropertyEvent.modified);

        return _response.data?['message'] ?? 'Updated successfully';
      }

      throw Exception(
        'Failed to chnage status.\nstatusCode:${_response.statusCode}',
      );
    } on DioException catch (e) {
      throw Exception(
        e.response?.data['message'] ?? 'Failed to chnage status',
      );
    } catch (e) {
      throw Exception('An unexpected error occurred: $e');
    }
  }
  //--------------------Change Property Visibility--------------------//

  //--------------------Get House Type--------------------//
  Future<HouseTypeListModel> getHouseType() async {
    try {
      final _response = await dioClient.get(
        DAPIEndpoints.houseTypes,
        options: DioOptions(headers: _httpClient.getAuthHeader),
      );

      if (_response.statusCode == HttpStatus.ok) {
        final _model = HouseTypeListModel.fromJson(_response.data);

        return _model;
      }

      throw Exception(
        'Failed to get house types\nstatusCode:${_response.statusCode}',
      );
    } on DioException catch (e) {
      throw Exception(
        e.response?.data?['message'] ?? 'Failed to get house types.',
      );
    } catch (e) {
      throw Exception('An unexpected error occurred: $e');
    }
  }
  //--------------------Get House Type--------------------//

  //--------------------Get Facilities--------------------//
  Future<FacilityAmenityListModel> getFacilities() async {
    try {
      final response = await dioClient.get(DAPIEndpoints.facilities);

      if (response.statusCode == HttpStatus.ok) {
        return FacilityAmenityListModel.fromJson(response.data, 'facilities');
      } else {
        throw Exception('Failed to get facility list: ${response.statusCode}');
      }
    } on DioException catch (e) {
      final message =
          e.response?.data?['message'] ?? 'Failed to get facility list.';
      throw Exception(message);
    } catch (e) {
      throw Exception('An unexpected error occurred: $e');
    }
  }
  //--------------------Get Facilities--------------------//

  //--------------------Get Amenities--------------------//
  Future<FacilityAmenityListModel> getAmenities() async {
    try {
      final response = await dioClient.get(DAPIEndpoints.amenities);

      if (response.statusCode == HttpStatus.ok) {
        return FacilityAmenityListModel.fromJson(response.data, 'amenities');
      } else {
        throw Exception('Failed to get amenity list: ${response.statusCode}');
      }
    } on DioException catch (e) {
      final message =
          e.response?.data?['message'] ?? 'Failed to get amenity list.';

      throw Exception(message);
    } catch (e) {
      throw Exception('An unexpected error occurred: $e');
    }
  }
  //--------------------Get Amenities--------------------//

  //--------------------Manage Review--------------------//
  Future<Either<String, Review>> manageReview({
    int? id,
    required int propertyId,
    required double rating,
    required String comment,
  }) async {
    try {
      final _data = DioFormData.fromMap({
        if (id != null) "_method": "put",
        "property_id": propertyId,
        "review": rating,
        "comment": comment,
      });

      final _response = await dioClient.post(
        id != null ? DAPIEndpoints.review(id) : DAPIEndpoints.reviews,
        options: DioOptions(headers: _httpClient.getAuthHeader),
        data: _data,
      );

      if (_response.statusCode == HttpStatus.ok) {
        gEventListener.fire<PropertyEvent>(PropertyEvent.modified);
        final _data = _response.data?['data'];

        return Either.success(Review.fromJson(_data));
      } else {
        return Either.failure('Failed to post review: ${_response.statusCode}');
      }
    } on DioException catch (e) {
      final message = e.response?.data?['message'] ?? 'Failed to post review';
      return Either.failure(message);
    } catch (e) {
      throw Either.failure('An unexpected error occurred: $e');
    }
  }
  //--------------------Manage Review--------------------//

  //--------------------Favorite List--------------------//
  Future<PaginatedFavoriteListModel> getFavorites({int page = 1}) async {
    try {
      final response = await dioClient.get(
        DAPIEndpoints.favorites,
        options: DioOptions(headers: _httpClient.getAuthHeader),
        queryParameters: {"page": page},
      );

      if (response.statusCode == HttpStatus.ok) {
        return PaginatedFavoriteListModel.fromJson(
          response.data,
          (json) => FavoriteModel.fromJson(json),
        );
      }
      throw Exception('Failed to get favorites: ${response.statusCode}');
    } on DioException catch (e) {
      final message = e.response?.data['message'] ?? 'Failed to get favorites';
      throw Exception(message);
    } catch (e) {
      throw Exception('An unexpected error occurred: $e');
    }
  }
  //--------------------Favorite List--------------------//

  //--------------------Manage Favorite--------------------//
  Future<Either<String, FavoriteModel>> createFavorite(int propertyId) async {
    try {
      final response = await dioClient.post(
        DAPIEndpoints.favorites,
        options: DioOptions(headers: _httpClient.getAuthHeader),
        data: {'property_id': propertyId},
      );

      if (response.statusCode == HttpStatus.ok) {
        gEventListener.fire<PropertyEvent>(PropertyEvent.modified);
        return Either.success(
          FavoriteModel.fromJson(response.data),
        );
      }
      return Either.failure(
          'Failed to create favorite: ${response.statusCode}');
    } on DioException catch (e) {
      final message =
          e.response?.data['message'] ?? 'Failed to create favorite';
      return Either.failure(message);
    } catch (e) {
      return Either.failure('An unexpected error occurred: $e');
    }
  }
  //--------------------Manage Favorite--------------------//

  //--------------------Delete Favorite--------------------//
  Future<Either<String, String>> deleteFavorite(int favoriteId) async {
    try {
      final response = await dioClient.delete(
        DAPIEndpoints.favorite(favoriteId),
        options: DioOptions(headers: _httpClient.getAuthHeader),
      );

      if (response.statusCode == HttpStatus.ok) {
        gEventListener.fire<PropertyEvent>(PropertyEvent.modified);
        return Either.success(
          response.data?['message'] ?? 'Removed successfully',
        );
      }

      return Either.failure(
        'Failed to remove favorite: ${response.statusCode}',
      );
    } on DioException catch (e) {
      final message =
          e.response?.data['message'] ?? 'Failed to remove favorite';
      return Either.failure(message);
    } catch (e) {
      return Either.failure('An unexpected error occurred: $e');
    }
  }
  //--------------------Delete Favorite--------------------//
}

final propertyRepoProvider = Provider.autoDispose<PropertyRepository>(
  (ref) => PropertyRepository(ref.watch(httpDioClientProvider)),
);

final houseTypesProvider = FutureProvider(
  (ref) => Future.microtask(ref.read(propertyRepoProvider).getHouseType),
);

final facilitiesProvider = FutureProvider(
  (ref) => Future.microtask(ref.read(propertyRepoProvider).getFacilities),
);

final amenitiesProvider = FutureProvider(
  (ref) => Future.microtask(ref.read(propertyRepoProvider).getAmenities),
);

final getPropertyDetails =
    FutureProvider.autoDispose.family<PropertyDetailsResponseModel, int>(
  (ref, id) => Future.microtask(
    () => ref.read(propertyRepoProvider).getProperty(id),
  ),
);

typedef PaginatedPropertyListModel = PaginatedListModel<PropertyModel>;
typedef PaginatedFavoriteListModel = PaginatedListModel<FavoriteModel>;

enum PropertyEvent { modified, deleted }

enum PropertyFilters { country, type, sortBy }
