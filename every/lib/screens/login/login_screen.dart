import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("FAFBFD"),
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.all(16),
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.arrow_back_ios,
                        color: HexColor("2C2929"),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Text(
                        "Voltar",
                        style: TextStyle(
                            color: HexColor("2C2929"),
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Sign in",
                      style: TextStyle(
                          color: HexColor("2C2929"),
                          fontSize: 36,
                          fontWeight: FontWeight.bold),
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
                              padding: EdgeInsets.zero,
                              onPressed: () {},
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(24),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.symmetric(
                                        horizontal: 24, vertical: 16),
                                    child: Image.asset(
                                        "assets/images/apple_logo.png"),
                                  ),
                                  Text(
                                    "Sign in with Apple",
                                    style: TextStyle(
                                      color: HexColor("2C2929"),
                                      fontSize: 20,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 16),
                          SizedBox(
                            height: 58,
                            width: MediaQuery.of(context).size.width,
                            child: RaisedButton(
                              onPressed: () {},
                              color: Colors.white,
                              padding: EdgeInsets.zero,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(24),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.symmetric(
                                        horizontal: 24, vertical: 16),
                                    child: Image.asset(
                                        "assets/images/google_logo.png"),
                                  ),
                                  Text(
                                    "Sign in with Google",
                                    style: TextStyle(
                                      color: HexColor("4285F4"),
                                      fontSize: 20,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 35),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "or get a link emailed to you",
                            style: TextStyle(
                              fontSize: 15,
                              color: HexColor("2C2929"),
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          SizedBox(height: 16),
                          TextFormField(
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(19),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(24),
                                borderSide: BorderSide.none,
                              ),
                              filled: true,
                              fillColor: Colors.white,
                              hintText: "Work email address",
                              hintStyle: TextStyle(fontSize: 20),
                            ),
                          ),
                          SizedBox(height: 16),
                          SizedBox(
                            height: 58,
                            width: MediaQuery.of(context).size.width,
                            child: RaisedButton(
                              onPressed: () {},
                              color: HexColor("7041EE"),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(24),
                              ),
                              child: Text(
                                "Email me a signup link",
                                style:
                                    TextStyle(fontSize: 20, color: Colors.white),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      thickness: 0.5,
                      height: 0.5,
                    ),
                    Column(
                      children: [
                        Text("You are completely safe.",
                            style: TextStyle(fontSize: 15)),
                        Text("Read our Terms & Conditions.",
                            style: TextStyle(
                                fontSize: 15, color: HexColor("7041EE"))),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
