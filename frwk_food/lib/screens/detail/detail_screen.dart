import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:frwk_food/models/food_model.dart';
import 'package:frwk_food/models/food_model.dart';
import 'package:frwk_food/screens/cart/cart_screen.dart';
import 'package:frwk_food/screens/detail/components.dart';
import 'package:frwk_food/screens/detail/detail_controller.dart';
import 'package:frwk_food/shared/components.dart';
import 'package:frwk_food/shared/controllers/cardapio/cardapio_controller.dart';
import 'package:frwk_food/shared/controllers/cart/cart_controller.dart';
import 'package:provider/provider.dart';

class DetailScreen extends StatelessWidget {
  final Food food;

  DetailScreen({@required this.food});

  @override
  Widget build(BuildContext context) {
    final CardapioController cardapioController =
        Provider.of<CardapioController>(context);
    int index;
    for (int i = 0; i < cardapioController.cardapio.length; i++) {
      if (cardapioController.cardapio[i] == food) {
        index = i;
      }
    }

    DetailController detailController = DetailController();
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                  Observer(
                    builder: (_) {
                      return InkWell(
                        borderRadius: BorderRadius.circular(36),
                        onTap: () {
                          cardapioController
                              .setFavorite(cardapioController.cardapio[index]);
                        },
                        child: Container(
                          margin: EdgeInsets.all(16),
                          child: Icon(
                              cardapioController.cardapio[index].favorite
                                  ? Icons.favorite
                                  : Icons.favorite_border),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
            Column(
              children: [
                CarouselSlider(
                  items: [
                    carouselTile(
                        cardapioController.cardapio[index].url, context),
                    carouselTile(
                        cardapioController.cardapio[index].url, context),
                    carouselTile(
                        cardapioController.cardapio[index].url, context),
                    carouselTile(
                        cardapioController.cardapio[index].url, context),
                  ],
                  options: CarouselOptions(
                    onPageChanged: (index, page) {
                      detailController.setDot(index);
                    },
                    autoPlay: false,
                    enableInfiniteScroll: true,
                    viewportFraction: 1,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: dotList(detailController, 4),
                ),
              ],
            ),
            Spacer(),
            Column(
              children: [
                Text(
                  cardapioController.cardapio[index].name,
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
                ),
                Text(
                  cardapioController.cardapio[index].number,
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                      color: Colors.deepOrange),
                ),
                textInfo("Delivery info",
                    "Delivered between monday aug and thursday 20 from 8pm to 91:32 pm"),
                SizedBox(
                  height: 16,
                ),
                textInfo("Return policy",
                    "All our foods are double checked before leaving our stores so by any case you found a broken food please contact our hotline immediately."),
              ],
            ),
            Spacer(),
            customButtom(
              context: context,
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => CartScreen()));
                Provider.of<CartController>(context, listen: false)
                    .addFood(cardapioController.cardapio[index]);
              },
              tittle: "Add to cart",
              tittleColor: Colors.white,
              background: Colors.deepOrange,
              margin: EdgeInsets.only(left: 36, top: 16, bottom: 36, right: 36),
            ),
          ],
        ),
      ),
    );
  }
}
