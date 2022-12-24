import 'package:flutter/material.dart';
import 'package:flutter_news_app_sun_c7_alex/api_manager.dart';
import 'package:flutter_news_app_sun_c7_alex/drawer/home_drawer.dart';
import 'package:flutter_news_app_sun_c7_alex/home/category/category_details.dart';
import 'package:flutter_news_app_sun_c7_alex/home/category/category_widget.dart';
import 'package:flutter_news_app_sun_c7_alex/home/settings/settings_tab.dart';
import 'package:flutter_news_app_sun_c7_alex/home/tab_container.dart';
import 'package:flutter_news_app_sun_c7_alex/model/SourcesResponse.dart';
import 'package:flutter_news_app_sun_c7_alex/model/category.dart';
import 'package:flutter_news_app_sun_c7_alex/my_theme.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'News App',
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
      drawer: Drawer(
        child: HomeDrawer(onSideMenuCallBack: onSideMenuCallBack),
      ),
      body: selectedDrawer == HomeDrawer.settings ?
          SettingsTab() :
      selectedCategory == null ?    /// not selected
      CategoryWidget(onCategoryCallBack: onCategoryCallBack,):
      CategoryDetails(category: selectedCategory!),
    );
  }

  Category? selectedCategory = null ;   /// user

  void onCategoryCallBack(Category category){
    selectedCategory = category ;
    setState(() {

    });
  }

  int selectedDrawer = HomeDrawer.categories ;   /// null safety
  void onSideMenuCallBack(int selectedItemDrawer){
    selectedDrawer = selectedItemDrawer ;
    selectedCategory = null ;
    Navigator.pop(context);
    setState(() {

    });
  }
}
