class RefundReason {
  int id;
  String description;

  RefundReason({required this.id, required this.description});

  factory RefundReason.fromJson(Map<String, dynamic> json) => RefundReason(
        id: json['id'],
        description: json['description'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'description': description,
      };
}