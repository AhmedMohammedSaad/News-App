import 'package:dio/dio.dart';

import 'model.dart';

class News {
  Dio dio;
  News({
    required this.dio,
  });
  Future<List<Articles>> getrespons(String section) async {
    try {
      Response response = await dio.get(
          "https://gnews.io/api/v4/top-headlines?category=$section&lang=ar&country=general&apikey=b4fd7e1ee121294e742fbc111ba73abf");
      Map<String, dynamic> Json = response.data;

      List<dynamic> articles = Json['articles'];
      print(articles);

      List<Articles> articleSave = [];

      for (var article in articles) {  
        Articles art = Articles(
          title: article["title"],
          urlToImage: article["image"],
          content: article["content"],
        );
        articleSave.add(art);
      }

      print(articleSave);
      return articleSave;
    } catch (e) {
      print(e);
      return [];
    }
  }
}
