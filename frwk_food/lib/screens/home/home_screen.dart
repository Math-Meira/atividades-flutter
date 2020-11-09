import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:frwk_food/screens/cart/cart_screen.dart';
import 'package:frwk_food/screens/home/components.dart';
import 'package:frwk_food/screens/home/controllers/home_controller.dart';
import 'package:frwk_food/screens/search/search_screen.dart';
import 'package:frwk_food/shared/components.dart';
import 'package:frwk_food/shared/controllers/cardapio/cardapio_controller.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeController homeController = HomeController();

  @override
  Widget build(BuildContext context) {
    CardapioController cardapioController =
        Provider.of<CardapioController>(context);

    return Scaffold(
      backgroundColor: Color.fromRGBO(242, 242, 242, 1),
      resizeToAvoidBottomPadding: false,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                Container(
                  margin: EdgeInsets.all(36),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            borderRadius: BorderRadius.circular(24),
                            onTap: () {},
                            child: Container(child: Icon(Icons.menu)),
                          ),
                          InkWell(
                            borderRadius: BorderRadius.circular(24),
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => CartScreen()));
                            },
                            child: Container(child: Icon(Icons.shopping_cart)),
                          ),
                        ],
                      ),
                      SizedBox(height: 24),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 8),
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Delicious\nfood for you",
                          style: TextStyle(
                              fontSize: 34, fontWeight: FontWeight.w700),
                        ),
                      ),
                      SizedBox(height: 24),
                      Container(
                        child: TextField(
                          onSubmitted: (text) {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) =>
                                    SearchScreen(search: text)));
                          },
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.search),
                            hintText: "Search",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide.none,
                            ),
                            filled: true,
                            fillColor: Color.fromRGBO(239, 238, 238, 1),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: listTile(controller: homeController),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 36, vertical: 8),
              alignment: Alignment.centerRight,
              child: Text(
                "see more",
                style: TextStyle(color: Colors.deepOrange, fontSize: 15),
              ),
            ),
            Spacer(),
            Observer(
              builder: (_) {
                return homeController.currentTab == "Foods"
                    ? Observer(
                        builder: (_) {
                          return cardapioController.cardapio.isEmpty ||
                                  cardapioController.cardapio == null
                              ? Container()
                              : Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.4,
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      children: cardTiles(
                                        cardapioController.cardapio,
                                        EdgeInsets.symmetric(horizontal: 18),
                                        context,
                                      ),
                                    ),
                                  ),
                                );
                        },
                      )
                    : Expanded(
                        child: Container(),
                      );
              },
            ),
            Spacer(),
            Container(
              margin: EdgeInsets.only(left: 36, bottom: 24, right: 36, top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.home,
                    color: Colors.deepOrange,
                  ),
                  Icon(
                    Icons.favorite_border,
                    color: Color.fromRGBO(173, 173, 175, 1),
                  ),
                  Icon(
                    Icons.person_outline,
                    color: Color.fromRGBO(173, 173, 175, 1),
                  ),
                  Icon(
                    Icons.restore,
                    color: Color.fromRGBO(173, 173, 175, 1),
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
