import 'package:flutter/material.dart';

const TextStyle linkTextStyle = TextStyle(
    fontSize: 16.0,
    decoration: TextDecoration.underline,
    color: Colors.blueAccent,
    fontWeight: FontWeight.w800);

TextStyle loadTextStyle(context) {
  return TextStyle(
      fontSize: 18.0,
      decoration: TextDecoration.none,
      color: Theme.of(context).primaryColor,
      fontWeight: FontWeight.w800);
}

const TextStyle headingTextStyle = TextStyle(
  color: Colors.black,
  fontSize: 21.0,
  fontWeight: FontWeight.bold,
);

TextStyle numberTextStyle(context) {
  return TextStyle(
    color: Theme.of(context).primaryColorDark,
    fontSize: 21.0,
    fontWeight: FontWeight.normal,
    decoration: TextDecoration.none,
  );
}

const TextStyle menuTextStyle = TextStyle(
  color: Colors.white,
  fontSize: 18.0,
  fontWeight: FontWeight.bold,
);
