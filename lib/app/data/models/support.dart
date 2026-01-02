class Support {
  int id;
  int userId;
  String subject;
  String message;
  String status;

  Support({required this.id, required this.userId, required this.subject, required this.message, required this.status});

  factory Support.fromJson(Map<String, dynamic> json) => Support(
        id: json['id'],
        userId: json['user_id'],
        subject: json['subject'],
        message: json['message'],
        status: json['status'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'user_id': userId,
        'subject': subject,
        'message': message,
        'status': status,
      };
}