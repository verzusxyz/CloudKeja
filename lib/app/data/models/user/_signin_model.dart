class SignInModel {
  String? message;
  Data? data;

  SignInModel({
    this.message,
    this.data,
  });

  SignInModel copyWith({
    String? message,
    Data? data,
  }) =>
      SignInModel(
        message: message ?? this.message,
        data: data ?? this.data,
      );

  factory SignInModel.fromJson(Map<String, dynamic> json) => SignInModel(
        message: json["message"],
        data: json["data"] == null ? null : Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "message": message,
        "data": data?.toJson(),
      };
}

class Data {
  int? id;
  String? role;
  String? name;
  String? email;
  int? isSetupped;
  String? token;

  Data({
    this.id,
    this.role,
    this.name,
    this.email,
    this.isSetupped,
    this.token,
  });

  Data copyWith({
    int? id,
    String? role,
    String? name,
    String? email,
    int? isSetupped,
    String? token,
  }) =>
      Data(
        id: id ?? this.id,
        role: role ?? this.role,
        name: name ?? this.name,
        email: email ?? this.email,
        isSetupped: isSetupped ?? this.isSetupped,
        token: token ?? this.token,
      );

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["id"],
        role: json["role"],
        name: json["name"],
        email: json["email"],
        isSetupped: json["is_setupped"],
        token: json["token"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "role": role,
        "name": name,
        "email": email,
        "is_setupped": isSetupped,
        "token": token,
      };
}
