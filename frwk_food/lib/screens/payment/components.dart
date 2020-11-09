import 'package:flutter/material.dart';

Widget dotCheck({bool value, Function onTap}) {
  return InkWell(
    onTap: onTap,
    child: Container(
      margin: EdgeInsets.all(14),
      alignment: Alignment.center,
      height: 18,
      width: 18,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: value ? Colors.deepOrange : Colors.grey,width: 2),
      ),
      child: Container(
        height: 8,
        width: 8,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: value ? Colors.deepOrange : null,
        ),
      ),
    ),
  );
}
