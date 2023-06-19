import 'package:flutter_news_service/flutter_news_service.dart';

Future<void> main() async {
  var newsService = FlutterNewsService('<your-api-key>');

  var topHeadlines = await newsService.fetchTopHeadlines(country: 'us');
  print('Top Headlines: ${topHeadlines.articles.map((a) => a.title).toList()}');

  var everything = await newsService.fetchEverything(
      q: 'bitcoin', from: '2023-05-15', sortBy: 'publishedAt');
  print('Everything: ${everything.articles.map((a) => a.title).toList()}');

  var sources = await newsService.fetchSources(language: 'en', country: 'us');
  print('Sources: ${sources.map((s) => s.name).toList()}');
}
