part of flutter_news_service;

/// Represents the source of a news article fetched from the News API.
///
/// The [Source] class includes the following fields:
///
/// * [id]: The unique identifier for the news source.
/// * [name]: The name of the news source.
/// * [description]: A brief description of the news source.
/// * [url]: The URL of the news source.
/// * [category]: The category of the news source.
/// * [language]: The language the news source publishes in.
/// * [country]: The country the news source is based in.
///
/// The [Source.fromJson] factory method allows the creation of a [Source] instance from JSON data.
///
/// ```dart
/// var sourceJson = //... JSON data for a single source ...
/// var source = Source.fromJson(sourceJson);
/// print('Name: ${source.name}');
/// print('Description: ${source.description}');
/// print('URL: ${source.url}');
/// ```
class Source {
  final String id;
  final String name;
  final String description;
  final String url;
  final String category;
  final String language;
  final String country;

  Source({
    required this.id,
    required this.name,
    required this.description,
    required this.url,
    required this.category,
    required this.language,
    required this.country,
  });

  factory Source.fromJson(Map<String, dynamic> json) {
    return Source(
      id: json['id'] ?? '',
      name: json['name'] ?? '',
      description: json['description'] ?? '',
      url: json['url'] ?? '',
      category: json['category'] ?? '',
      language: json['language'] ?? '',
      country: json['country'] ?? '',
    );
  }
}
