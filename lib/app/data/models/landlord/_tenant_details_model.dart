import '../admin/models.dart';

class Tenant extends User {
  const Tenant({
    super.id,
    super.image,
    super.profileType,
    super.name,
    super.email,
    super.phone,
    super.balance,
    super.createdAt,
    super.emailVerifiedAt,
    super.isSetupped,
    super.role,
    super.updatedAt,
    super.userDetails,
    this.password,
    this.uniqueId,
  });
  final String? uniqueId;
  final String? password;

  factory Tenant.fromJson(Map<String, dynamic> json) {
    final _user = User.fromJson(json);
    return Tenant(
      id: _user.id,
      image: _user.image,
      profileType: _user.profileType,
      name: _user.name,
      email: _user.email,
      phone: _user.phone,
      balance: _user.balance,
      createdAt: _user.createdAt,
      emailVerifiedAt: _user.emailVerifiedAt,
      isSetupped: _user.isSetupped,
      role: _user.role,
      updatedAt: _user.updatedAt,
      userDetails: _user.userDetails,
      password: json['password'] as String?,
      uniqueId: json['unique_id'] as String?,
    );
  }

  @override
  Map<String, dynamic> toRequest() {
    return {
      ...super.toRequest(),
      "password": password,
    };
  }
}

class TenantDetailsModel {
  final String? message;
  final TenantDetails? details;

  TenantDetailsModel({this.message, this.details});

  factory TenantDetailsModel.fromJson(Map<String, dynamic> json) {
    return TenantDetailsModel(
      message: json['message'] as String?,
      details:
          json['data'] == null ? null : TenantDetails.fromJson(json['data']),
    );
  }
}

class TenantDetails extends Tenant {
  const TenantDetails({
    super.id,
    super.uniqueId,
    super.image,
    super.profileType,
    super.name,
    super.email,
    super.phone,
    super.balance,
    super.createdAt,
    super.emailVerifiedAt,
    super.isSetupped,
    super.role,
    super.updatedAt,
    super.userDetails,
    super.password,
    this.rent,
  });

  final List<TenantRentInfo>? rent;

  factory TenantDetails.fromJson(Map<String, dynamic> json) {
    final _tenant = Tenant.fromJson(json);
    return TenantDetails(
      id: _tenant.id,
      uniqueId: _tenant.uniqueId,
      image: _tenant.image,
      profileType: _tenant.profileType,
      name: _tenant.name,
      email: _tenant.email,
      phone: _tenant.phone,
      balance: _tenant.balance,
      createdAt: _tenant.createdAt,
      emailVerifiedAt: _tenant.emailVerifiedAt,
      isSetupped: _tenant.isSetupped,
      role: _tenant.role,
      updatedAt: _tenant.updatedAt,
      userDetails: _tenant.userDetails,
      password: _tenant.password,
      rent: json["rents"] == null
          ? []
          : List<TenantRentInfo>.from(
              json["rents"]!.map((x) => TenantRentInfo.fromJson(x)),
            ),
    );
  }
}

class TenantRentInfo extends RentDetails {
  final TenantRentPaymentInfo? rentPayment;

  const TenantRentInfo({
    super.id,
    super.landlordId,
    super.tenantId,
    super.propertyId,
    super.monthlyRent,
    super.utilityBill,
    super.totalAmount,
    super.startDate,
    super.endDate,
    super.landlordAgreement,
    super.tenantAgreement,
    super.status,
    super.cancelInfo,
    super.createdAt,
    super.updatedAt,
    super.tenant,
    super.landlord,
    super.property,
    super.securityDeposit,
    this.rentPayment,
  });

  factory TenantRentInfo.fromJson(Map<String, dynamic> json) {
    final _baseInfo = RentDetails.fromJson(json);
    return TenantRentInfo(
      id: _baseInfo.id,
      landlordId: _baseInfo.landlordId,
      tenantId: _baseInfo.tenantId,
      propertyId: _baseInfo.propertyId,
      monthlyRent: _baseInfo.monthlyRent,
      utilityBill: _baseInfo.utilityBill,
      totalAmount: _baseInfo.totalAmount,
      startDate: _baseInfo.startDate,
      endDate: _baseInfo.endDate,
      landlordAgreement: _baseInfo.landlordAgreement,
      tenantAgreement: _baseInfo.tenantAgreement,
      status: _baseInfo.status,
      cancelInfo: _baseInfo.cancelInfo,
      createdAt: _baseInfo.createdAt,
      updatedAt: _baseInfo.updatedAt,
      tenant: _baseInfo.tenant,
      landlord: _baseInfo.landlord,
      property: _baseInfo.property,
      securityDeposit: _baseInfo.securityDeposit,
      rentPayment: json["rent_payments"] == null
          ? null
          : List<TenantRentPaymentInfo>.from(
              json["rent_payments"]!.map(
                (x) => TenantRentPaymentInfo.fromJson(x),
              ),
            ).firstOrNull,
    );
  }
}

class TenantRentPaymentInfo {
  int? rentId;
  String? paymentStatus;
  num? totalPaidRent;
  num? thisMonthPayment;
  num? dueRent;

  TenantRentPaymentInfo({
    this.rentId,
    this.paymentStatus,
    this.totalPaidRent,
    this.thisMonthPayment,
    this.dueRent,
  });

  factory TenantRentPaymentInfo.fromJson(Map<String, dynamic> json) {
    return TenantRentPaymentInfo(
      rentId: json["rent_id"],
      paymentStatus: json["payment_status"],
      totalPaidRent: json["total_paid_rent"],
      thisMonthPayment: json["this_month_payment"],
      dueRent: json["due_rent"],
    );
  }
}
