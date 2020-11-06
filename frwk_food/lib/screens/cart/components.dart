import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:frwk_food/shared/controllers/cart/cart_controller.dart';

List<Widget> orderTiles(CartController controller, double size) {
  List<Widget> list = List<Widget>();

  for (int i = 0; i < controller.cart.length; i++) {
    list.add(Container(
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 36),
      child: Observer(
        builder: (_) {
          return controller.changing == 1
              ? Container()
              : Dismissible(
                  background: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(500),
                        child: Container(
                          width: 45,
                          height: 45,
                          color: Color.fromRGBO(223, 44, 44, 1),
                        ),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(500),
                        child: Container(
                          width: 45,
                          height: 45,
                          color: Color.fromRGBO(223, 44, 44, 1),
                          child: Icon(
                            controller.cart[i].favorite
                                ? Icons.favorite
                                : Icons.favorite_border,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  onDismissed: (direction) {
                    controller.removeFromCart(i);
                  },
                  key: UniqueKey(),
                  direction: DismissDirection.endToStart,
                  child: Container(
                    height: size,
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AspectRatio(
                          aspectRatio: 1,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Image.network(
                              controller.cart[i].url,
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                controller.cart[i].name,
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w600,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              Text(
                                controller.cart[i].number,
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.deepOrange),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          alignment: Alignment.bottomRight,
                          child: Container(
                            height: 24,
                            width: 56,
                            decoration: BoxDecoration(
                              color: Colors.deepOrange,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                GestureDetector(
                                  child: Icon(
                                    Icons.remove,
                                    color: Colors.white,
                                    size: 16,
                                  ),
                                  onTap: () {
                                    controller.addRemFood(index: i, op: 0);
                                  },
                                ),
                                Text(
                                  controller.cart[i].quantity.toString(),
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                ),
                                GestureDetector(
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                    size: 16,
                                  ),
                                  onTap: () {
                                    controller.addRemFood(index: i, op: 1);
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
        },
      ),
    ));
  }

  return list;
}
