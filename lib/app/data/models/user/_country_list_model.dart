import 'package:equatable/equatable.dart';

class Country extends Equatable {
  final String? name;
  final String? code;

  const Country({
    this.name,
    this.code,
  });

  factory Country.fromJson(Map<String, dynamic> json) {
    return Country(
      name: json["name"],
      code: json["code"],
    );
  }

  @override
  List<Object?> get props => [name, code];
}
