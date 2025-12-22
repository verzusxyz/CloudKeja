import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../repositories.dart';

class PaymentsRepository {
  PaymentsRepository(this._httpClient);

  final HTTPDioClient _httpClient;
  late final dioClient = _httpClient.restClient;

  //--------------------------Get Security Deposit--------------------------//
  Future<PaginatedSecurityDepositListModel> getSecurityDepositList({
    int page = 1,
    String? search,
    String? status,
    String? fromDate,
    String? toDate,
    bool noPaging = false,
  }) async {
    try {
      final _response = await dioClient.get(
        DAPIEndpoints.securityDeposits,
        options: DioOptions(headers: _httpClient.getAuthHeader),
        queryParameters: {
          "page": page,
          "search": search,
          "status": status,
          "from_date": fromDate,
          "to_date": toDate,
          if (noPaging) "no_paginate": 1,
        },
      );

      if (_response.statusCode == HttpStatus.ok) {
        return PaginatedSecurityDepositListModel.fromJson(
          _response.data,
          (json) => SecurityDepositDetails.fromJson(json),
        );
      }

      throw Exception(
        'Failed to get security deposit list, please try again.\nstatusCode:${_response.statusCode}',
      );
    } on DioException catch (e) {
      throw Exception(
        e.response?.data['message'] ?? 'Failed to get security deposit list',
      );
    } catch (e) {
      throw Exception('An unexpected error occurred: $e');
    }
  }
  //--------------------------Get Security Deposit--------------------------//

  //----------------------Get Security Deposit Details----------------------//
  Future<SecurityDepositDetailsModel> getSecurityDepositDetails(int id) async {
    try {
      final _response = await dioClient.get(
        DAPIEndpoints.securityDeposit(id),
        options: DioOptions(headers: _httpClient.getAuthHeader),
      );

      if (_response.statusCode == HttpStatus.ok) {
        final _model = SecurityDepositDetailsModel.fromJson(_response.data);
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
  //----------------------Get Security Deposit Details----------------------//

  //--------------------------Get Rent Payments--------------------------//
  Future<PaginatedRentPaymentListModel> getRentPaymentList({
    int page = 1,
    String? search,
    String? status,
    String? fromDate,
    String? toDate,
    bool noPaging = false,
  }) async {
    try {
      final _response = await dioClient.get(
        DAPIEndpoints.rentPayments,
        options: DioOptions(headers: _httpClient.getAuthHeader),
        queryParameters: {
          "page": page,
          "search": search,
          "payment_status": status,
          "from_date": fromDate,
          "to_date": toDate,
          if (noPaging) "no_paginate": 1,
        },
      );

      if (_response.statusCode == HttpStatus.ok) {
        return PaginatedRentPaymentListModel.fromJson(
          _response.data,
          (json) => RentPaymentDetails.fromJson(json),
        );
      }

      throw Exception(
        'Failed to get rent payment list, please try again.\nstatusCode:${_response.statusCode}',
      );
    } on DioException catch (e) {
      throw Exception(
        e.response?.data['message'] ?? 'Failed to get rent payment list',
      );
    } catch (e) {
      throw Exception('An unexpected error occurred: $e');
    }
  }
  //--------------------------Get Rent Payments--------------------------//

  //-----------------------Get Offline Payment Method-----------------------//
  Future<OfflinePaymentMethodModel> getOfflinePaymentMethodList() async {
    try {
      final _response = await dioClient.get(
        DAPIEndpoints.offlinePaymentMethods,
        options: DioOptions(headers: _httpClient.getAuthHeader),
      );

      if (_response.statusCode == HttpStatus.ok) {
        return OfflinePaymentMethodModel.fromJson(_response.data);
      }

      throw Exception(
        'Failed to get offline payment method list, please try again.\nstatusCode:${_response.statusCode}',
      );
    } on DioException catch (e) {
      throw Exception(
        e.response?.data['message'] ??
            'Failed to get offline payment method list',
      );
    } catch (e) {
      throw Exception('An unexpected error occurred: $e');
    }
  }
  //-----------------------Get Offline Payment Method-----------------------//

  //-------------------------Manage Offline Payment-------------------------//
  Future<Either<String, String>> manageOfflinePayment({
    required int gatewayId,
    required int invoiceId,
    required File invoiceReceipt,
    String? paymentNote,
    required String paymentType,
  }) async {
    try {
      final _formData = await Future.microtask(
        {
          "payment_note": paymentNote,
          "payment_receipt": invoiceReceipt,
          "payment_type": paymentType,
        }.getTypedData,
      );

      final _response = await dioClient.post(
        DAPIEndpoints.offlinePayment(gatewayId, invoiceId),
        options: DioOptions(headers: _httpClient.getAuthHeader),
        data: _formData,
      );

      if (_response.statusCode == HttpStatus.ok) {
        gEventListener.fire<PaymentsEvent>(PaymentsEvent.modified);
        return Either.success(
          _response.data?['message'] ?? "Payment Successful.",
        );
      }

      return Either.failure(
        'Failed to make payment, please try again.\nstatusCode:${_response.statusCode}',
      );
    } on DioException catch (e) {
      return Either.failure(
        e.response?.data['message'] ?? 'Failed to make payment.',
      );
    } catch (e) {
      return Either.failure('An unexpected error occurred: $e');
    }
  }
  //-------------------------Manage Offline Payment-------------------------//

  //--------------------------Get Refund Request--------------------------//
  Future<PaginatedRefundRequestListModel> getRefundRequestList({
    int page = 1,
    String? status,
    String? fromDate,
    String? toDate,
  }) async {
    try {
      final _response = await dioClient.get(
        DAPIEndpoints.refundRequests,
        options: DioOptions(headers: _httpClient.getAuthHeader),
        queryParameters: {
          "page": page,
          "status": status,
          "from_date": fromDate,
          "to_date": toDate,
        },
      );

      if (_response.statusCode == HttpStatus.ok) {
        return PaginatedRefundRequestListModel.fromJson(
          _response.data,
          (json) => RefundRequestDetails.fromJson(json),
        );
      }

      throw Exception(
        'Failed to get refund request list, please try again.\nstatusCode:${_response.statusCode}',
      );
    } on DioException catch (e) {
      throw Exception(
        e.response?.data['message'] ?? 'Failed to get refund request list',
      );
    } catch (e) {
      throw Exception('An unexpected error occurred: $e');
    }
  }
  //--------------------------Get Refund Request--------------------------//

  //--------------------------Get Refund Reason--------------------------//
  Future<RefundReasonModel> getRefundReasonList() async {
    try {
      final _response = await dioClient.get(
        DAPIEndpoints.refundReasons,
        options: DioOptions(headers: _httpClient.getAuthHeader),
      );

      if (_response.statusCode == HttpStatus.ok) {
        return RefundReasonModel.fromJson(_response.data);
      }

      throw Exception(
        'Failed to get refund reason list, please try again.\nstatusCode:${_response.statusCode}',
      );
    } on DioException catch (e) {
      throw Exception(
        e.response?.data['message'] ?? 'Failed to get refund reason list',
      );
    } catch (e) {
      throw Exception('An unexpected error occurred: $e');
    }
  }
  //--------------------------Get Refund Reason--------------------------//

  //-------------------------Manage Refund Request-------------------------//
  Future<Either<String, RefundRequestDetails>> manageRefundRequest({
    int? id,
    required RefundRequestDetails data,
  }) async {
    try {
      final _formData = await Future.microtask(data.toRequest().getTypedData);

      final _response = await dioClient.post(
        DAPIEndpoints.refundRequests,
        options: DioOptions(headers: _httpClient.getAuthHeader),
        data: _formData,
      );

      if (_response.statusCode == HttpStatus.ok) {
        gEventListener.fire<PaymentsEvent>(PaymentsEvent.modified);
        final _model = RefundRequestDetails.fromJson(_response.data);
        return Either.success(_model);
      }

      return Either.failure(
        'Failed to create refund request, please try again.\nstatusCode:${_response.statusCode}',
      );
    } on DioException catch (e) {
      return Either.failure(
        e.response?.data['message'] ?? 'Failed to create refund request.',
      );
    } catch (e) {
      return Either.failure('An unexpected error occurred: $e');
    }
  }
  //-------------------------Manage Refund Request-------------------------//

  //----------------------Make Refund Request Payment----------------------//
  Future<Either<String, RefundRequestDetailsModel>> makeRefundPayment({
    required int id,
    required File file,
  }) async {
    try {
      final _formData = await Future.microtask(
        {"attachment": file}.getTypedData,
      );

      final _response = await dioClient.post(
        DAPIEndpoints.makeRefundPayment(id),
        options: DioOptions(headers: _httpClient.getAuthHeader),
        data: _formData,
      );

      if (_response.statusCode == HttpStatus.ok) {
        gEventListener.fire<PaymentsEvent>(PaymentsEvent.modified);
        final _model = RefundRequestDetailsModel.fromJson(_response.data);
        return Either.success(_model);
      }

      return Either.failure(
        'Failed to make payment, please try again.\nstatusCode:${_response.statusCode}',
      );
    } on DioException catch (e) {
      return Either.failure(
        e.response?.data['message'] ?? 'Failed to make payment.',
      );
    } catch (e) {
      return Either.failure('An unexpected error occurred: $e');
    }
  }
  //----------------------Make Refund Request Payment----------------------//

  //----------------------Approve Refund Request Payment----------------------//
  Future<Either<String, RefundRequestDetailsModel>> approveRefundPayment(
    int id,
  ) async {
    try {
      final _response = await dioClient.post(
        DAPIEndpoints.approveRefundPayment(id),
        options: DioOptions(headers: _httpClient.getAuthHeader),
      );

      if (_response.statusCode == HttpStatus.ok) {
        gEventListener.fire<PaymentsEvent>(PaymentsEvent.modified);
        final _model = RefundRequestDetailsModel.fromJson(_response.data);
        return Either.success(_model);
      }

      return Either.failure(
        'Failed to approve, please try again.\nstatusCode:${_response.statusCode}',
      );
    } on DioException catch (e) {
      return Either.failure(
        e.response?.data['message'] ?? 'Failed to approve.',
      );
    } catch (e) {
      return Either.failure('An unexpected error occurred: $e');
    }
  }
  //----------------------Approve Refund Request Payment----------------------//

  //-------------------------Get Invoice Details-------------------------//
  Future<InvoiceDetailsModel> getInvoiceDetails(String invoicePath) async {
    try {
      final _response = await dioClient.get(
        invoicePath,
        options: DioOptions(headers: _httpClient.getAuthHeader),
      );

      if (_response.statusCode == HttpStatus.ok) {
        return InvoiceDetailsModel.fromJson(_response.data);
      }

      throw Exception(
        'Failed to get invoice info, please try again.\nstatusCode:${_response.statusCode}',
      );
    } on DioException catch (e) {
      throw Exception(
        e.response?.data['message'] ?? 'Failed to get invoice info',
      );
    } catch (e) {
      throw Exception('An unexpected error occurred: $e');
    }
  }
  //-------------------------Get Invoice Details-------------------------//
}

final paymentsRepoProvider = Provider.autoDispose<PaymentsRepository>(
  (ref) => PaymentsRepository(ref.watch(httpDioClientProvider)),
);

final offlinePaymentMethodProvider = FutureProvider(
  (ref) => Future.microtask(
    () => ref.read(paymentsRepoProvider).getOfflinePaymentMethodList(),
  ),
);

final refundReasonProvider = FutureProvider(
  (ref) => Future.microtask(
    () => ref.read(paymentsRepoProvider).getRefundReasonList(),
  ),
);

final invoiceDetailsProvider =
    FutureProvider.autoDispose.family<InvoiceDetailsModel, String>(
  (ref, path) {
    return Future.microtask(
      () => ref.read(paymentsRepoProvider).getInvoiceDetails(path),
    );
  },
);

typedef PaginatedSecurityDepositListModel
    = PaginatedListModel<SecurityDepositDetails>;

typedef PaginatedRefundRequestListModel
    = PaginatedListModel<RefundRequestDetails>;

typedef PaginatedRentPaymentListModel = PaginatedListModel<RentPaymentDetails>;

enum PaymentsEvent { modified }
