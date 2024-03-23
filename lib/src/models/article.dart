part of '../../flutter_news_service.dart';

/// Represents an individual news article fetched from the News API.
///
/// The [Article] class includes the following fields:
///
/// * [source]: An instance of [Source] which represents the source of the news article.
/// * [author]: The author of the news article. This may be `null` if the author is not specified.
/// * [title]: The title of the news article.
/// * [description]: A short description of the news article. This may be `null` if the description is not specified.
/// * [url]: The URL of the news article.
/// * [urlToImage]: The URL of the image for the news article. This may be `null` if an image URL is not specified.
/// * [publishedAt]: The publication date and time of the news article in ISO 8601 format.
/// * [content]: The content of the news article. This may be `null` if the content is not specified.
///
/// The [Article.fromJson] factory method allows the creation of an [Article] instance from JSON data.
///
/// ```dart
/// var articleJson = //... JSON data for a single article ...
/// var article = Article.fromJson(articleJson);
/// print('Title: ${article.title}');
/// print('Author: ${article.author}');
/// print('Published At: ${article.publishedAt}');
/// ```
class Article {
  final Source source;
  final String? author;
  final String title;
  final String? description;
  final String url;
  final String? urlToImage;
  final String publishedAt;
  final String? content;

  Article({
    required this.source,
    this.author,
    required this.title,
    this.description,
    required this.url,
    this.urlToImage,
    required this.publishedAt,
    this.content,
  });

  factory Article.fromJson(Map<String, dynamic> json) {
    return Article(
      source: Source.fromJson(json['source']),
      author: json['author'],
      title: json['title'],
      description: json['description'],
      url: json['url'],
      urlToImage: json['urlToImage'],
      publishedAt: json['publishedAt'],
      content: json['content'],
    );
  }
}
