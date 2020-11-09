import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:frwk_food/screens/payment/components.dart';
import 'package:frwk_food/screens/payment/payment_controller.dart';
import 'package:frwk_food/shared/components.dart';
import 'package:frwk_food/shared/controllers/cart/cart_controller.dart';
import 'package:provider/provider.dart';

class PaymentScreen extends StatelessWidget {
  final PaymentController paymentController = PaymentController();

  @override
  Widget build(BuildContext context) {
    paymentController.setValue(Provider.of<CartController>(context).cart);
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(left: 20, top: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    borderRadius: BorderRadius.circular(36),
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Container(
                      margin: EdgeInsets.all(16),
                      child: Icon(Icons.arrow_back_ios),
                    ),
                  ),
                  Spacer(),
                  Container(
                    margin: EdgeInsets.only(right: 40),
                    child: Text(
                      "Checkout",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                  ),
                  Spacer(),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(36),
              alignment: Alignment.centerLeft,
              child: Text(
                "Payment",
                style: TextStyle(fontSize: 34, fontWeight: FontWeight.w600),
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 36),
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 24),
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Payment method",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w600),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(16),
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white,
                        ),
                        child: Observer(
                          builder: (_) {
                            return Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    dotCheck(
                                      onTap: () {
                                        paymentController.dotPress("card");
                                      },
                                      value: paymentController.card,
                                    ),
                                    Container(
                                      height: 40,
                                      width: 40,
                                      margin: EdgeInsets.only(right: 16),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Colors.orange),
                                      child: Icon(
                                        Icons.credit_card,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Text(
                                      "Card",
                                      style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w400),
                                    )
                                  ],
                                ),
                                Divider(),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    dotCheck(
                                      onTap: () {
                                        paymentController.dotPress("bank");
                                      },
                                      value: paymentController.bank,
                                    ),
                                    Container(
                                      height: 40,
                                      width: 40,
                                      margin: EdgeInsets.only(right: 16),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Colors.pinkAccent),
                                      child: Icon(
                                        Icons.monetization_on,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Text(
                                      "Bank account",
                                      style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 24, top: 36),
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Address details",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w600),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(36),
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Marvis Kparobo",
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w500),
                            ),
                            Divider(),
                            Text(
                              "Km 5 refinery road oppsite republic road, effurun, delta state",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w400),
                              maxLines: 2,
                            ),
                            Divider(),
                            Text(
                              "+234 9011039271",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 24, top: 36),
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Delivery method",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w600),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(16),
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white,
                        ),
                        child: Observer(
                          builder: (_) {
                            return Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    dotCheck(
                                      onTap: () {
                                        paymentController.dotPress("door");
                                      },
                                      value: paymentController.door,
                                    ),
                                    Text(
                                      "Door delivery",
                                      style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w400),
                                    )
                                  ],
                                ),
                                Divider(),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    dotCheck(
                                      onTap: () {
                                        paymentController.dotPress("pickup");
                                      },
                                      value: paymentController.pickup,
                                    ),
                                    Text(
                                      "Pick up",
                                      style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 36, vertical: 18),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
                  ),
                  Observer(
                    builder: (_) {
                      return Text(
                        paymentController.value.toStringAsFixed(2),
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.w600),
                      );
                    },
                  ),
                ],
              ),
            ),
            customButtom(
              context: context,
              onPressed: () {},
              tittle: "Proceed to payment",
              tittleColor: Colors.white,
              background: Colors.deepOrange,
            ),
          ],
        ),
      ),
    );
  }
}
