import 'package:flutter/rendering.dart';

import 'welcome.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: Splash(
        duration: 3,
        goToPage: WelcomePage(),
      ),
    );
  }
}

// ignore: must_be_immutable
class Splash extends StatelessWidget {
  Splash({
    required this.goToPage,
    required this.duration,
  });

  int duration = 0;
  final Widget goToPage;

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: this.duration), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => this.goToPage));
    });
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/splash.png'),
              fit: BoxFit.cover,
            )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 240, 0, 0),
              child: Text(
                'kcal',
                style: TextStyle(
                  fontSize: 70,
                  color: Colors.white,
                  fontFamily: 'WorkSans',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 230, 0, 0),
              child: Text(
                "ZUAMICA",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white54,
                  fontFamily: "WorkSans",
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