class RefundRequest {
  int id;
  int userId;
  double amount;
  String reason;
  String status;

  RefundRequest({required this.id, required this.userId, required this.amount, required this.reason, required this.status});

  factory RefundRequest.fromJson(Map<String, dynamic> json) => RefundRequest(
        id: json['id'],
        userId: json['user_id'],
        amount: json['amount'].toDouble(),
        reason: json['reason'],
        status: json['status'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'user_id': userId,
        'amount': amount,
        'reason': reason,
        'status': status,
      };
}