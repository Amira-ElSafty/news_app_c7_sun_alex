import 'package:flutter/material.dart';
import 'package:flutter_news_app_sun_c7_alex/my_theme.dart';

class HomeDrawer extends StatelessWidget {
  Function onSideMenuCallBack ;
  static const int categories = 1 ;
  static const int settings = 2 ;

  HomeDrawer({required this.onSideMenuCallBack});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            color: MyTheme.primaryLightColor,
            padding: EdgeInsets.symmetric(vertical: 64),
            width: double.infinity,
            child: Text(
              'News App!',
              style: Theme.of(context).textTheme.headline1,
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          InkWell(
            onTap: () {
              // categories tab
              onSideMenuCallBack(categories);
            },
            child: Row(
              children: [
                Icon(Icons.list),
                SizedBox(
                  width: 8,
                ),
                Text(
                  'Categories',
                  style: Theme.of(context).textTheme.headline2,
                )
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          InkWell(
            onTap: () {
              // settings tab
              onSideMenuCallBack(settings);
            },
            child: Row(
              children: [
                Icon(Icons.settings),
                SizedBox(
                  width: 8,
                ),
                Text(
                  'Settings',
                  style: Theme.of(context).textTheme.headline2,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
