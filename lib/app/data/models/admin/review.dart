class Review {
  int id;
  int propertyId;
  int userId;
  int rating;
  String comment;

  Review({required this.id, required this.propertyId, required this.userId, required this.rating, required this.comment});

  factory Review.fromJson(Map<String, dynamic> json) => Review(
        id: json['id'],
        propertyId: json['property_id'],
        userId: json['user_id'],
        rating: json['rating'],
        comment: json['comment'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'property_id': propertyId,
        'user_id': userId,
        'rating': rating,
        'comment': comment,
      };
}