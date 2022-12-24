import 'package:flutter/material.dart';
import 'package:flutter_news_app_sun_c7_alex/model/NewsResponse.dart';
import 'package:flutter_news_app_sun_c7_alex/my_theme.dart';

class NewsItem extends StatelessWidget {
  News news ;
  NewsItem({required this.news});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 12,vertical: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            clipBehavior: Clip.antiAlias,      //
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
            ),
            child: Image.network(news.urlToImage ?? ''),
          ),
          SizedBox(height: 10,),
          Text(news.author ?? '',
            style: TextStyle(
              fontSize: 15,
              color: MyTheme.greyColor
            ),
          ),
          SizedBox(height: 10,),
          Text(news.title ?? '',
            style: TextStyle(
                fontSize: 18,
                color: MyTheme.blackColor
            ),
          ),
          SizedBox(height: 10,),
          Text(news.publishedAt ?? '',
            style: TextStyle(
                fontSize: 15,
                color: MyTheme.greyColor
            ),
            textAlign: TextAlign.end,
          ),
        ],
      ),
    );
  }
}
