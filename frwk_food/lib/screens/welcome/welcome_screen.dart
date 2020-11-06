import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:frwk_food/screens/login/login_screen.dart';
import 'package:frwk_food/shared/components.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.all(36),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(8),
                  height: 72,
                  width: 72,
                  color: Colors.white,
                  child: Image.asset("assets/images/logo2.png"),
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.symmetric(horizontal: 36),
              child: Text(
                "Food for\nEveryone",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 48,
                    fontWeight: FontWeight.w700),
              ),
            ),
            Expanded(
              child: Container(
                child: Stack(
                  children: [
                    Container(
                      alignment: Alignment.centerRight,
                      child: Image.asset(
                        "assets/images/pp2.png",
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                    Container(
                      child: Image.asset(
                        "assets/images/pp1.png",
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            customButtom(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => LoginScreen()));
              },
              tittle: "Get Started",
              context: context,
              tittleColor: Colors.deepOrange,
              background: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
