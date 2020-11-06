import 'package:flutter/material.dart';
import 'package:frwk_food/screens/splash/splash_screen.dart';
import 'package:frwk_food/shared/controllers/cardapio/cardapio_controller.dart';
import 'package:frwk_food/shared/controllers/cart/cart_controller.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(Provider<CardapioController>(
    create: (_) => CardapioController(),
    child: Provider<CartController>(
      create: (_) => CartController(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
        theme: ThemeData(
          primarySwatch: Colors.deepOrange,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
      ),
    ),
  ));
}
