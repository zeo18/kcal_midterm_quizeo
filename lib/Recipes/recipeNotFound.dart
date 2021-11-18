import 'package:flutter/material.dart';

class RecipeNotFound extends StatefulWidget {
  const RecipeNotFound({Key? key}) : super(key: key);

  @override
  _RecipeNotFoundState createState() => _RecipeNotFoundState();
}

class _RecipeNotFoundState extends State<RecipeNotFound> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Image(
            image: AssetImage('assets/recipe/recipeNotFound.png'),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 0, 30, 20),
            child: Text(
              'No Recipes Found',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 0, 30, 50),
            child: Text(
              'You don\'t have any saved recipes. Go ahead, search and save your favorite recipe.',
              style: TextStyle(
                fontSize: 18,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 0, 30, 70),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(250, 50),
                  primary: Colors.redAccent[100],
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(10)),
                ),
                onPressed: () {
                  print('Search');
                },
                child: Text('Search')),
          ),
        ],
      ),
    );
  }
}