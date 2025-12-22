import '../../../core/core.dart' show DynamicFileType;

class ContactUsResponseModel {
  String? message;
  List<ChatBubbleModel>? data;

  ContactUsResponseModel({
    this.message,
    this.data,
  });

  factory ContactUsResponseModel.fromJson(Map<String, dynamic> json) {
    return ContactUsResponseModel(
      message: json["message"],
      data: json["data"] == null
          ? []
          : List<ChatBubbleModel>.from(
              json["data"]!.map((x) => ChatBubbleModel.fromJson(x))),
    );
  }
}

class ChatBubbleModel {
  int? id;
  int? senderId;
  int? receiverId;
  int? parentId;
  String? message;
  DynamicFileType? file;
  FileInfo? fileInfo;
  DateTime? createdAt;
  DateTime? updatedAt;

  ChatBubbleModel({
    this.id,
    this.senderId,
    this.receiverId,
    this.parentId,
    this.message,
    this.file,
    this.fileInfo,
    this.createdAt,
    this.updatedAt,
  });

  factory ChatBubbleModel.fromJson(Map<String, dynamic> json) {
    return ChatBubbleModel(
      id: json["id"],
      senderId: json["sender_id"],
      receiverId: json["receiver_id"],
      parentId: json["parent_id"],
      message: json["message"],
      file: json["file"] == null ? null : DynamicFileType(remote: json["file"]),
      fileInfo: json["file_info"] == null
          ? null
          : FileInfo.fromJson(json["file_info"]),
      createdAt: json["created_at"] == null
          ? null
          : DateTime.parse(json["created_at"]),
      updatedAt: json["updated_at"] == null
          ? null
          : DateTime.parse(json["updated_at"]),
    );
  }
}

class FileInfo {
  String? ext;
  num? size;

  FileInfo({
    this.ext,
    this.size,
  });

  factory FileInfo.fromJson(Map<String, dynamic> json) {
    return FileInfo(
      ext: json["ext"],
      size: json["size"],
    );
  }
}
