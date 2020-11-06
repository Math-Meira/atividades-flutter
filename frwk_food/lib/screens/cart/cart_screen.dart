import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:frwk_food/screens/cart/components.dart';
import 'package:frwk_food/shared/components.dart';
import 'package:frwk_food/shared/controllers/cart/cart_controller.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(242, 242, 242, 1),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(left: 20, top: 20, right: 20),
              child: Column(
                children: [
                  Row(
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
                          "Cart",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                      ),
                      Spacer(),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.touch_app, size: 16),
                      SizedBox(width: 8),
                      Text(
                        "swipe on an item to delete",
                        style: TextStyle(
                            fontSize: 10, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 8),
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Observer(
                    builder: (_) {
                      return Provider.of<CartController>(context, listen: false)
                              .cart
                              .isEmpty
                          ? Container()
                          : Column(
                              children: orderTiles(
                                Provider.of<CartController>(context,
                                    listen: false),
                                100,
                              ),
                            );
                    },
                  ),
                ),
              ),
            ),
            customButtom(
              tittle: "Complete order",
              tittleColor: Colors.white,
              background: Colors.deepOrange,
              onPressed: () {},
              context: context,
              margin: EdgeInsets.only(bottom: 36, right: 36, left: 36),
            ),
          ],
        ),
      ),
    );
  }
}

//MediaQuery.of(context).size.height * 0.16
