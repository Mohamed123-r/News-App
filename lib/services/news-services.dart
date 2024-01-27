import 'package:dio/dio.dart';
import '../models/article_modle.dart';

class NewsService {
  final Dio dio;

  NewsService(
    this.dio,
  );

  Future<List<ArticleModel>> getNews({required String q}) async {
    Response response = await dio.get(
        'https://newsapi.org/v2/everything?q=$q&apiKey=c5960a887f78413b994e0f5d787c46cb');

    Map<String, dynamic> jsonData = response.data;

    List<dynamic> articles = jsonData['articles'];
    List<ArticleModel> articleList = [];
  // chanege the name 
    for (var articale in articles) {
      ArticleModel articleModel = ArticleModel.fromJson(articale);
      articleList.add(articleModel);
    }
    return articleList;
  }
}
