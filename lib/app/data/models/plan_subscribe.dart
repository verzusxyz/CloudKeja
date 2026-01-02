class PlanSubscribe {
  int id;
  int landlordId;
  int planId;
  DateTime startDate;
  DateTime endDate;

  PlanSubscribe({required this.id, required this.landlordId, required this.planId, required this.startDate, required this.endDate});

  factory PlanSubscribe.fromJson(Map<String, dynamic> json) => PlanSubscribe(
        id: json['id'],
        landlordId: json['landlord_id'],
        planId: json['plan_id'],
        startDate: DateTime.parse(json['start_date']),
        endDate: DateTime.parse(json['end_date']),
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'landlord_id': landlordId,
        'plan_id': planId,
        'start_date': startDate.toIso8601String(),
        'end_date': endDate.toIso8601String(),
      };
}