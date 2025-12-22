part of 'payments_model.dart';

class OfflinePaymentMethodModel {
  String? message;
  List<OfflinePaymentMethod>? data;

  OfflinePaymentMethodModel({
    this.message,
    this.data,
  });

  factory OfflinePaymentMethodModel.fromJson(Map<String, dynamic> json) {
    return OfflinePaymentMethodModel(
      message: json["message"],
      data: json["data"] == null
          ? []
          : List<OfflinePaymentMethod>.from(
              json["data"]!.map((x) => OfflinePaymentMethod.fromJson(x))),
    );
  }
}

class OfflinePaymentMethod {
  int? id;
  int? isManual;
  String? name;
  String? image;
  ManualData? manualData;

  OfflinePaymentMethod({
    this.id,
    this.isManual,
    this.name,
    this.image,
    this.manualData,
  });

  factory OfflinePaymentMethod.fromJson(Map<String, dynamic> json) {
    return OfflinePaymentMethod(
      id: json["id"],
      isManual: json["is_manual"],
      name: json["name"],
      image: json["image"],
      manualData: json["manual_data"] == null
          ? null
          : ManualData.fromJson(json["manual_data"]),
    );
  }
}

class ManualData {
  BankInfo? bankInfo;

  ManualData({this.bankInfo});

  factory ManualData.fromJson(Map<String, dynamic> json) {
    return ManualData(
      bankInfo: json["bank_info"] == null
          ? null
          : BankInfo.fromJson(json["bank_info"]),
    );
  }
}

class BankInfo {
  String? bankName;
  String? accHolder;
  String? accNumber;

  BankInfo({
    this.bankName,
    this.accHolder,
    this.accNumber,
  });

  factory BankInfo.fromJson(Map<String, dynamic> json) {
    return BankInfo(
      bankName: json["bank_name"],
      accHolder: json["acc_holder"],
      accNumber: json["acc_number"],
    );
  }
}
