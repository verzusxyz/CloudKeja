part of '_maintenance_details_model.dart';

class MaintenanceReportModel {
  String? message;
  MaintenanceReport? data;

  MaintenanceReportModel({this.message, this.data});

  factory MaintenanceReportModel.fromJson(Map<String, dynamic> json) {
    return MaintenanceReportModel(
      message: json["message"],
      data: json["data"] == null
          ? null
          : MaintenanceReport.fromJson(json["data"]),
    );
  }
}

class MaintenanceReport {
  MaintenanceReportData? allProperties;
  MaintenanceReportData? individualProperty;

  MaintenanceReport({
    this.allProperties,
    this.individualProperty,
  });

  factory MaintenanceReport.fromJson(Map<String, dynamic> json) =>
      MaintenanceReport(
        allProperties: json["all_properties"] == null
            ? null
            : MaintenanceReportData.fromJson(json["all_properties"]),
        individualProperty: json["individual_property"] == null
            ? null
            : MaintenanceReportData.fromJson(json["individual_property"]),
      );
}

class MaintenanceReportData {
  num? maintenanceTotalCost;
  int? maintenancePending;
  int? maintenanceProcessing;
  int? maintenanceCompleted;
  int? maintenanceRejected;

  MaintenanceReportData({
    this.maintenanceTotalCost,
    this.maintenancePending,
    this.maintenanceProcessing,
    this.maintenanceCompleted,
    this.maintenanceRejected,
  });

  factory MaintenanceReportData.fromJson(Map<String, dynamic> json) {
    return MaintenanceReportData(
      maintenanceTotalCost: json["maintenance_total_cost"],
      maintenancePending: json["maintenance_pending"],
      maintenanceProcessing: json["maintenance_processing"],
      maintenanceCompleted: json["maintenance_completed"],
      maintenanceRejected: json["maintenance_rejected"],
    );
  }
}
