import 'package:flutter/material.dart';

const kTextColor = Color(0xFF3C4046);
const kBackgroundColor = Color(0xFFF9F8FD);
const kPrimaryColor = Color.fromARGB(255, 255, 88, 88);
const kBoxShadowColor = Color.fromRGBO(143, 148, 251, .2);

class AppTheme {
  static final AppTheme _instance = AppTheme._internal();
  static AppTheme get instance => _instance;

  AppTheme._internal();

  ThemeData get themeDark => ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kBackgroundColor,
        primaryColor: kPrimaryColor,
        textTheme: const TextTheme(
          bodyText1: TextStyle(color: kTextColor),
          bodyText2: TextStyle(color: kTextColor),
        ),
      );

  ThemeData get themeLight => ThemeData.light().copyWith(
        scaffoldBackgroundColor: kBackgroundColor,
        primaryColor: kPrimaryColor,
        textTheme: const TextTheme(
          bodyText1: TextStyle(color: kTextColor),
          bodyText2: TextStyle(color: kTextColor),
        ),
      );
}
