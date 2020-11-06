import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:frwk_food/screens/detail/detail_controller.dart';

Widget carouselTile(String url, BuildContext context) {
  return Container(
    margin: EdgeInsets.only(bottom: 24),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(1000),
      boxShadow: [
        BoxShadow(
          color: Colors.black26,
          offset: Offset(0.0, 8.0), //(x,y)
          blurRadius: 16.0,
        ),
      ],
    ),
    child: AspectRatio(
      aspectRatio: 1,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(1000),
        child: Image.network(
          url,
          fit: BoxFit.fitHeight,
        ),
      ),
    ),
  );
}

List<Widget> dotList(DetailController controller, int size) {
  List<Widget> dots = List<Widget>();

  for (int i = 0; i < size; i++) {
    dots.add(
      Observer(
        builder: (_) {
          return Container(
            height: 8,
            width: 8,
            margin: EdgeInsets.symmetric(horizontal: 6),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: i == controller.currentImage
                  ? Colors.deepOrange
                  : Color.fromRGBO(196, 196, 196, 1),
            ),
          );
        },
      ),
    );
  }
  return dots;
}

Widget textInfo(String title, String content) {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 36),
    alignment: Alignment.centerLeft,
    child: Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
        SizedBox(height: 8),
        Text(
          content,
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
          maxLines: 5,
        ),
      ],
    ),
  );
}
