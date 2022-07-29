import 'package:flutter/material.dart';

import '../const & utils/const.dart';

Widget letterBox(String character, bool hidden) {
  return Container(
    height: 65,
    width: 50,
    padding: EdgeInsets.all(10.0),
    decoration: BoxDecoration(
      color: kLetterBoxMainColor,
      borderRadius: BorderRadius.circular(4.0),
    ),
    child: Visibility(
      visible: !hidden,
      child: Text(character,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: kLetterColor,
        fontWeight: FontWeight.bold,
        fontSize: 35.0,
      ),),
    ),
  );
}