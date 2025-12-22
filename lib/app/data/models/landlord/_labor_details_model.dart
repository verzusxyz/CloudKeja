import '../models.dart' show Phone;

class LaborDetails {
  String? message;
  Labor? labor;

  LaborDetails({
    this.message,
    this.labor,
  });

  LaborDetails copyWith({
    String? message,
    Labor? data,
  }) =>
      LaborDetails(
        message: message ?? this.message,
        labor: data ?? labor,
      );

  factory LaborDetails.fromJson(Map<String, dynamic> json) => LaborDetails(
        message: json["message"],
        labor: json["data"] == null ? null : Labor.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "message": message,
        "data": labor?.toJson(),
      };
}

class Labor {
  int? id;
  int? landlordId;
  String? name;
  String? email;
  Phone? phone;
  String? gender;
  num? salary;
  int? status;
  DateTime? createdAt;
  DateTime? updatedAt;

  Labor({
    this.id,
    this.landlordId,
    this.name,
    this.email,
    this.phone,
    this.gender,
    this.salary,
    this.status,
    this.createdAt,
    this.updatedAt,
  });

  Labor copyWith({
    int? id,
    int? landlordId,
    String? name,
    String? email,
    Phone? phone,
    String? gender,
    int? salary,
    int? status,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) =>
      Labor(
        id: id ?? this.id,
        landlordId: landlordId ?? this.landlordId,
        name: name ?? this.name,
        email: email ?? this.email,
        phone: phone ?? this.phone,
        gender: gender ?? this.gender,
        salary: salary ?? this.salary,
        status: status ?? this.status,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );

  factory Labor.fromJson(Map<String, dynamic> json) {
    return Labor(
      id: json["id"],
      landlordId: json["landlord_id"],
      name: json["name"],
      email: json["email"],
      phone: json["phone"] == null ? null : Phone.fromJson(json["phone"]),
      gender: json["gender"],
      salary: json["salary"],
      status: json["status"],
      createdAt: json["created_at"] == null
          ? null
          : DateTime.parse(json["created_at"]),
      updatedAt: json["updated_at"] == null
          ? null
          : DateTime.parse(json["updated_at"]),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "landlord_id": landlordId,
      "name": name,
      "email": email,
      "phone": phone?.toJson(),
      "gender": gender,
      "salary": salary,
      "status": status,
      "created_at": createdAt?.toIso8601String(),
      "updated_at": updatedAt?.toIso8601String(),
    };
  }

  Map<String, dynamic> toRequest() {
    return {
      "name": name,
      "email": email,
      "phone[mobile_code]": phone?.mobileCode,
      "phone[mobile_no]": phone?.mobileNo,
      "gender": gender,
      "salary": salary,
    };
  }
}
