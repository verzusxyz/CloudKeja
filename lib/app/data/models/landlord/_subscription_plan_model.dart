import '../../../core/core.dart';

class SubscriptionPlanModel {
  String? message;
  List<SubscriptionPlan>? data;

  SubscriptionPlanModel({
    this.message,
    this.data,
  });

  factory SubscriptionPlanModel.fromJson(Map<String, dynamic> json) {
    return SubscriptionPlanModel(
      message: json["message"],
      data: json["data"] == null
          ? []
          : List<SubscriptionPlan>.from(
              json["data"]!.map((x) => SubscriptionPlan.fromJson(x))),
    );
  }
}

class SubscriptionPlan {
  int? id;
  String? subscriptionName;
  int? duration;
  String? durationType;
  num? offerPrice;
  num? subscriptionPrice;
  int? numberOfProperty;
  int? numberOfLandlord;
  int? numberOfTenant;
  int? numberOfLabor;
  int? numberOfMaintenance;
  List<Feature>? features;
  DynamicFileType? image;
  int? status;
  DateTime? createdAt;
  DateTime? updatedAt;

  SubscriptionPlan({
    this.id,
    this.subscriptionName,
    this.duration,
    this.durationType,
    this.offerPrice,
    this.subscriptionPrice,
    this.numberOfProperty,
    this.numberOfLandlord,
    this.numberOfTenant,
    this.numberOfLabor,
    this.numberOfMaintenance,
    this.features,
    this.image,
    this.status,
    this.createdAt,
    this.updatedAt,
  });

  factory SubscriptionPlan.fromJson(Map<String, dynamic> json) {
    return SubscriptionPlan(
      id: json["id"],
      subscriptionName: json["subscriptionName"],
      duration: json["duration"],
      durationType: json["duration_type"],
      offerPrice: json["offerPrice"],
      subscriptionPrice: json["subscriptionPrice"],
      numberOfProperty: json["number_of_property"],
      numberOfLandlord: json["number_of_landlord"],
      numberOfTenant: json["number_of_tenant"],
      numberOfLabor: json["number_of_labor"],
      numberOfMaintenance: json["number_of_maintenance"],
      features: json["features"] == null
          ? []
          : List<Feature>.from(
              json["features"]!.map((x) => Feature.fromJson(x))),
      image:
          json['image'] != null ? DynamicFileType(remote: json['image']) : null,
      status: json["status"],
      createdAt: json["created_at"] == null
          ? null
          : DateTime.parse(json["created_at"]),
      updatedAt: json["updated_at"] == null
          ? null
          : DateTime.parse(json["updated_at"]),
    );
  }
}

class Feature {
  String? name;
  bool isAvailable;

  Feature({
    this.name,
    this.isAvailable = false,
  });

  factory Feature.fromJson(Map<String, dynamic> json) {
    return Feature(
      name: json["name"],
      isAvailable: json["status"] == 1,
    );
  }
}
