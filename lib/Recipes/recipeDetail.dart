import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:kcal_nutrition_app/Recipes/recipeUtils.dart';
import 'package:kcal_nutrition_app/Recipes/recipes.dart';

class RecipeDetail extends StatefulWidget {
  const RecipeDetail({Key? key, required this.passedIndex}) : super(key: key);

  final int passedIndex;

  @override
  _RecipeDetailState createState() => _RecipeDetailState();
}

class _RecipeDetailState extends State<RecipeDetail> {
  List<Recipe> listRecipe = RecipeUtils.getRecipeData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          'Recipe',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ),
      body: Container(
        color: Colors.white,
        child: ListView(
          children: [
            //1st element
            Image(
              image: AssetImage(listRecipe[widget.passedIndex].imgPath),
              height: 200,
              width: 500,
              fit: BoxFit.cover,
            ),
            //2nd element
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 15, 20, 20),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.yellow[50],
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.watch_later_outlined,
                      ),
                      Text(
                        listRecipe[widget.passedIndex].timeCook.toString() +
                            ' mins',
                      ),
                      Icon(Icons.people),
                      Text(
                        listRecipe[widget.passedIndex].servings.toString() +
                            ' serve',
                      ),
                      Row(
                        children: [
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
                    ],
                  ),
                ),
              ),
            ),
            //3rd element
            Row(
              children: [
                Container(
                  width: 340,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                    child: Text(
                      listRecipe[widget.passedIndex].recipeName,
                      style: TextStyle(
                        fontFamily: 'NunitoBold',
                        fontSize: 25,
                      ),
                    ),
                  ),
                ),
                CircleAvatar(
                  radius: 22,
                  backgroundColor: Colors.green[100],
                  child: Icon(
                    Icons.favorite,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            //4th element
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
              child: Text(
                listRecipe[widget.passedIndex].recipeDesc,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 18,
                ),
              ),
            ),
            //5th element (kulang list view sa ingredients)
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Text(
                'Ingredients',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'NunitoBold',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
              child: SizedBox(
                height: 250,
                width: 300,
                child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount:
                    listRecipe[widget.passedIndex].listIngredients.length,
                    itemBuilder: (context, index) {
                      return buildIngredientCard(widget.passedIndex, index);
                    }),
              ),
            ),
            //6th element
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Text(
                'Directions',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'NunitoBold',
                ),
              ),
            ),
            ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: listRecipe[widget.passedIndex].directions.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.fromLTRB(30, 0, 30, 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                          child: Text(
                            'Step ' + (index + 1).toString(),
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'NunitoBold',
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Text(
                          listRecipe[widget.passedIndex].directions[index],
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'NunitoReg',
                          ),
                        ),
                      ],
                    ),
                  );
                }),
          ],
        ),
      ),
    );
  }

  Widget buildIngredientCard(int recipeIndex, int ingredientIndex) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 10, 10, 20),
      child: Container(
        width: 150,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image(
              image: AssetImage(listRecipe[recipeIndex]
                  .listIngredients[ingredientIndex]
                  .imgPath),
              height: 100,
              width: 100,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Text(
                listRecipe[recipeIndex]
                    .listIngredients[ingredientIndex]
                    .ingredientName,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                  fontFamily: 'NunitoReg',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Text(
                listRecipe[recipeIndex]
                    .listIngredients[ingredientIndex]
                    .amount
                    .toString() +
                    ' ' +
                    listRecipe[recipeIndex]
                        .listIngredients[ingredientIndex]
                        .measurement,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                  fontFamily: 'NunitoReg',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}