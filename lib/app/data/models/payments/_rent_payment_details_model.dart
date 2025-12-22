part of 'payments_model.dart';

class RentPaymentDetailsModel {
  String? message;
  RentPaymentDetails? data;

  RentPaymentDetailsModel({
    this.message,
    this.data,
  });

  factory RentPaymentDetailsModel.fromJson(Map<String, dynamic> json) =>
      RentPaymentDetailsModel(
        message: json["message"],
        data: json["data"] == null
            ? null
            : RentPaymentDetails.fromJson(json["data"]),
      );
}

class RentPaymentDetails {
  int? id;
  String? invoiceNo;
  int? rentId;
  int? gatewayId;
  num? monthlyRent;
  num? utilityBill;
  num? charge;
  num? subtotalAmount;
  num? totalAmount;
  String? rentMonth;
  String? rentYear;
  DateTime? paymentDate;
  String? paymentStatus;
  PaymentData? paymentData;
  String? note;
  DateTime? createdAt;
  DateTime? updatedAt;
  RentDetails? rent;

  RentPaymentDetails({
    this.id,
    this.invoiceNo,
    this.rentId,
    this.gatewayId,
    this.monthlyRent,
    this.utilityBill,
    this.charge,
    this.subtotalAmount,
    this.totalAmount,
    this.rentMonth,
    this.rentYear,
    this.paymentDate,
    this.paymentStatus,
    this.paymentData,
    this.note,
    this.createdAt,
    this.updatedAt,
    this.rent,
  });

  factory RentPaymentDetails.fromJson(Map<String, dynamic> json) =>
      RentPaymentDetails(
        id: json["id"],
        invoiceNo: json["invoice_no"],
        rentId: json["rent_id"],
        gatewayId: json["gateway_id"],
        monthlyRent: json["monthly_rent"],
        utilityBill: json["utility_bill"],
        charge: json["charge"],
        subtotalAmount: json["subtotal_amount"],
        totalAmount: json["total_amount"],
        rentMonth: json["rent_month"],
        rentYear: json["rent_year"],
        paymentDate: json["payment_date"] == null
            ? null
            : DateTime.parse(json["payment_date"]),
        paymentStatus: json["payment_status"],
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
        rent: json["rent"] == null ? null : RentDetails.fromJson(json["rent"]),
      );
}
