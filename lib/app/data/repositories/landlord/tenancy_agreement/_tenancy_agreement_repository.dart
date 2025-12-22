/*
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../repositories.dart';

class LandlordTenancyAgreementRepository {
  LandlordTenancyAgreementRepository(this._httpClient);

  final HTTPDioClient _httpClient;
  late final dioClient = _httpClient.restClient;

  //--------------------Get Agreements--------------------//
  Future<LandlordTenancyAgreementListModel> getAgreements() async {
    try {
      final _response = await dioClient.get(
        DAPIEndpoints.agreements,
        options: DioOptions(headers: _httpClient.getAuthHeader),
      );

      if (_response.statusCode == HttpStatus.ok) {
        final _model = LandlordTenancyAgreementListModel.fromJson(
          _response.data,
        );

        return _model;
      }

      throw Exception(
        'Failed to get agreements.\nstatusCode:${_response.statusCode}',
      );
    } on DioException catch (e) {
      final _exception = Exception(
        e.response?.data['message'] ?? 'Failed to get agreements',
      );

      throw _exception;
    }
  }
  //--------------------Get Agreements--------------------//

  //--------------------Manage Agreements--------------------//
  Future<LandlordTenancyAgreement> manageAgreement({
    int? id,
    required LandlordTenancyAgreement model,
  }) async {
    throw Exception('Failed to create agreement');
  }
  //--------------------Manage Agreements--------------------//
}

final landlordTenancyAgreementRepoProvider =
    Provider.autoDispose<LandlordTenancyAgreementRepository>(
  (ref) => LandlordTenancyAgreementRepository(
    ref.watch(httpDioClientProvider),
  ),
);

final landlordTenancyAgreementListProvider = FutureProvider(
  (ref) => ref.read(landlordTenancyAgreementRepoProvider).getAgreements(),
);

enum LandlordTenancyAgreementEvent { modified, deleted }
*/
