import 'package:equatable/equatable.dart';

class AdminWithdrawMethodModel {
  String? message;
  List<AdminWithdrawMethod>? data;

  AdminWithdrawMethodModel({
    this.message,
    this.data,
  });

  factory AdminWithdrawMethodModel.fromJson(Map<String, dynamic> json) {
    return AdminWithdrawMethodModel(
      message: json["message"],
      data: json["data"] == null
          ? []
          : List<AdminWithdrawMethod>.from(
              json["data"]!.map((x) => AdminWithdrawMethod.fromJson(x)),
            ),
    );
  }
}

class AdminWithdrawMethod extends Equatable {
  final int? id;
  final String? name;
  final String? instructions;
  final List<Meta>? meta;
  final int? status;
  final num? charge;
  final String? chargeType;

  const AdminWithdrawMethod({
    this.id,
    this.name,
    this.instructions,
    this.meta,
    this.status,
    this.charge,
    this.chargeType,
  });

  factory AdminWithdrawMethod.fromJson(Map<String, dynamic> json) {
    return AdminWithdrawMethod(
      id: json["id"],
      name: json["name"],
      instructions: json["instructions"],
      meta: json["meta"] == null
          ? []
          : List<Meta>.from(json["meta"]!.map((x) => Meta.fromJson(x))),
      status: json["status"],
      charge: json["charge"],
      chargeType: json["charge_type"],
    );
  }

  @override
  List<Object?> get props => [id, name];
}

class Meta extends Equatable {
  final String? label;
  final String? input;

  const Meta({
    this.label,
    this.input,
  });

  factory Meta.fromJson(Map<String, dynamic> json) {
    return Meta(
      label: json["label"],
      input: json["input"],
    );
  }

  @override
  List<Object?> get props => [label, input];
}

class UserWithdrawMethodModel {
  String? message;
  UserWithdrawMethodData? data;

  UserWithdrawMethodModel({
    this.message,
    this.data,
  });

  factory UserWithdrawMethodModel.fromJson(Map<String, dynamic> json) {
    return UserWithdrawMethodModel(
      message: json["message"],
      data: json["data"] == null
          ? null
          : UserWithdrawMethodData.fromJson(json["data"]),
    );
  }
}

class UserWithdrawMethodData {
  num? balance;
  List<UserWithdrawMethod>? methods;

  UserWithdrawMethodData({
    this.balance,
    this.methods,
  });

  factory UserWithdrawMethodData.fromJson(Map<String, dynamic> json) {
    return UserWithdrawMethodData(
      balance: json["balance"],
      methods: json["methods"] == null
          ? []
          : List<UserWithdrawMethod>.from(
              json["methods"]!.map((x) => UserWithdrawMethod.fromJson(x))),
    );
  }
}

class UserWithdrawMethod extends Equatable {
  final int? id;
  final int? methodId;
  final Map<String, String?>? infos;
  final String? notes;
  final String? name;
  final num? charge;
  final String? chargeType;
  final List<Meta>? meta;
  final num? minAmount;
  final num? maxAmount;
  final String? accountNo;
  final AdminWithdrawMethod? withdrawMethod;

  const UserWithdrawMethod({
    this.id,
    this.methodId,
    this.infos,
    this.notes,
    this.name,
    this.charge,
    this.chargeType,
    this.meta,
    this.minAmount,
    this.maxAmount,
    this.accountNo,
    this.withdrawMethod,
  });

  factory UserWithdrawMethod.fromJson(Map<String, dynamic> json) {
    return UserWithdrawMethod(
      id: json["id"],
      name: json["name"],
      methodId: json["method_id"],
      infos: json["infos"] == null
          ? null
          : Map<String, String?>.from(json["infos"]),
      notes: json["notes"],
      charge: json["charge"],
      chargeType: json["charge_type"],
      meta: json["meta"] == null
          ? []
          : List<Meta>.from(json["meta"]!.map((x) => Meta.fromJson(x))),
      minAmount: json['min_amount'],
      maxAmount: json['max_amount'],
      accountNo: json['account_no'],
      withdrawMethod: json["withdraw_method"] == null
          ? null
          : AdminWithdrawMethod.fromJson(json["withdraw_method"]),
    );
  }

  Map<String, dynamic> toRequest() {
    return {
      "method_id": methodId,
      "account_no": accountNo,
      ...?infos?.map((key, value) => MapEntry('infos[$key]', value))
    };
  }

  @override
  List<Object?> get props => [id, infos];
}

//-----------------------Withdraw Transaction Details-----------------------//
class WithdrawDetailsModel {
  String? message;
  WithdrawDetails? data;

  WithdrawDetailsModel({
    this.message,
    this.data,
  });

  factory WithdrawDetailsModel.fromJson(Map<String, dynamic> json) {
    return WithdrawDetailsModel(
      message: json["message"],
      data:
          json["data"] == null ? null : WithdrawDetails.fromJson(json["data"]),
    );
  }
}

class WithdrawDetails {
  int? id;
  int? userMethodId;
  String? status;
  DateTime? createdAt;
  num? amount;
  UserWithdrawMethod? accountInfo;

  WithdrawDetails({
    this.id,
    this.userMethodId,
    this.status,
    this.createdAt,
    this.amount,
    this.accountInfo,
  });

  factory WithdrawDetails.fromJson(Map<String, dynamic> json) =>
      WithdrawDetails(
        id: json["id"],
        userMethodId: json["user_method_id"],
        status: json["status"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        amount: json["amount"],
        accountInfo: json["account_info"] == null
            ? null
            : UserWithdrawMethod.fromJson(json["account_info"]),
      );
}
//-----------------------Withdraw Transaction Details-----------------------//

//-----------------------Withdraw Transaction Summary-----------------------//
class WithdrawSummaryModel {
  String? message;
  WithdrawSummary? data;

  WithdrawSummaryModel({
    this.message,
    this.data,
  });

  factory WithdrawSummaryModel.fromJson(Map<String, dynamic> json) =>
      WithdrawSummaryModel(
        message: json["message"],
        data: json["data"] == null
            ? null
            : WithdrawSummary.fromJson(json["data"]),
      );
}

class WithdrawSummary {
  int? id;
  int? withdrawId;
  String? uid;
  String? paymentType;
  Withdraw? withdraw;

  WithdrawSummary({
    this.id,
    this.withdrawId,
    this.uid,
    this.paymentType,
    this.withdraw,
  });

  factory WithdrawSummary.fromJson(Map<String, dynamic> json) =>
      WithdrawSummary(
        id: json["id"],
        withdrawId: json["withdraw_id"],
        uid: json["uid"],
        paymentType: json["payment_type"],
        withdraw: json["withdraw"] == null
            ? null
            : Withdraw.fromJson(json["withdraw"]),
      );
}

class Withdraw {
  int? id;
  num? amount;
  num? charge;
  String? status;
  DateTime? createdAt;
  UserWithdrawMethod? accountInfo;

  Withdraw({
    this.id,
    this.amount,
    this.charge,
    this.status,
    this.createdAt,
    this.accountInfo,
  });

  factory Withdraw.fromJson(Map<String, dynamic> json) {
    return Withdraw(
      id: json["id"],
      amount: json["amount"],
      charge: json["charge"],
      status: json["status"],
      createdAt: json["created_at"] == null
          ? null
          : DateTime.parse(json["created_at"]),
      accountInfo: json["account_info"] == null
          ? null
          : UserWithdrawMethod.fromJson(json["account_info"]),
    );
  }
}
//-----------------------Withdraw Transaction Summary-----------------------//
