import 'package:flutter/material.dart';

class FoodNotFound extends StatefulWidget {
  const FoodNotFound({Key? key}) : super(key: key);

  @override
  _FoodNotFoundState createState() => _FoodNotFoundState();
}

class _FoodNotFoundState extends State<FoodNotFound> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Image(
            image: AssetImage('assets/food/foodNotFound.png'),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 0, 30, 20),
            child: Text(
              'No Foods Found',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 0, 30, 50),
            child: Text(
              'You don\'t have any saved foods. Go ahead, search and save your favorite foods.',
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