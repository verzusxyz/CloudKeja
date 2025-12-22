class FacilityAmenityListModel {
  final bool? success;
  final Message? message;
  final List<FacilityAmenity>? data;

  FacilityAmenityListModel({
    this.success,
    this.message,
    this.data,
  });

  factory FacilityAmenityListModel.fromJson(
      Map<String, dynamic> json, String key) {
    return FacilityAmenityListModel(
      success: json['success'] as bool?,
      message:
          json['message'] != null ? Message.fromJson(json['message']) : null,
      data: (json['data']?[key] as List?)
          ?.map((item) => FacilityAmenity.fromJson(item))
          .toList(),
    );
  }

  Map<String, dynamic> toJson(String key) {
    return {
      'success': success,
      'message': message?.toJson(),
      'data': {
        key: data?.map((item) => item.toJson()).toList(),
      },
    };
  }
}

class Message {
  final String? message;
  final String? alertType;

  Message({
    this.message,
    this.alertType,
  });

  factory Message.fromJson(Map<String, dynamic> json) {
    return Message(
      message: json['message'] as String?,
      alertType: json['alert-type'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'message': message,
      'alert-type': alertType,
    };
  }
}

class FacilityAmenity {
  final int? id;
  final String? name;
  final int? status;

  FacilityAmenity({
    this.id,
    this.name,
    this.status,
  });

  factory FacilityAmenity.fromJson(Map<String, dynamic> json) {
    return FacilityAmenity(
      id: json['id'] as int?,
      name: json['name'] as String?,
      status: json['status'] as int?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'status': status,
    };
  }
}

class HouseTypeListModel {
  String? message;
  List<HouseType>? data;

  HouseTypeListModel({
    this.message,
    this.data,
  });

  factory HouseTypeListModel.fromJson(Map<String, dynamic> json) =>
      HouseTypeListModel(
        message: json["message"],
        data: json["data"] == null
            ? []
            : List<HouseType>.from(
                json["data"]!.map((x) => HouseType.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "message": message,
        "data": data == null
            ? []
            : List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}

typedef HouseType = FacilityAmenity;
