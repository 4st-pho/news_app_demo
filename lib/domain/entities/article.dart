import 'dart:convert';
import 'package:news_app/domain/entities/article_source.dart';

class Article {
  final String id;
  String title;
  String thumbnail;
  DateTime publishTime;
  ArticleSource source;
  Article({
    String? id,
    required this.title,
    required this.thumbnail,
    required this.publishTime,
    required this.source,
  }) : id = id ?? DateTime.now().toIso8601String();

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'title': title,
      'thumbnail': thumbnail,
      'publishTime': publishTime.toIso8601String(),
      'source': source.toMap(),
    };
  }

  factory Article.fromMap(Map<String, dynamic> map) {
    return Article(
        id: map['id'] as String,
        title: map['title'] as String,
        thumbnail: map['thumbnail'] as String,
        publishTime:
            DateTime.fromMillisecondsSinceEpoch(map['publishTime'] as int),
        source: ArticleSource.fromMap(map['thumbnail']));
  }

  String toJson() => json.encode(toMap());

  factory Article.fromJson(String source) =>
      Article.fromMap(json.decode(source) as Map<String, dynamic>);
}
