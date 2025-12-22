part of 'payments_model.dart';

class RefundRequestDetailsModel {
  String? message;
  RefundRequestDetails? data;

  RefundRequestDetailsModel({
    this.message,
    this.data,
  });

  factory RefundRequestDetailsModel.fromJson(Map<String, dynamic> json) =>
      RefundRequestDetailsModel(
        message: json["message"],
        data: json["data"] == null
            ? null
            : RefundRequestDetails.fromJson(json["data"]),
      );
}

class RefundRequestDetails {
  int? id;
  int? depositId;
  int? landlordId;
  int? tenantId;
  int? propertyId;
  int? reasonId;
  num? amount;
  String? status;
  String? refundReason;
  DynamicFileType? attachment;
  BankInfo? bankInfo;
  DateTime? createdAt;
  DateTime? updatedAt;
  PropertyModel? property;
  Tenant? landlord;
  Tenant? tenant;
  Deposit? deposit;

  bool get hasReceipt {
    return attachment?.remote != null;
  }

  RefundRequestDetails({
    this.id,
    this.depositId,
    this.landlordId,
    this.tenantId,
    this.propertyId,
    this.reasonId,
    this.amount,
    this.status,
    this.refundReason,
    this.attachment,
    this.bankInfo,
    this.createdAt,
    this.updatedAt,
    this.property,
    this.landlord,
    this.tenant,
    this.deposit,
  });

  factory RefundRequestDetails.fromJson(Map<String, dynamic> json) {
    return RefundRequestDetails(
      id: json["id"],
      depositId: json["deposit_id"],
      landlordId: json["landlord_id"],
      tenantId: json["tenant_id"],
      propertyId: json["property_id"],
      reasonId: json["reason_id"],
      amount: json["amount"],
      status: json["status"],
      refundReason: json["refund_reason"],
      attachment: json["attachment"] == null
          ? null
          : DynamicFileType(remote: json["attachment"]),
      bankInfo: json["bank_info"] == null
          ? null
          : BankInfo.fromJson(json["bank_info"]),
      createdAt: json["created_at"] == null
          ? null
          : DateTime.parse(json["created_at"]),
      updatedAt: json["updated_at"] == null
          ? null
          : DateTime.parse(json["updated_at"]),
      property: json["property"] == null
          ? null
          : PropertyModel.fromJson(json["property"]),
      landlord:
          json["landlord"] == null ? null : Tenant.fromJson(json["landlord"]),
      tenant: json["tenant"] == null ? null : Tenant.fromJson(json["tenant"]),
      deposit:
          json["deposit"] == null ? null : Deposit.fromJson(json["deposit"]),
    );
  }

  Map<String, dynamic> toRequest() {
    return {
      "property_id": propertyId,
      "reason_id": reasonId,
      "bank_info[account_name]": bankInfo?.accHolder,
      "bank_info[bank_name]": bankInfo?.bankName,
      "bank_info[account_no]": bankInfo?.accNumber,
    };
  }
}

class Deposit {
  int? id;
  String? invoiceNo;
  num? depositAmount;
  num? utilityAdvance;
  num? rentAdvance;
  num? totalAmount;

  Deposit({
    this.id,
    this.invoiceNo,
    this.depositAmount,
    this.utilityAdvance,
    this.rentAdvance,
    this.totalAmount,
  });

  factory Deposit.fromJson(Map<String, dynamic> json) => Deposit(
        id: json["id"],
        invoiceNo: json["invoice_no"],
        depositAmount: json["deposit_amount"],
        utilityAdvance: json["utility_advance"],
        rentAdvance: json["rent_advance"],
        totalAmount: json["total_amount"],
      );
}

class RefundReasonModel {
  String? message;
  List<RefundReason>? data;

  RefundReasonModel({
    this.message,
    this.data,
  });

  factory RefundReasonModel.fromJson(Map<String, dynamic> json) =>
      RefundReasonModel(
        message: json["message"],
        data: json["data"] == null
            ? []
            : List<RefundReason>.from(
                json["data"]!.map((x) => RefundReason.fromJson(x))),
      );
}

class RefundReason {
  int? id;
  String? reason;
  String? status;
  DateTime? createdAt;
  DateTime? updatedAt;

  RefundReason({
    this.id,
    this.reason,
    this.status,
    this.createdAt,
    this.updatedAt,
  });

  factory RefundReason.fromJson(Map<String, dynamic> json) {
    return RefundReason(
      id: json["id"],
      reason: json["reason"],
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
