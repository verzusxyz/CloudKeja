import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../repositories.dart';

class CommonRepository {
  CommonRepository(this._httpClient);

  final HTTPDioClient _httpClient;
  late final dioClient = _httpClient.restClient;

  //--------------------------Get Terms & Conditions--------------------------//
  Future<SummerNoteModel2> getTermsCondition() async {
    try {
      final _response = await dioClient.get(
        DAPIEndpoints.termsConditions,
        options: DioOptions(headers: _httpClient.getAuthHeader),
      );

      if (_response.statusCode == HttpStatus.ok) {
        return SummerNoteModel2.fromJson(_response.data);
      }

      throw Exception(
        'Failed to get terms & conditions, please try again.\nstatusCode:${_response.statusCode}',
      );
    } on DioException catch (e) {
      throw Exception(
        e.response?.data['message'] ?? 'Failed to terms & conditions.',
      );
    } catch (e) {
      throw Exception('An unexpected error occurred: $e');
    }
  }
  //--------------------------Get Terms & Conditions--------------------------//

  //--------------------------Get About Us--------------------------//
  Future<SummerNoteModel> getAboutUs() async {
    try {
      final _response = await dioClient.get(
        DAPIEndpoints.aboutUs,
        options: DioOptions(headers: _httpClient.getAuthHeader),
      );

      if (_response.statusCode == HttpStatus.ok) {
        return SummerNoteModel.fromJson(_response.data);
      }

      throw Exception(
        'Failed to get about us, please try again.\nstatusCode:${_response.statusCode}',
      );
    } on DioException catch (e) {
      throw Exception(
        e.response?.data['message'] ?? 'Failed to about us.',
      );
    } catch (e) {
      throw Exception('An unexpected error occurred: $e');
    }
  }
  //--------------------------Get About Us--------------------------//

  //--------------------------Notifications--------------------------//
  Future<NotificationListModel> getNotifications() async {
    try {
      final _response = await dioClient.get(
        DAPIEndpoints.notifications,
        options: DioOptions(headers: _httpClient.getAuthHeader),
      );

      if (_response.statusCode == HttpStatus.ok) {
        return NotificationListModel.fromJson(_response.data);
      }

      throw Exception(
        'Failed to get notification list, please try again.\nstatusCode:${_response.statusCode}',
      );
    } on DioException catch (e) {
      throw Exception(
        e.response?.data['message'] ?? 'Failed to get notification list.',
      );
    } catch (e) {
      throw Exception('An unexpected error occurred: $e');
    }
  }
  //--------------------------Notifications--------------------------//

  //--------------------------Mark All As Read--------------------------//
  Future<Either<String, String>> markAllNotificationsAsRead() async {
    try {
      final _response = await dioClient.get(
        DAPIEndpoints.markAllNotificationAsRead,
        options: DioOptions(headers: _httpClient.getAuthHeader),
      );

      if (_response.statusCode == HttpStatus.ok) {
        return Either.success(
          _response.data?['message'] ?? "Marked as read successfully.",
        );
      }

      throw Exception(
        'Failed to mark as read notifications, please try again.\nstatusCode:${_response.statusCode}',
      );
    } on DioException catch (e) {
      throw Exception(
        e.response?.data['message'] ?? 'Failed to mark as read notifications.',
      );
    } catch (e) {
      throw Exception('An unexpected error occurred: $e');
    }
  }
  //--------------------------Mark All As Read--------------------------//

  //-----------------------Support Session-----------------------//
  Future<ContactUsResponseModel> getSupportSession() async {
    try {
      final _response = await dioClient.get(
        DAPIEndpoints.support,
        options: DioOptions(headers: _httpClient.getAuthHeader),
      );

      if (_response.statusCode == HttpStatus.ok) {
        return ContactUsResponseModel.fromJson(_response.data);
      }

      throw Exception(
        'Failed to get support session, please try again.\nstatusCode:${_response.statusCode}',
      );
    } on DioException catch (e) {
      throw Exception(
        e.response?.data['message'] ?? 'Failed get support session.',
      );
    } catch (e) {
      throw Exception('An unexpected error occurred: $e');
    }
  }

  Future<Either<String, ChatBubbleModel>> sendMessage({
    int? parentId,
    String? message,
    File? attachment,
  }) async {
    final _formData = await Future.microtask({
      "message": message,
      "file": attachment,
      "parent_id": parentId,
    }.getTypedData);

    try {
      final _response = await dioClient.post(
        DAPIEndpoints.support,
        options: DioOptions(
          contentType: DioHeaders.multipartFormDataContentType,
          headers: _httpClient.getAuthHeader,
        ),
        data: _formData,
      );

      if (_response.statusCode == HttpStatus.ok) {
        final _labor = ChatBubbleModel.fromJson(_response.data?['data']);
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
  //-----------------------Support Session-----------------------//
}

final commonRepoProvider = Provider.autoDispose<CommonRepository>(
  (ref) => CommonRepository(ref.watch(httpDioClientProvider)),
);

final supportSessionProvider = FutureProvider.autoDispose(
  (ref) => Future.microtask(
    () => ref.read(commonRepoProvider).getSupportSession(),
  ),
);

final notificationList = FutureProvider.autoDispose(
  (ref) => Future.microtask(
    () => ref.read(commonRepoProvider).getNotifications(),
  ),
);
