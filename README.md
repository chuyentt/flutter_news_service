# Flutter News Service Package

The Flutter News Service package is a library for interacting with [NewsAPI.org](https://newsapi.org/). [NewsAPI.org](https://newsapi.org/) provides a service API that delivers news from various sources worldwide. With this Flutter News Service, you can filter news by keyword, source, language, and many other criteria. The news can also be sorted by publication time. Ideal for news-based applications.

## Usage

```dart
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

```

Replace `<your-api-key>` with the API key you received from NewsAPI.org.

- The `fetchTopHeadlines()` function will return an ArticleResponse object containing news articles of the top headlines from NewsAPI.org.
- The `fetchEverything()` function will return an ArticleResponse object containing news articles that meet specified criteria from NewsAPI.org.
- The `fetchSources()` function will return a List of Source objects from NewsAPI.org based on specified language and country parameters.

### Testing

This package provides unit tests to ensure that the main functionalities work correctly. To run the tests, you can use the following command:

```bash
flutter test
```

### Screenshots
| ![News View](https://raw.githubusercontent.com/chuyentt/flutter_news_service/main/example/screenshots/news.gif) |
| :------------------------------------: | 
|            *News Reader View*                 |

### Suggestions & Bug Reporting

If you have any suggestions or encounter any bugs while using this package, do not hesitate to create an [issue tracker][tracker] on our GitHub page.

[tracker]: https://github.com/chuyentt/flutter_news_service/issues