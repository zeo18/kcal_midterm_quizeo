import 'package:flutter/material.dart';
import 'package:kcal_nutrition_app/Food/foodUtil.dart';

import 'food.dart';
import 'foodDetail.dart';

class FoodFound extends StatefulWidget {
  const FoodFound({Key? key}) : super(key: key);

  @override
  _FoodFoundState createState() => _FoodFoundState();
}

class _FoodFoundState extends State<FoodFound> {
  List<Food> listFood = FoodUtils.getFoodData();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        child: GridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: 2.5 / 1,
          children: List.generate(
            listFood.length,
                (index) {
              return InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FoodDetail(
                        passedIndex: index,
                      ),
                    ),
                  );
                },
                child: buildGridItem(index),
              );
            },
          ),
        ),
      ),
    );
  }

  Widget buildGridItem(int index) => Container(
    decoration: BoxDecoration(
      color: Colors.yellow[50],
      borderRadius: BorderRadius.circular(15),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image(
          image: AssetImage(listFood[index].iconPath),
          width: 50,
          height: 50,
        ),
        Text(listFood[index].foodname),
        Icon(Icons.arrow_forward_ios_rounded),
      ],
    ),
  );
}