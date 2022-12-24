class Category{
  String id ;
  String imagePath ;
  String title ;
  int color ;

  Category({
     this.id = '',
    required this.title,
    required this.imagePath,
    required this.color,
});
  static List<Category> getCategoryList(){

    return [
      Category(id: 'sports', title: 'Sport',
          imagePath:'assets/images/sports.png' , color:0xffC91C22, ),
      Category(id: 'entertainment', title: 'Entertainment',
          imagePath:'assets/images/entertainment.png' , color:0xff003E90 ,),
      Category(id: 'health', title: 'Health',
          imagePath:'assets/images/health.png' , color:0xffED1E79, ),
      Category(id: 'business', title: 'Business',
          imagePath:'assets/images/bussines.png' , color:0xffCF7E48, ),
      Category(id: 'general', title: 'General',
          imagePath:'assets/images/general.png' , color:0xff4882CF,),
      Category(id: 'science', title: 'Science',
          imagePath:'assets/images/science.png' , color:0xffF2D352, ),
      Category(id: 'technology', title: 'Technology',
          imagePath:'assets/images/technology.png' , color:0xffED1E79, ),
    ];
  }
  
}