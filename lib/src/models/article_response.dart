part of flutter_news_service;

/// Represents the response from the News API when fetching articles.
///
/// The [ArticleResponse] class includes the following fields:
///
/// * [status]: The status of the response from the News API, typically 'ok' for a successful request.
/// * [totalResults]: The total number of results that are available for your request.
/// * [articles]: A list of [Article] objects which represent the articles returned by the News API.
///
/// The [ArticleResponse.fromJson] factory method allows the creation of an [ArticleResponse] instance from JSON data.
///
/// ```dart
/// var responseJson = //... JSON data fetched from the API ...
/// var response = ArticleResponse.fromJson(responseJson);
/// print('Status: ${response.status}');
/// print('Total Results: ${response.totalResults}');
/// print('First article title: ${response.articles[0].title}');
/// ```
class ArticleResponse {
  final String status;
  final int totalResults;
  final List<Article> articles;

  ArticleResponse({
    required this.status,
    required this.totalResults,
    required this.articles,
  });

  factory ArticleResponse.fromJson(Map<String, dynamic> json) {
    var list = json['articles'] as List;
    List<Article> articleList = list.map((i) => Article.fromJson(i)).toList();

    return ArticleResponse(
      status: json['status'] ?? '',
      totalResults: json['totalResults'] ?? 0,
      articles: articleList,
    );
  }
}
