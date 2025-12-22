import '../../../core/core.dart';
import '../models.dart';

class ApplicationDetailsModel {
  String? message;
  Application? data;

  ApplicationDetailsModel({
    this.message,
    this.data,
  });

  factory ApplicationDetailsModel.fromJson(Map<String, dynamic> json) =>
      ApplicationDetailsModel(
        message: json["message"],
        data: json["data"] == null ? null : Application.fromJson(json["data"]),
      );
}

class Application {
  int? id;
  int? tenantId;
  int? propertyId;
  DateTime? startDate;
  DateTime? endDate;
  DynamicFileType? landlordAgreement;
  DynamicFileType? tenantAgreement;
  int? status;
  String? rejectedCause;
  DateTime? createdAt;
  DateTime? updatedAt;
  Tenant? tenant;
  PropertyModel? property;
  SecurityDepositDetails? securityDeposit;

  bool get hasLLAgreement {
    return landlordAgreement?.remote != null;
  }

  bool get hasTTAgreement {
    return tenantAgreement?.remote != null;
  }

  Application({
    this.id,
    this.tenantId,
    this.propertyId,
    this.startDate,
    this.endDate,
    this.landlordAgreement,
    this.tenantAgreement,
    this.status,
    this.rejectedCause,
    this.createdAt,
    this.updatedAt,
    this.tenant,
    this.property,
    this.securityDeposit,
  });

  factory Application.fromJson(Map<String, dynamic> json) {
    return Application(
      id: json["id"],
      tenantId: json["tenant_id"],
      propertyId: json["property_id"],
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
      rejectedCause: json["rejected_cause"],
      createdAt: json["created_at"] == null
          ? null
          : DateTime.parse(json["created_at"]),
      updatedAt: json["updated_at"] == null
          ? null
          : DateTime.parse(json["updated_at"]),
      tenant: json["tenant"] == null ? null : Tenant.fromJson(json["tenant"]),
      property: json["property"] == null
          ? null
          : PropertyModel.fromJson(json["property"]),
      securityDeposit: json["security_deposit"] == null
          ? null
          : SecurityDepositDetails.fromJson(json["security_deposit"]),
    );
  }

  Map<String, dynamic> toRequest() {
    return {
      "property_id": propertyId,
      "start_date": startDate?.formatDate(pattern: 'yyyy-MM-dd'),
      "end_date": endDate?.formatDate(pattern: 'yyyy-MM-dd'),
    };
  }
}
