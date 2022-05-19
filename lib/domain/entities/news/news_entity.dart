import '../entities.dart';

class NewsEntity {
  final String title;
  final String image;
  final int id;
  final String source;
  final NewsContentEntity contentEntity;

  NewsEntity(
      {required this.title,
      required this.image,
      required this.id,
      required this.source,
      required this.contentEntity});
}
