import 'package:flutter/material.dart';

abstract class AppTheme {
  static ThemeData lightTheme() {
    return ThemeData(
        primaryColor: red,
        canvasColor: lightCard,
        bottomNavigationBarTheme:
            BottomNavigationBarThemeData(backgroundColor: lightBottombar),
        accentColorBrightness: Brightness.light,
        backgroundColor: lightBg,
        cardTheme: CardTheme(color: lightCard, shadowColor: Colors.grey),
        textTheme: TextTheme(bodyText1: lightText),
        cursorColor: red);
  }

  static ThemeData darkTheme() {
    return ThemeData(
        canvasColor: darkCard,
        primaryColor: black,
        backgroundColor: darkBg,
        cardTheme: CardTheme(color: darkCard, shadowColor: darkCardShadow),
        bottomNavigationBarTheme:
            BottomNavigationBarThemeData(backgroundColor: darkBottombar),
        textTheme: TextTheme(bodyText1: darkText),
        cursorColor: red);
  }

  static const darkBottombar = Color(0xFF575b63);
  static const darkCard = Color(0xFF494d54);
  static const darkCardShadow = Color(0xFF595c61);
  static const lightBottombar = Color(0xFFF1F1F1);
  static const lightCard = Color(0xFFF1F1F1);
  static const lightCardShadow = Color(0xFF595c61);
  static const yellow = Color(0xFFFFCE00);
  static const darkBg = Color(0xFF3c3f45);
  static const lightBg = Color(0xFFF4F3F3);
  static const black = Color(0xFF121012);
  static const red = Color(0xFFDD0000);
  static const TextStyle lightText = TextStyle(
      color: Colors.black,
      fontSize: 20,
      fontFamily: 'GT Eesti Pro',
      fontWeight: FontWeight.w600);
  static const TextStyle darkText = TextStyle(
      color: Colors.white,
      fontSize: 20,
      fontFamily: 'GT Eesti Pro',
      fontWeight: FontWeight.w600);
}
