import 'dart:convert';

class ArticleSource {
  String path;
  String logo;
  ArticleSource({
    required this.path,
    required this.logo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': path,
      'logo': logo,
    };
  }

  factory ArticleSource.fromMap(Map<String, dynamic> map) {
    return ArticleSource(
      path: map['path'] as String,
      logo: map['logo'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory ArticleSource.fromJson(String source) =>
      ArticleSource.fromMap(json.decode(source) as Map<String, dynamic>);
}
