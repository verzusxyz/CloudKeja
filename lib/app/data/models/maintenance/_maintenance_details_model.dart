import '../../../core/core.dart' show DynamicFileType;
import '../admin/models.dart';

part '_maintenance_report_model.dart';

class MaintenanceDetailsModel {
  String? message;
  Maintenance? data;

  MaintenanceDetailsModel({
    this.message,
    this.data,
  });

  factory MaintenanceDetailsModel.fromJson(Map<String, dynamic> json) =>
      MaintenanceDetailsModel(
        message: json["message"],
        data: json["data"] == null ? null : Maintenance.fromJson(json["data"]),
      );
}

class Maintenance {
  int? id;
  String? title;
  int? propertyId;
  int? tenantId;
  int? laborId;
  num? totalCosting;
  String? description;
  String? status;
  List<DynamicFileType>? images;
  String? notes;
  String? comments;
  DateTime? createdAt;
  DateTime? updatedAt;
  Tenant? tenant;
  Labor? labor;
  PropertyModel? property;
  List<String>? removedImages;

  Maintenance({
    this.id,
    this.title,
    this.propertyId,
    this.tenantId,
    this.laborId,
    this.totalCosting,
    this.description,
    this.status,
    this.images,
    this.notes,
    this.comments,
    this.createdAt,
    this.updatedAt,
    this.tenant,
    this.labor,
    this.property,
    this.removedImages,
  });

  Maintenance copyWith({
    List<String>? removedImages,
  }) {
    return Maintenance(
      id: id,
      title: title,
      propertyId: propertyId,
      tenantId: tenantId,
      laborId: laborId,
      totalCosting: totalCosting,
      description: description,
      status: status,
      images: images,
      notes: notes,
      comments: comments,
      createdAt: createdAt,
      updatedAt: updatedAt,
      tenant: tenant,
      labor: labor,
      property: property,
      removedImages: removedImages ?? this.removedImages,
    );
  }

  factory Maintenance.fromJson(Map<String, dynamic> json) {
    return Maintenance(
      id: json["id"],
      title: json["title"],
      propertyId: json["property_id"],
      tenantId: json["tenant_id"],
      laborId: json["labor_id"],
      totalCosting: json["total_costing"],
      description: json["description"],
      status: json["status"],
      images: json["images"] == null
          ? []
          : List<DynamicFileType>.from(
              json["images"]!.map((x) => DynamicFileType(remote: x)),
            ),
      notes: json["notes"],
      comments: json["comments"],
      createdAt: json["created_at"] == null
          ? null
          : DateTime.parse(json["created_at"]),
      updatedAt: json["updated_at"] == null
          ? null
          : DateTime.parse(json["updated_at"]),
      tenant: json["tenant"] == null ? null : Tenant.fromJson(json["tenant"]),
      labor: json["labor"] == null ? null : Labor.fromJson(json["labor"]),
      property: json["property"] == null
          ? null
          : PropertyModel.fromJson(json["property"]),
    );
  }

  Map<String, dynamic> toRequest() {
    final _images = [
      ...?images
          ?.where((image) => image.local?.path.isNotEmpty == true)
          .map((image) => image.local)
    ];

    return {
      "property_id": propertyId,
      "title": title,
      "description": description,
      if (_images.isNotEmpty)
        ..._images.asMap().map((idx, value) => MapEntry("images[$idx]", value)),

      // Removed Image [Only when updating maintenance]
      if (removedImages?.isNotEmpty == true)
        ...?removedImages?.asMap().map((idx, value) {
          return MapEntry("removed_images[$idx]", value);
        })
    };
  }
}
