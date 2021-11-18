import 'mainpage.dart';

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

//start of Welcome Page
class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  //initializing values for the welcome page information
  int activeIndex = 0;

  final infoArray = [
    {
      'pic': 'assets/wp/welcomePage_1.PNG',
      'header': 'Eat Healthy',
      'desc': 'Maintaining good health should be the primary focus of everyone.',
    },
    {
      'pic': 'assets/wp/welcomePage_2.PNG',
      'header': 'Healthy Recipes',
      'desc': 'Browse thousands of healthy recipes from all over the world.',
    },
    {
      'pic': 'assets/wp/welcomePage_3.PNG',
      'header': 'Track Your Health',
      'desc': 'With amazing built-in tools you can track your progress.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(top: 40, bottom: 20),
              child: Text(
                "kcal",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                    fontFamily: 'NunitoBold'),
              ),
            ),
            Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CarouselSlider.builder(
                        options: CarouselOptions(
                          height: 400,
                          enableInfiniteScroll: false,
                          onPageChanged: (index, reason) =>
                              setState(() => activeIndex = index),
                        ),
                        itemCount: infoArray.length,
                        itemBuilder: (context, index, realIndex) {
                          final infoPicture = infoArray[index]['pic'];
                          final infoHeader = infoArray[index]['header'];
                          final infoDesc = infoArray[index]['desc'];

                          return swipeInfo(
                              infoPicture!, infoHeader!, infoDesc!, index);
                        }),
                    const SizedBox(
                      height: 5,
                    ),
                    buildIndicator(),
                  ],
                )),
            const SizedBox(
              height: 40,
            ),
            SizedBox(
              width: 300,
              height: 60,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      fixedSize: const Size(200, 20),
                      primary: Colors.redAccent[100],
                      shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(10))),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) => MainPage()),
                            (route) => false);
                  },
                  child: Text("Get Started")),
            ),
            Container(
              child:
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Text(
                  "Already have an account?",
                  style: TextStyle(fontSize: 14),
                ),
                TextButton(
                    onPressed: () {
                      print('Register');
                    },
                    child: Text('Sign Up!')),
              ]),
            )
          ],
        ),
      ),
    );
  }

  Widget buildIndicator() => AnimatedSmoothIndicator(
    activeIndex: activeIndex,
    count: infoArray.length,
    effect: ExpandingDotsEffect(
      dotColor: Colors.red.shade300,
      dotHeight: 10,
      dotWidth: 10,
      strokeWidth: 5,
      activeDotColor: Colors.redAccent,
    ),
  );

  //makes the swipe information
  Widget swipeInfo(String img, String header, String desc, index) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 40),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset(
            img,
            height: 250,
            width: 250,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 20),
          Text(
            header,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Text(
            desc,
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.grey, fontSize: 20, height: 1.4),
          ),
        ]));
  }
}
//end of Welcome Page