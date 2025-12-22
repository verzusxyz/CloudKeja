import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../repositories.dart';

class LandlordDashboardRepository {
  LandlordDashboardRepository(this._httpClient);

  final HTTPDioClient _httpClient;
  late final dioClient = _httpClient.restClient;

  //----------------------Get Dashboard Data----------------------//
  Future<DashboardDataModel<T>> getDashboardData<T>({
    required String path,
    required T Function(Map<String, dynamic>) dataType,
    DashboardFilterModel? filter,
  }) async {
    try {
      final _response = await dioClient.get(
        path,
        options: DioOptions(headers: _httpClient.getAuthHeader),
        queryParameters: {
          if (filter?.fromDate != null) 'form_date': filter?.fromDate,
          if (filter?.toDate != null) 'to_date': filter?.toDate,
          if (filter?.frequency != null) 'duration': filter?.frequency,
        },
      );

      if (_response.statusCode == HttpStatus.ok) {
        return DashboardDataModel<T>.fromJson(_response.data, dataType);
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
  //----------------------Get Dashboard Data----------------------//
}

final dashboardRepoProvider = Provider.autoDispose<LandlordDashboardRepository>(
  (ref) => LandlordDashboardRepository(ref.watch(httpDioClientProvider)),
);

typedef DashboardProvide<T> = AutoDisposeFutureProviderFamily<
    DashboardDataModel<T>, DashboardFilterModel>;

final propertyOverviewProvider = FutureProvider.autoDispose(
  (ref) => Future.microtask(
    () => ref
        .read(dashboardRepoProvider)
        .getDashboardData<DashboardPropertyChart>(
          path: DAPIEndpoints.dashboardPropertyChart,
          dataType: (json) => DashboardPropertyChart.fromJson(json),
        ),
  ),
);

final accountingOverviewProvider =
    DashboardProvide<DashboardAccountingChartModel>(
  (ref, filter) {
    return Future.microtask(
      () => ref
          .read(dashboardRepoProvider)
          .getDashboardData<DashboardAccountingChartModel>(
            path: DAPIEndpoints.dashboardAccountChart,
            dataType: (json) => DashboardAccountingChartModel.fromJson(json),
            filter: filter.copyWith(
              fromDate: null,
              toDate: null,
            ),
          ),
    );
  },
);

final dashboardSummaryOverviewProvider =
    DashboardProvide<DashboardOverviewData>(
  (ref, filter) {
    return Future.microtask(
      () => ref
          .read(dashboardRepoProvider)
          .getDashboardData<DashboardOverviewData>(
            path: DAPIEndpoints.dashboardSummaryOverview,
            dataType: (json) => DashboardOverviewData.fromJson(json),
            filter: filter.copyWith(frequency: null),
          ),
    );
  },
);
