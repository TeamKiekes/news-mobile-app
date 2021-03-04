import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news_mobile_app/screens/models/article_model.dart';

class News {
  List<ArticleModel> news = [];

  Future<void> getNews() async {
    var apiKeyJson = jsonDecode("../auth/secrets.json");
    String apiKey = apiKeyJson['api_key'];
    String url =
        "https://newsapi.org/v2/top-headlines?country=be&apiKey=$apiKey";

    var response = await http.get(url);
    var jsonData = jsonDecode(response.body);

    if (jsonData['status'] == 'ok') {
      jsonData['articles'].forEach((element) {
        if (element['urlToImage'] != null && element['description'] != null) {
          ArticleModel articleModel = ArticleModel(
            title: element['title'],
            author: element['author'],
            description: element['description'],
            url: element['url'],
            urlToImage: element['urlToImage'],
            content: element['context'],
          );

          news.add(articleModel);
        }
      });
    }
  }
}

class NewsForCategory {
  List<ArticleModel> news = [];

  Future<void> getCategoryNews(String category) async {
    var apiKeyJson = jsonDecode("../auth/secrets.json");
    String apiKey = apiKeyJson['api_key'];
    String url =
        "https://newsapi.org/v2/top-headlines?category=$category&country=us&apiKey=$apiKey";

    var response = await http.get(url);

    var jsonData = jsonDecode(response.body);

    if (jsonData['status'] == 'ok') {
      jsonData['articles'].forEach((element) {
        if (element['urlToImage'] != null && element['description'] != null) {
          ArticleModel articleModel = ArticleModel(
            title: element['title'],
            author: element['author'],
            description: element['description'],
            url: element['url'],
            urlToImage: element['urlToImage'],
            content: element['context'],
          );

          news.add(articleModel);
        }
      });
    }
  }
}
