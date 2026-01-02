class WithdrawMethod {
  int id;
  String name;
  String details;

  WithdrawMethod({required this.id, required this.name, required this.details});

  factory WithdrawMethod.fromJson(Map<String, dynamic> json) => WithdrawMethod(
        id: json['id'],
        name: json['name'],
        details: json['details'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'details': details,
      };
}