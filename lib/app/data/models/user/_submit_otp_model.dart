class OtpSubmitModel {
  String? message;
  int? id;
  String? role;
  String? token;

  OtpSubmitModel({
    this.message,
    this.id,
    this.role,
    this.token,
  });

  OtpSubmitModel copyWith({
    String? message,
    int? id,
    String? role,
    String? token,
  }) =>
      OtpSubmitModel(
        message: message ?? this.message,
        id: id ?? this.id,
        role: role ?? this.role,
        token: token ?? this.token,
      );

  factory OtpSubmitModel.fromJson(Map<String, dynamic> json) => OtpSubmitModel(
        message: json["message"],
        id: json["id"],
        role: json["role"],
        token: json["token"],
      );

  Map<String, dynamic> toJson() => {
        "message": message,
        "id": id,
        "role": role,
        "token": token,
      };
}
