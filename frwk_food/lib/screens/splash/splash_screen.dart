import 'package:flutter/material.dart';
import 'package:frwk_food/screens/welcome/welcome_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            child: Image.asset(
              "assets/images/food_main.jpg",
              fit: BoxFit.fitHeight,
            ),
          ),
          Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(180),
              child: Container(
                height: MediaQuery.of(context).size.width * 0.6,
                width: MediaQuery.of(context).size.width * 0.6,
                color: Colors.white,
                child: Image.asset("assets/images/logo.png"),
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 6)).then((_) {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => WelcomeScreen()));
    });
  }
}
