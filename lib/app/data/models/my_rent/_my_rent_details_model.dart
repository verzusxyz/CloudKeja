import 'package:equatable/equatable.dart';

import '../../../core/core.dart';
import '../models.dart';

class RentDetailsModel {
  String? message;
  RentDetails? data;

  RentDetailsModel({
    this.message,
    this.data,
  });

  factory RentDetailsModel.fromJson(Map<String, dynamic> json) {
    return RentDetailsModel(
      message: json["message"],
      data: json["data"] == null ? null : RentDetails.fromJson(json["data"]),
    );
  }
}

class RentDetails extends Equatable {
  final int? id;
  final int? landlordId;
  final int? tenantId;
  final int? propertyId;
  final num? monthlyRent;
  final num? utilityBill;
  final num? totalAmount;
  final DateTime? startDate;
  final DateTime? endDate;
  final DynamicFileType? landlordAgreement;
  final DynamicFileType? tenantAgreement;
  final String? status;
  final CancelInfo? cancelInfo;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final Tenant? tenant;
  final Tenant? landlord;
  final PropertyModel? property;
  final SecurityDepositDetails? securityDeposit;
  final ThisMonthRentPayment? thisMonthRentPayment;

  bool get hasLLAgreement {
    return landlordAgreement?.remote != null;
  }

  bool get hasTTAgreement {
    return tenantAgreement?.remote != null;
  }

  const RentDetails({
    this.id,
    this.landlordId,
    this.tenantId,
    this.propertyId,
    this.monthlyRent,
    this.utilityBill,
    this.totalAmount,
    this.startDate,
    this.endDate,
    this.landlordAgreement,
    this.tenantAgreement,
    this.status,
    this.cancelInfo,
    this.createdAt,
    this.updatedAt,
    this.tenant,
    this.landlord,
    this.property,
    this.securityDeposit,
    this.thisMonthRentPayment,
  });

  factory RentDetails.fromJson(Map<String, dynamic> json) {
    return RentDetails(
      id: json["id"],
      landlordId: json["landlord_id"],
      tenantId: json["tenant_id"],
      propertyId: json["property_id"],
      monthlyRent: json["monthly_rent"],
      utilityBill: json["utility_bill"],
      totalAmount: json["total_amount"],
      startDate: json["start_date"] == null
          ? null
          : DateTime.parse(json["start_date"]),
      endDate:
          json["end_date"] == null ? null : DateTime.parse(json["end_date"]),
      landlordAgreement: json['landlord_agreement'] == null
          ? null
          : DynamicFileType(remote: json["landlord_agreement"]),
      tenantAgreement: json['tenant_agreement'] == null
          ? null
          : DynamicFileType(remote: json["tenant_agreement"]),
      status: json["status"],
      cancelInfo: json["cancel_info"] == null
          ? null
          : CancelInfo.fromJson(json["cancel_info"]),
      createdAt: json["created_at"] == null
          ? null
          : DateTime.parse(json["created_at"]),
      updatedAt: json["updated_at"] == null
          ? null
          : DateTime.parse(json["updated_at"]),
      tenant: json["tenant"] == null ? null : Tenant.fromJson(json["tenant"]),
      landlord:
          json["landlord"] == null ? null : Tenant.fromJson(json["landlord"]),
      property: json["property"] == null
          ? null
          : PropertyModel.fromJson(json["property"]),
      securityDeposit: json['security_deposit'] == null
          ? null
          : SecurityDepositDetails.fromJson(json['security_deposit']),
      thisMonthRentPayment: json["rent_payments"] == null
          ? null
          : (json["rent_payments"] as List).isNotEmpty
              ? ThisMonthRentPayment.fromJson(json["rent_payments"][0])
              : null,
    );
  }

  Map<String, dynamic> toRequest() {
    return {
      "tenant_id": tenantId,
      "property_id": propertyId,
      "start_date": startDate?.formatDate(pattern: 'yyyy-MM-dd'),
      "end_date": endDate?.formatDate(pattern: 'yyyy-MM-dd'),
      "landlord_agreement": landlordAgreement?.local,
    };
  }

  @override
  List<Object?> get props => [id, propertyId];
}

class CancelInfo {
  String? title;
  String? reason;
  DateTime? prevEndDate;

  CancelInfo({
    this.title,
    this.reason,
    this.prevEndDate,
  });

  factory CancelInfo.fromJson(Map<String, dynamic> json) => CancelInfo(
        title: json["title"],
        reason: json["reason"],
        prevEndDate: json["prev_end_date"] == null
            ? null
            : DateTime.parse(json["prev_end_date"]),
      );
}

class ThisMonthRentPayment {
  int? rentId;
  String? paymentStatus;
  num? totalPaidRent;
  num? thisMonthPayment;
  num? dueRent;
  String? thisMonthPaymentStatus;

  ThisMonthRentPayment({
    this.rentId,
    this.paymentStatus,
    this.totalPaidRent,
    this.thisMonthPayment,
    this.dueRent,
    this.thisMonthPaymentStatus,
  });

  factory ThisMonthRentPayment.fromJson(Map<String, dynamic> json) =>
      ThisMonthRentPayment(
        rentId: json["rent_id"],
        paymentStatus: json["payment_status"],
        totalPaidRent: json["total_paid_rent"],
        thisMonthPayment: json["this_month_payment"],
        dueRent: json["due_rent"],
        thisMonthPaymentStatus: json["this_month_payment_status"],
      );
}
