import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:frwk_food/screens/home/controllers/home_controller.dart';

List<Widget> listTile({HomeController controller}) {
  List<Widget> tiles = List<Widget>();

  for (String tittle in controller.titles) {
    tiles.add(Observer(
      builder: (_) {
        return InkWell(
          onTap: () {
            controller.setTab(tittle);
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                tittle,
                style: TextStyle(
                  fontSize: 17,
                  color: tittle == controller.currentTab
                      ? Colors.deepOrange
                      : Color.fromRGBO(154, 154, 157, 1),
                ),
              ),
              SizedBox(height: 8),
              Container(
                height: 1,
                width: 80,
                color: tittle == controller.currentTab
                    ? Colors.deepOrange
                    : Colors.transparent,
              )
            ],
          ),
        );
      },
    ));
  }

  return tiles;
}
