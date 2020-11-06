import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:frwk_food/models/food_model.dart';
import 'package:frwk_food/screens/detail/detail_screen.dart';

import 'controllers/cardapio/cardapio_controller.dart';

Widget customButtom(
    {BuildContext context,
    Function onPressed,
    String tittle,
    Color background,
    Color tittleColor,
    EdgeInsets margin}) {
  return Container(
    alignment: Alignment.center,
    margin: margin ?? EdgeInsets.only(left: 36, right: 36, bottom: 36, top: 16),
    child: SizedBox(
      width: MediaQuery.of(context).size.width,
      child: RaisedButton(
        child: Text(
          tittle,
          style: TextStyle(
            color: tittleColor,
            fontSize: 16,
          ),
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        padding: EdgeInsets.all(24),
        color: background,
        onPressed: onPressed,
      ),
    ),
  );
}

List<Widget> cardTiles(
    List<Food> cardapio, EdgeInsets margin, BuildContext context,
    {bool pop}) {
  List<Widget> tiles = List<Widget>();

  bool willpop = pop ?? false;

  for (int i = 0; i < cardapio.length; i++) {
    tiles.add(
      InkWell(
        onTap: () {
          willpop
              ? Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => DetailScreen(
                        food: cardapio[i],
                      )))
              : Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => DetailScreen(food: cardapio[i])));
        },
        borderRadius: BorderRadius.circular(30),
        child: Container(
          margin: margin,
          padding: EdgeInsets.only(bottom: 16),
          child: AspectRatio(
            aspectRatio: 2 / 3,
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Flexible(
                      flex: 1,
                      child: Container(),
                    ),
                    Flexible(
                      flex: 5,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              offset: Offset(0.0, 8.0), //(x,y)
                              blurRadius: 10.0,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Flexible(
                      flex: 1,
                      child: AspectRatio(
                        aspectRatio: 1,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(300),
                          child: Image.network(cardapio[i].url,
                              fit: BoxFit.fitHeight),
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              cardapio[i].name,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 22,
                              ),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                            Text(
                              cardapio[i].number,
                              style: TextStyle(
                                fontSize: 17,
                                color: Colors.deepOrange,
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  return tiles;
}
