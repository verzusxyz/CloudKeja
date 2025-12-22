class NotificationListModel {
  String? message;
  List<UserNotification>? data;

  NotificationListModel({
    this.message,
    this.data,
  });

  factory NotificationListModel.fromJson(Map<String, dynamic> json) {
    return NotificationListModel(
      message: json["message"],
      data: json["data"] == null
          ? []
          : List<UserNotification>.from(
              json["data"]!.map((x) => UserNotification.fromJson(x))),
    );
  }
}

class UserNotification {
  String? id;
  String? type;
  String? notifiableType;
  int? notifiableId;
  NotificationContent? data;
  DateTime? readAt;
  DateTime? createdAt;
  DateTime? updatedAt;

  UserNotification({
    this.id,
    this.type,
    this.notifiableType,
    this.notifiableId,
    this.data,
    this.readAt,
    this.createdAt,
    this.updatedAt,
  });

  factory UserNotification.fromJson(Map<String, dynamic> json) {
    return UserNotification(
      id: json["id"],
      type: json["type"],
      notifiableType: json["notifiable_type"],
      notifiableId: json["notifiable_id"],
      data: json["data"] == null
          ? null
          : NotificationContent.fromJson(json["data"]),
      readAt: json["read_at"] == null ? null : DateTime.parse(json["read_at"]),
      createdAt: json["created_at"] == null
          ? null
          : DateTime.parse(json["created_at"]),
      updatedAt: json["updated_at"] == null
          ? null
          : DateTime.parse(json["updated_at"]),
    );
  }
}

class NotificationContent {
  int? id;
  String? url;
  String? adminMsg;
  String? landlordMsg;
  String? tenantMsg;

  NotificationContent({
    this.id,
    this.url,
    this.adminMsg,
    this.landlordMsg,
    this.tenantMsg,
  });

  factory NotificationContent.fromJson(Map<String, dynamic> json) {
    return NotificationContent(
      id: json["id"],
      url: json["url"],
      adminMsg: json["admin_msg"],
      landlordMsg: json["landlord_msg"],
      tenantMsg: json["tenant_msg"],
    );
  }
}
