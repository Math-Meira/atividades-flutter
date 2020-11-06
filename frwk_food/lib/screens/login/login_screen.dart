import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:frwk_food/screens/home/home_screen.dart';
import 'package:frwk_food/screens/login/components.dart';
import 'package:frwk_food/screens/login/login_controller.dart';
import 'package:frwk_food/shared/components.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    LoginController loginController = LoginController();
    return Scaffold(
      backgroundColor: Color.fromRGBO(242, 242, 242, 1),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 30),
              height: MediaQuery.of(context).size.height * 0.4,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    offset: Offset(0.0, 4.0), //(x,y)
                    blurRadius: 8.0,
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Expanded(
                    child: Container(
                      child: Image.asset("assets/images/logo2.png"),
                    ),
                  ),
                  Observer(
                    builder: (_) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          loginTab(context, "Login", () {
                            loginController.setTab("Login");
                          }, loginController.currentTab),
                          loginTab(context, "Sign-up", () {
                            loginController.setTab("Sign-up");
                          }, loginController.currentTab),
                        ],
                      );
                    },
                  ),
                ],
              ),
            ),
            Observer(
              builder: (_) {
                return loginController.currentTab == "Sign-up"
                    ? Container(
                        child: Text("Sign-up"),
                      )
                    : Container(
                        height: MediaQuery.of(context).size.height * 0.6,
                        padding: EdgeInsets.all(36),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            customTextField(
                              "Email address",
                              decoration:
                                  InputDecoration(hintText: "User@email.com"),
                            ),
                            customTextField(
                              "Password",
                              obscure: true,
                              decoration: InputDecoration(hintText: "******"),
                            ),
                            Container(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Forgot passcode?",
                                style: TextStyle(
                                    color: Colors.deepOrange, fontSize: 17),
                              ),
                            ),
                            Spacer(),
                            Container(
                              alignment: Alignment.bottomCenter,
                              child: customButtom(
                                context: context,
                                onPressed: () {
                                  Navigator.of(context).pushReplacement(
                                      MaterialPageRoute(
                                          builder: (context) => HomeScreen()));
                                },
                                tittle: "Login",
                                tittleColor: Colors.white,
                                background: Colors.deepOrange,
                                margin: EdgeInsets.zero,
                              ),
                            ),
                          ],
                        ),
                      );
              },
            ),
          ],
        ),
      ),
    );
  }
}
