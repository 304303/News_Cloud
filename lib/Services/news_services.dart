import 'package:dio/dio.dart';
import 'package:news_app/Models/article_model.dart';

class NewsServices {
  final Dio dio;
  NewsServices(this.dio);
  Future<List<ArticleModel>> getNews() async {
    try {
      var response = await dio.get(
        'https://newsapi.org/v2/top-headlines?country=us&apiKey=09dd6da4cc9b4fb8beb8f503f250b64a',
      );
      Map<String, dynamic> newsData = response.data;

      List<dynamic> articles = newsData['articles'];
      List<ArticleModel> articlesList = [];

      for (var article in articles) {
        articlesList.add(
          ArticleModel(
            image: article['urlToImage'],
            title: article['title'],
            description: article['description'],
          ),
        );
      }
      return articlesList;
    } catch (e) {
      return [];
    }
  }
}
