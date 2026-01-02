class Expense {
  int id;
  String description;
  double amount;
  int categoryId;
  DateTime date;

  Expense({required this.id, required this.description, required this.amount, required this.categoryId, required this.date});

  factory Expense.fromJson(Map<String, dynamic> json) => Expense(
        id: json['id'],
        description: json['description'],
        amount: json['amount'].toDouble(),
        categoryId: json['category_id'],
        date: DateTime.parse(json['date']),
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'description': description,
        'amount': amount,
        'category_id': categoryId,
        'date': date.toIso8601String(),
      };
}