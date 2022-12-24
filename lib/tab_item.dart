import 'package:flutter/material.dart';
import 'package:flutter_news_app_sun_c7_alex/model/SourcesResponse.dart';
import 'package:flutter_news_app_sun_c7_alex/my_theme.dart';

class TabItem extends StatelessWidget {
  Source source ;
  bool isSelected ;
  TabItem({required this.source, required this.isSelected});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8,horizontal: 24),
      margin: EdgeInsets.only(top: 18),
      decoration: BoxDecoration(
        color: isSelected == true ? 
          MyTheme.primaryLightColor :
          Colors.transparent,
        borderRadius: BorderRadius.circular(24),
        border:Border.all(color: MyTheme.primaryLightColor)
      ),
      child: Text(source.name ?? "",
        style: TextStyle(
          fontSize: 18,
          color: isSelected == true ?
              MyTheme.whiteColor :
              MyTheme.primaryLightColor
        ),
      ),
    );
  }
}
