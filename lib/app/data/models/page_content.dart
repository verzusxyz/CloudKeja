class PageContent {
  int id;
  String type;
  String content;

  PageContent({required this.id, required this.type, required this.content});

  factory PageContent.fromJson(Map<String, dynamic> json) => PageContent(
        id: json['id'],
        type: json['type'],
        content: json['content'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'type': type,
        'content': content,
      };
}