import 'package:flutter/material.dart';
import 'package:flutter_news_app_sun_c7_alex/home/home_screen.dart';
import 'package:flutter_news_app_sun_c7_alex/my_theme.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName : (context) => HomeScreen(),
      },
      theme: MyTheme.lightTheme,
    );
  }
}
