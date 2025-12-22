class LandlordTenancyAgreementListModel {
  String? message;
  List<LandlordTenancyAgreement>? data;

  LandlordTenancyAgreementListModel({
    this.message,
    this.data,
  });

  factory LandlordTenancyAgreementListModel.fromJson(
          Map<String, dynamic> json) =>
      LandlordTenancyAgreementListModel(
        message: json["message"],
        data: json["data"] == null
            ? []
            : List<LandlordTenancyAgreement>.from(
                json["data"]!.map((x) => LandlordTenancyAgreement.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "message": message,
        "data": data == null
            ? []
            : List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}

class LandlordTenancyAgreement {
  int? id;
  String? title;
  String? file;
  DateTime? createdAt;
  DateTime? updatedAt;

  LandlordTenancyAgreement({
    this.id,
    this.title,
    this.file,
    this.createdAt,
    this.updatedAt,
  });

  factory LandlordTenancyAgreement.fromJson(Map<String, dynamic> json) =>
      LandlordTenancyAgreement(
        id: json["id"],
        title: json["title"],
        file: json["file"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "file": file,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
      };
}
