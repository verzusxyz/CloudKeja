class Gateway {
  int id;
  String name;
  String apiKey;

  Gateway({required this.id, required this.name, required this.apiKey});

  factory Gateway.fromJson(Map<String, dynamic> json) => Gateway(
        id: json['id'],
        name: json['name'],
        apiKey: json['api_key'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'api_key': apiKey,
      };
}