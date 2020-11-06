import 'package:flutter/material.dart';

Widget loginTab(
    BuildContext context, String tittle, Function func, String tab) {
  Color color = tab == tittle ? Colors.deepOrange : Colors.transparent;

  return GestureDetector(
    onTap: func,
    child: Column(
      children: [
        Text(
          tittle,
          style: TextStyle(fontSize: 18),
        ),
        SizedBox(
          height: 16,
        ),
        Container(
          color: color,
          height: 2,
          width: MediaQuery.of(context).size.width * 0.4,
        )
      ],
    ),
  );
}

Widget customTextField(String tittle, {bool obscure, InputDecoration decoration}) {
  return Container(
    margin: EdgeInsets.symmetric(vertical: 16),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 8),
          alignment: Alignment.centerLeft,
          child: Text(
            tittle,
            style: TextStyle(fontSize: 15, color: Color.fromRGBO(0, 0, 0, 0.4)),
          ),
        ),
        SizedBox(
          height: 24,
          child: TextField(
            obscureText: obscure ?? false,
            decoration: decoration,
          ),
        ),
      ],
    ),
  );
}
