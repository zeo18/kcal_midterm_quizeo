import 'package:flutter/material.dart';
import 'package:kcal_nutrition_app/Food/food.dart';
import 'package:kcal_nutrition_app/Food/foodUtil.dart';

class FoodDetail extends StatefulWidget {
  const FoodDetail({Key? key, required this.passedIndex}) : super(key: key);

  final int passedIndex;

  @override
  _FoodDetailState createState() => _FoodDetailState();
}

class _FoodDetailState extends State<FoodDetail> {
  List<Food> listFood = FoodUtils.getFoodData();

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
          'Foods',
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
            buildGridItem(widget.passedIndex),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
              child: Text(
                listFood[widget.passedIndex].foodDesc1,
                style: TextStyle(
                  fontFamily: "NunitoBold",
                  fontSize: 20,
                  color: Colors.grey,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
              child: Text(
                listFood[widget.passedIndex].foodDesc2,
                style: TextStyle(
                  fontFamily: "NunitoBold",
                  fontSize: 20,
                  color: Colors.grey,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 20, 30, 90),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Gallery: ',
                      style: TextStyle(
                        fontFamily: "NunitoBold",
                        fontSize: 20,
                        color: Colors.grey,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(0, 8, 8, 8),
                            child: Image.asset(
                              listFood[widget.passedIndex].imgPath1,
                              width: 150,
                              height: 250,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(8, 8, 0, 8),
                            child: Image.asset(
                              listFood[widget.passedIndex].imgPath2,
                              width: 150,
                              height: 250,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.fromLTRB(30, 0, 30, 20),
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              fixedSize: const Size(350, 50),
              primary: Colors.redAccent[100],
              shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(10)),
            ),
            onPressed: () {
              print('Add to Favorite');
            },
            child: Text('Add to Favorite')),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  Widget buildGridItem(int index) => Padding(
    padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
    child: Container(
      decoration: BoxDecoration(
        color: Colors.yellow[50],
        borderRadius: BorderRadius.circular(15),
      ),
      height: 80,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image(
              image: AssetImage(listFood[index].iconPath),
              width: 50,
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    listFood[index].foodname,
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    "Alternative Names: " +listFood[index].altName,
                    style: TextStyle(
                      fontSize : 12,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}