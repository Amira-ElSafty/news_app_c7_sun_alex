import 'package:flutter/material.dart';
import 'package:flutter_news_app_sun_c7_alex/home/category/item_category_widget.dart';
import 'package:flutter_news_app_sun_c7_alex/model/category.dart';
import 'package:flutter_news_app_sun_c7_alex/my_theme.dart';

class CategoryWidget extends StatelessWidget {
  var categoryList = Category.getCategoryList();
  Function onCategoryCallBack ;
  CategoryWidget({required this.onCategoryCallBack});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            'assets/images/main_background.png',
          ),
          fit: BoxFit.cover
        ),
        color: MyTheme.whiteColor
      ),
      margin: EdgeInsets.all(18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text('Pick your category\nof interset',
            style: Theme.of(context).textTheme.subtitle1,
          ),
          SizedBox(height: 10,),
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 18,
                  crossAxisSpacing: 18
              ),
              itemBuilder: (context,index){
                return InkWell(
                  onTap: (){
                    onCategoryCallBack(categoryList[index]);
                  },
                    child: ItemCategoryWidget(index: index,category:categoryList[index] ,));
              },
              itemCount:categoryList.length ,
            ),
          )

        ],
      ),
    );
  }
}
