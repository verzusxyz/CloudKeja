part of 'payments_model.dart';

class SecurityDepositDetailsModel {
  String? message;
  SecurityDepositDetails? data;

  SecurityDepositDetailsModel({
    this.message,
    this.data,
  });

  factory SecurityDepositDetailsModel.fromJson(Map<String, dynamic> json) =>
      SecurityDepositDetailsModel(
        message: json["message"],
        data: json["data"] == null
            ? null
            : SecurityDepositDetails.fromJson(json["data"]),
      );
}

class SecurityDepositDetails {
  int? id;
  String? invoiceNo;
  int? tenantId;
  int? landlordId;
  int? gatewayId;
  int? rentId;
  int? propertyId;
  num? depositAmount;
  num? rentAdvance;
  num? utilityAdvance;
  num? totalAmount;
  num? charge;
  num? landlordBalance;
  DateTime? paymentDate;
  String? status;
  PaymentData? paymentData;
  String? note;
  DateTime? createdAt;
  DateTime? updatedAt;
  PropertyModel? property;
  Tenant? landlord;
  Tenant? tenant;

  SecurityDepositDetails({
    this.id,
    this.invoiceNo,
    this.tenantId,
    this.landlordId,
    this.gatewayId,
    this.rentId,
    this.propertyId,
    this.depositAmount,
    this.rentAdvance,
    this.utilityAdvance,
    this.totalAmount,
    this.charge,
    this.landlordBalance,
    this.paymentDate,
    this.status,
    this.paymentData,
    this.note,
    this.createdAt,
    this.updatedAt,
    this.property,
    this.landlord,
    this.tenant,
  });

  factory SecurityDepositDetails.fromJson(Map<String, dynamic> json) =>
      SecurityDepositDetails(
        id: json["id"],
        invoiceNo: json["invoice_no"],
        tenantId: json["tenant_id"],
        landlordId: json["landlord_id"],
        gatewayId: json["gateway_id"],
        rentId: json["rent_id"],
        propertyId: json["property_id"],
        depositAmount: json["deposit_amount"],
        rentAdvance: json["rent_advance"],
        utilityAdvance: json["utility_advance"],
        totalAmount: json["total_amount"],
        charge: json["charge"],
        landlordBalance: json["landlord_balance"],
        paymentDate: json["payment_date"] == null
            ? null
            : DateTime.parse(json["payment_date"]),
        status: json["status"],
        paymentData: json["payment_data"] == null
            ? null
            : PaymentData.fromJson(json["payment_data"]),
        note: json["note"],
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
      );
}

class PaymentData {
  String? paymentNote;
  String? paymentReceipt;

  PaymentData({
    this.paymentNote,
    this.paymentReceipt,
  });

  factory PaymentData.fromJson(Map<String, dynamic> json) => PaymentData(
        paymentNote: json["payment_note"],
        paymentReceipt: json["payment_receipt"],
      );

  Map<String, dynamic> toJson() => {
        "payment_note": paymentNote,
        "payment_receipt": paymentReceipt,
      };
}
