class Plan {
  int id;
  String name;
  double price;

  Plan({required this.id, required this.name, required this.price});

  factory Plan.fromJson(Map<String, dynamic> json) => Plan(
        id: json['id'],
        name: json['name'],
        price: json['price'].toDouble(),
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'price': price,
      };
}