import 'package:flutter/material.dart';

abstract class AppTheme {
  static ThemeData lightTheme() {
    return ThemeData(
        primaryColor: red,
        textTheme: TextTheme(bodyText1: darkThemedefaultText),
        cursorColor: red);
  }

  static ThemeData darkTheme() {
    return ThemeData(
        primaryColor: black,
        textTheme: TextTheme(bodyText1: defaultTextStyle),
        cursorColor: red);
  }

  static const yellow = Color(0xFFFFCE00);
  static const black = Color(0xFF000000);
  static const red = Color(0xFFDD0000);
  static const TextStyle defaultTextStyle = TextStyle(
      color: Colors.black,
      fontSize: 20,
      fontFamily: 'GT Eesti Pro',
      fontWeight: FontWeight.w600);
  static const TextStyle darkThemedefaultText = TextStyle(
      color: Colors.white,
      fontSize: 20,
      fontFamily: 'GT Eesti Pro',
      fontWeight: FontWeight.w600);
}
