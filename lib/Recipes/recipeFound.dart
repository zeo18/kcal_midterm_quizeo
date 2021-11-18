import 'package:flutter/material.dart';
import 'package:kcal_nutrition_app/Recipes/recipeDetail.dart';

import 'package:kcal_nutrition_app/Recipes/recipeUtils.dart';
import 'package:kcal_nutrition_app/Recipes/recipes.dart';

class RecipeFound extends StatefulWidget {
  const RecipeFound({Key? key}) : super(key: key);

  @override
  _RecipeFoundState createState() => _RecipeFoundState();
}

class _RecipeFoundState extends State<RecipeFound> {
  List<Recipe> listRecipe = RecipeUtils.getRecipeData();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: listRecipe.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => RecipeDetail(
                    passedIndex: index,
                  ),
                ),
              );
            },
            child: buildListItem(index),
          );
        },
      ),
    );
  }

  Widget buildListItem(int index) => Padding(
    padding: const EdgeInsets.all(20.0),
    child: Container(
      decoration: BoxDecoration(
        color: Colors.yellow[50],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                child: Image(
                  image: AssetImage(listRecipe[index].imgPath),
                  height: 200,
                  width: 500,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                right: 10,
                top: 10,
                child: Icon(
                  Icons.favorite,
                  size: 30,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 15, 8, 6),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.watch_later_outlined,
                ),
                Text(
                  listRecipe[index].timeCook.toString() + ' mins',
                ),
                Icon(Icons.people),
                Text(
                  listRecipe[index].servings.toString() + ' serve',
                ),
                Icon(
                  Icons.star_rate,
                  color: Colors.red[200],
                ),
                Icon(
                  Icons.star_rate,
                  color: Colors.red[200],
                ),
                Icon(
                  Icons.star_rate,
                  color: Colors.red[200],
                ),
                Icon(
                  Icons.star_rate,
                  color: Colors.red[200],
                ),
                Icon(
                  Icons.star_rate,
                  color: Colors.red[200],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 10, 15, 5),
            child: Text(
              listRecipe[index].recipeName,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.start,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
            child: Text(
              listRecipe[index].shortDesc,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 14,
              ),
              textAlign: TextAlign.start,
            ),
          ),
        ],
      ),
    ),
  );
}