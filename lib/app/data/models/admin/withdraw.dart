class Withdraw {
  int id;
  int landlordId;
  double amount;
  String status;
  DateTime date;

  Withdraw({required this.id, required this.landlordId, required this.amount, required this.status, required this.date});

  factory Withdraw.fromJson(Map<String, dynamic> json) => Withdraw(
        id: json['id'],
        landlordId: json['landlord_id'],
        amount: json['amount'].toDouble(),
        status: json['status'],
        date: DateTime.parse(json['date']),
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'landlord_id': landlordId,
        'amount': amount,
        'status': status,
        'date': date.toIso8601String(),
      };
}