import 'package:every/screens/event/event_screen.dart';
import 'package:every/screens/login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("FAFBFD"),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(180),
                    child: Image.asset(
                      "assets/images/dye_bg.jpg",
                      height: 200,
                      width: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Text(
                    "every.",
                    style: TextStyle(
                        color: HexColor("7041EE"),
                        fontSize: 62,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "Your everyday personal assistant.",
                    style: TextStyle(
                      color: HexColor("2C2929"),
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 35),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: 58,
                    width: MediaQuery.of(context).size.width,
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => LoginScreen()));
                      },
                      color: HexColor("7041EE"),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24),
                      ),
                      child: Text(
                        "Get Starded",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w700),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  SizedBox(
                    height: 58,
                    width: MediaQuery.of(context).size.width,
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (context) => EventScreen()));
                      },
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24),
                      ),
                      child: Text(
                        "Login",
                        style: TextStyle(
                            fontSize: 20,
                            color: HexColor("7041EE"),
                            fontWeight: FontWeight.w700),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
