import 'package:equatable/equatable.dart';

class DashboardDataModel<T> {
  String? message;
  T? data;

  DashboardDataModel({
    this.message,
    this.data,
  });

  factory DashboardDataModel.fromJson(
    Map<String, dynamic> json,
    T Function(Map<String, dynamic>) fromJsonT,
  ) {
    return DashboardDataModel(
      message: json["message"],
      data: json["data"] == null ? null : fromJsonT(json["data"]),
    );
  }
}

class DashboardPropertyChart {
  num? totalProperties;
  num? occupied;
  num? maintenance;
  num? occupiedPercentage;
  num? vacant;
  num? vacantPercentage;
  num? maintenancePercentage;

  DashboardPropertyChart({
    this.totalProperties,
    this.occupied,
    this.maintenance,
    this.occupiedPercentage,
    this.vacant,
    this.vacantPercentage,
    this.maintenancePercentage,
  });

  factory DashboardPropertyChart.fromJson(Map<String, dynamic> json) =>
      DashboardPropertyChart(
        totalProperties: json["total_properties"],
        occupied: json["occupied"],
        maintenance: json["maintenance"],
        occupiedPercentage: json["occupied_percentage"],
        vacant: json["vacant"],
        vacantPercentage: json["vacant_percentage"],
        maintenancePercentage: json["maintenance_percentage"],
      );
}

class DashboardOverviewData {
  num? currentBalance;
  num? totalWithdraw;
  num? totalProperties;
  num? totalTenant;
  num? totalRentPaid;
  num? totalRentDue;
  num? totalApplication;
  num? pendingApplication;
  num? processingApplication;
  num? approveApplication;
  num? rejectApplication;
  num? pendingMaintenance;
  num? processingMaintenance;
  num? maintenanceCost;

  DashboardOverviewData({
    this.currentBalance,
    this.totalWithdraw,
    this.totalProperties,
    this.totalTenant,
    this.totalRentPaid,
    this.totalRentDue,
    this.totalApplication,
    this.pendingApplication,
    this.processingApplication,
    this.approveApplication,
    this.rejectApplication,
    this.pendingMaintenance,
    this.processingMaintenance,
    this.maintenanceCost,
  });

  factory DashboardOverviewData.fromJson(Map<String, dynamic> json) {
    return DashboardOverviewData(
      currentBalance: json['current_balance'],
      totalWithdraw: json['total_withdraw'],
      totalProperties: json['total_properties'],
      totalTenant: json['total_tenant'],
      totalRentPaid: json['total_rent_paid'],
      totalRentDue: json['total_rent_due'],
      totalApplication: json['total_application'],
      pendingApplication: json['pending_application'],
      processingApplication: json['processing_application'],
      approveApplication: json['approve_application'],
      rejectApplication: json['reject_application'],
      pendingMaintenance: json['pending_maintenance'],
      processingMaintenance: json['processing_maintenance'],
      maintenanceCost: json['maintenance_cost'],
    );
  }
}

class DashboardAccountingChartModel {
  num? totalIncome;
  num? totalExpense;
  num? profitLoss;
  num? profitLossPercentage;
  String? status;
  num? maxValue;
  num? minValue;
  List<ChartData>? incomeAmountData;
  List<ChartData>? expenseAmountData;

  bool get isLoss => status?.trim().toLowerCase() == 'loss';
  bool get isProfit => status?.trim().toLowerCase() == 'profit';

  DashboardAccountingChartModel({
    this.totalIncome,
    this.totalExpense,
    this.profitLoss,
    this.profitLossPercentage,
    this.status,
    this.maxValue,
    this.minValue,
    this.incomeAmountData,
    this.expenseAmountData,
  });

  factory DashboardAccountingChartModel.fromJson(Map<String, dynamic> json) {
    return DashboardAccountingChartModel(
      totalIncome: json["total_income"],
      totalExpense: json["total_expense"],
      profitLoss: json["profit_loss"],
      profitLossPercentage: json["profit_loss_percentage"],
      status: json["status"],
      maxValue: json["max_value"],
      minValue: json["min_value"],
      incomeAmountData: json["income_amount_data"] == null
          ? []
          : List<ChartData>.from(
              json["income_amount_data"]!.map((x) => ChartData.fromJson(x))),
      expenseAmountData: json["expense_amount_data"] == null
          ? []
          : List<ChartData>.from(
              json["expense_amount_data"]!.map((x) => ChartData.fromJson(x))),
    );
  }
}

class ChartData {
  String? date;
  num? amount;

  ChartData({
    this.date,
    this.amount,
  });

  factory ChartData.fromJson(Map<String, dynamic> json) => ChartData(
        date: json["date"],
        amount: json["amount"],
      );
}

class DashboardFilterModel extends Equatable {
  final String? fromDate;
  final String? toDate;
  final String? frequency;

  const DashboardFilterModel({
    this.fromDate,
    this.toDate,
    this.frequency,
  });

  DashboardFilterModel copyWith({
    String? fromDate,
    String? toDate,
    String? frequency,
  }) {
    return DashboardFilterModel(
      fromDate: fromDate ?? this.fromDate,
      toDate: toDate ?? this.toDate,
      frequency: frequency ?? this.frequency,
    );
  }

  @override
  List<Object?> get props => [fromDate, toDate, frequency];
}
