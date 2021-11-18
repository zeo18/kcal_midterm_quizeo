import 'package:flutter/material.dart';
import 'package:kcal_nutrition_app/Food/food.dart';
import 'package:kcal_nutrition_app/Food/foodNotFound.dart';
import 'package:kcal_nutrition_app/Food/foodUtil.dart';
import 'package:kcal_nutrition_app/Recipes/recipeNotFound.dart';
import 'package:kcal_nutrition_app/Recipes/recipeUtils.dart';

import 'Food/foodFound.dart';
import 'Recipes/recipeFound.dart';
import 'Recipes/recipes.dart';

class Favorites extends StatefulWidget {
  const Favorites({Key? key}) : super(key: key);

  @override
  _FavoritesState createState() => _FavoritesState();
}

class _FavoritesState extends State<Favorites> {
  List<Food> listFood = FoodUtils.getFoodData();
  List<Recipe> listRecipe = RecipeUtils.getRecipeData();
  late List<bool> isSelected;
  final controller = PageController(
    initialPage: 0,
  );

  @override
  void initState() {
    isSelected = [true, false];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.all(11.0),
              child: ToggleButtons(
                  fillColor: Colors.green[200],
                  selectedColor: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 40, top: 10, right: 40, bottom: 10),
                      child: Text('Foods'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 40, top: 10, right: 40, bottom: 10),
                      child: Text('Recipes'),
                    ),
                  ],
                  onPressed: (int index) {
                    setState(() {
                      for (int i = 0; i < isSelected.length; i++) {
                        isSelected[i] = i == index;
                      }
                    });
                    onTapped(index);
                  },
                  isSelected: isSelected),
            ),
          ),
          Expanded(
            child: PageView(
              controller: controller,
              children: [
                Container(
                  child: _isListEmpty(listFood) ? FoodNotFound() : FoodFound(),
                ),
                Container(
                    child: _isListEmpty(listRecipe)
                        ? RecipeNotFound()
                        : RecipeFound()),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void onTapped(int index) {
    controller.jumpToPage(index);
  }

  bool _isListEmpty(List foodList) {
    if (foodList.length == 0) {
      return true;
    } else {
      return false;
    }
  }
}