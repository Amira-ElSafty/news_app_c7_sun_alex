import 'dart:convert';
import 'package:flutter_news_app_sun_c7_alex/model/NewsResponse.dart';
import 'package:flutter_news_app_sun_c7_alex/model/SourcesResponse.dart';
import 'package:http/http.dart' as http ;
class ApiManager {
  static const String baseUrl = 'newsapi.org';

  static Future<SourcesResponse> getSources(String categoryId)async{
    /// call api to get sources
    /// https://newsapi.org/v2/top-headlines/sources?apiKey=500c5a4f9b244f3db92a47f436f1819e
    var url = Uri.https(baseUrl, '/v2/top-headlines/sources',
      {
        'apiKey' : '500c5a4f9b244f3db92a47f436f1819e',
        'category' : categoryId
      }
    );
    try{
      var response = await http.get(url);
      var bodyString = response.body ;     /// string
      var json = jsonDecode(bodyString);   /// string => json
      var sourceResponse = SourcesResponse.fromJson(json);
      return sourceResponse ;
    }catch(e){
      throw e ;
    }

  }

  static Future<NewsResponse> getNews(String sourceId)async{
    //https://newsapi.org/v2/everything?q=bitcoin&apiKey=500c5a4f9b244f3db92a47f436f1819e
    var url = Uri.https(baseUrl, '/v2/everything',
      {
        'apiKey' : '500c5a4f9b244f3db92a47f436f1819e',
        'sources' : sourceId
      }
    );
    try{
      var response = await http.get(url);
      var bodyString = response.body ;
      var json = jsonDecode(bodyString);
      var newsResponse = NewsResponse.fromJson(json);
      return newsResponse ;
    }catch(e){
      throw e ;
    }
  }












}