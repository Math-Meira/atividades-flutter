import 'package:every/models/event_model.dart';
import 'package:every/screens/details/details_controller.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'dart:math';

Widget eventTile(
    {Event event, Widget child, BuildContext context, bool opacity}) {
  List<Color> colors = [
    HexColor("FA4F3B"),
    HexColor("1ECD8C"),
    HexColor("FECD56"),
    HexColor("524AFF")
  ];

  Random random = Random();
  final int index = random.nextInt(4);
  Color color = colors[index];

  if (event.color == null) {
    event.color = color;
  }

  return Opacity(
    opacity: opacity ? 0.4 : 1,
    child: Container(
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(right: 16),
            width: 2,
            height: MediaQuery.of(context).size.height * 0.12,
            color: event.color,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(event.tittle,
                        style: TextStyle(color: event.color, fontSize: 18)),
                    SizedBox(width: 8),
                    Text(event.name,
                        style: TextStyle(color: Colors.black26, fontSize: 18)),
                  ],
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  event.body,
                  style: TextStyle(fontSize: 18),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  softWrap: false,
                ),
              ],
            ),
          ),
          child,
        ],
      ),
    ),
  );
}

Widget check({bool value, Function onChanged}) {
  return Container(
    width: 30,
    height: 30,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: value ? HexColor("d5cced") : Colors.white,
      border: value ? null : Border.all(color: HexColor("d5cced")),
    ),
    child: InkWell(
      onTap: onChanged,
      child: value
          ? Center(
              child: Icon(
                Icons.check,
                color: HexColor("7041EE"),
              ),
            )
          : null,
    ),
  );
}

List<Widget> peopleList(List<Person> person) {
  List<Widget> photos = List<Widget>();

  for (Person p in person) {
    photos.add(Container(
      margin: EdgeInsets.symmetric(horizontal: 8),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(24),
        child: Image.network(
          p.urlPhoto,
          height: 64,
          width: 64,
          fit: BoxFit.fitHeight,
        ),
      ),
    ));
  }
  return photos;
}

Widget bgStack({double height, double width, Widget child}) {
  return Stack(alignment: Alignment.bottomCenter, children: [
    Container(
      height: height,
      width: width,
      decoration: BoxDecoration(color: HexColor("7041EE")),
    ),
    Container(
      height: height * 0.94,
      width: width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.vertical(top: Radius.circular(45)),
          color: HexColor("8E67F1")),
    ),
    Container(
      height: height * 0.90,
      width: width,
      padding: EdgeInsets.only(top: 24),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
          color: Colors.white),
      child: child,
    ),
  ]);
}

List<Widget> listTittles(DetailsController detailsController) {
  List<Widget> texts = List<Widget>();

  for (String s in detailsController.tittles) {
    texts.add(Opacity(
      opacity: s == detailsController.currentTab ? 1 : 0.4,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 12),
        child: InkWell(
          onTap: (){
            detailsController.setCurrentTab(s);
          },
          child: Text(
            s,
            style: TextStyle(
                fontSize: 16,
                color: HexColor("2C2929")),
          ),
        ),
      ),
    ));
  }

  return texts;
}

List<Widget> peopleCard(List<Person> people) {
  List<Widget> cards = List<Widget>();

  for (Person p in people) {
    cards.add(
      Column(
        children: [
          Container(
            margin: EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(24),
                  child: Image.network(
                    p.urlPhoto,
                    height: 64,
                    width: 64,
                    fit: BoxFit.fitHeight,
                  ),
                ),
                SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        p.name,
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w700),
                      ),
                      SizedBox(height: 4),
                      Text(
                        p.function,
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w300),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Divider(),
        ],
      ),
    );
  }

  return cards;
}
