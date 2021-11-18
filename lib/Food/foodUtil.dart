import 'package:kcal_nutrition_app/Food/food.dart';

class FoodUtils {
  static List<Food> getFoodData() {
    return [
      Food(
        foodname: 'Cookies',
        iconPath: 'assets/food/foodIcon/cookies.png',
        altName: 'Biscuit',
        foodDesc1:
        'Cookies are baked treats. A cookie is a small sweet, crispy or cake-like pastry most often made with flour, sugar, liquid and fat.',
        foodDesc2:
        'The cookie’s  name is derived from the Dutch word koekje, meaning “little cake.” The earliest cookie dates as far back as 7th century A.D. in Persia, where sugar was first  cultivated. ',
        imgPath1: 'assets/food/foodPic/cookies_1.png',
        imgPath2: 'assets/food/foodPic/cookies_2.png',
      ),
      Food(
        foodname: 'Burger',
        iconPath: 'assets/food/foodIcon/burger.png',
        altName: 'Hamburger',
        foodDesc1:
        'A dish consisting of a flat round cake of minced beef, or sometimes another savoury ingredient, that is fried or grilled and served in a split bun or roll with various condiments and toppings.',
        foodDesc2:
        'A flat round cake of a savoury ingredient, typically minced beef.',
        imgPath1: 'assets/food/foodPic/burger_1.png',
        imgPath2: 'assets/food/foodPic/burger_2.png',
      ),
      Food(
        foodname: 'Cake',
        iconPath: 'assets/food/foodIcon/cake.png',
        altName: 'Tart',
        foodDesc1:
        'A bread like food made from a dough or batter that is usually fried or baked in small flat shapes and is often unleavened.',
        foodDesc2:
        'a sweet baked food made from a dough or thick batter usually containing flour and sugar and often shortening, eggs, and a raising agent (such as baking powder).',
        imgPath1: 'assets/food/foodPic/cake_1.png',
        imgPath2: 'assets/food/foodPic/cake_2.png',
      ),
      Food(
        foodname: 'Pizza',
        iconPath: 'assets/food/foodIcon/pizza.png',
        altName: 'Pizza Pie',
        foodDesc1:
        'A large circle of flat bread baked with cheese, tomatoes, and sometimes meat and vegetables spread on top',
        foodDesc2:
        'A flat, usually round bread that is baked covered with tomato sauce, cheese, and often pieces of vegetables or meat.',
        imgPath1: 'assets/food/foodPic/pizza_1.png',
        imgPath2: 'assets/food/foodPic/pizza_2.png',
      ),
      Food(
        foodname: 'Hotdog',
        iconPath: 'assets/food/foodIcon/hotdog.png',
        altName: 'Corndog',
        foodDesc1:
        'A food consisting of a grilled or steamed sausage served in the slit of a partially sliced bun.',
        foodDesc2:
        'The term hot dog can also refer to the sausage itself. The sausage used is a wiener (Vienna sausage) or a frankfurter (Frankfurter Würstchen, also just called frank).',
        imgPath1: 'assets/food/foodPic/hotdog_1.png',
        imgPath2: 'assets/food/foodPic/hotdog_2.png',
      ),
      Food(
        foodname: 'Fries',
        iconPath: 'assets/food/foodIcon/fries.png',
        altName: 'French Fries',
        foodDesc1:
        'French fries are served hot, either soft or crispy, and are generally eaten as part of lunch or dinner or by themselves as a snack, and they commonly appear on the menus of diners, fast food restaurants, pubs, and bars.',
        foodDesc2:
        'French fries (North American English), chips (British English), finger chips (Indian English), French-fried potatoes, or simply fries are batonnet or allumette-cut deep-fried potatoes, originating from either Belgium or France.',
        imgPath1: 'assets/food/foodPic/fries_1.png',
        imgPath2: 'assets/food/foodPic/fries_2.png',
      ),
      Food(
        foodname: 'Donuts',
        iconPath: 'assets/food/foodIcon/donut.png',
        altName: 'Baked Dough',
        foodDesc1:
        'A doughnut or donut (IPA: /doʊnət/) is a type of leavened fried dough.It is popular in many countries and is prepared in various forms as a sweet snack that can be homemade or purchased in bakeries, supermarkets, food stalls, and franchised specialty vendors.',
        foodDesc2:
        'Doughnuts are usually deep fried from a flour dough, but other types of batters can also be used.',
        imgPath1: 'assets/food/foodPic/donut_1.png',
        imgPath2: 'assets/food/foodPic/donut_2.png',
      ),
    ];
  }

  FoodUtils();
}