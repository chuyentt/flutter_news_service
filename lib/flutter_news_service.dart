/// A Dart package to interact with NewsAPI.org, providing structured access to global news data.
///
/// This library provides a streamlined way to retrieve news data from
/// NewsAPI.org. NewsAPI.org is a service API that delivers news from
/// a variety of sources worldwide. The news data can be filtered by keyword,
/// source, language, and various other criteria.
///
/// An API key from NewsAPI.org is required to use this package.
///
/// This library returns structured data in the form of `ArticleResponse` and `Source` objects,
/// making it easier to interact with the received data.
///
/// Example usage:
///
/// ```dart
/// import 'package:flutter_news_service/flutter_news_service.dart';
///
/// Future<void> main() async {
///   var newsService = FlutterNewsService('<your-api-key>');
///   var topHeadlines = await newsService.fetchTopHeadlines(country: 'us');
///   print('Top Headlines: ${topHeadlines.articles.map((a) => a.title).toList()}');
///   var everything = await newsService.fetchEverything(
///     q: 'bitcoin', from: '2023-05-15', sortBy: 'publishedAt');
///   print('Everything: ${everything.articles.map((a) => a.title).toList()}');
///   var sources = await newsService.fetchSources(language: 'en', country: 'us');
///   print('Sources: ${sources.map((s) => s.name).toList()}');
/// }
/// ```
///
/// For more information, please visit [NewsAPI.org](https://newsapi.org/)
library flutter_news_service;

import 'dart:convert';

import 'package:http/http.dart' as http;

part 'src/flutter_news_service_base.dart';
part 'src/models/article_response.dart';
part 'src/models/article.dart';
part 'src/models/source.dart';
