import 'package:flutter/material.dart';

class TextThemes {
  static final TextStyle title = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w600,
  );

  static final TextStyle subtitle = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
  );

  static final TextStyle body1 = TextStyle(
    fontSize: 11,
    fontWeight: FontWeight.w300,
  );

  static final TextStyle dateStyle = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    color: Colors.green[900],
  );
}

class MyThemes {
  static final primary = Colors.blue;
  static final primaryColor = Colors.blue.shade300;

  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.grey.shade900,
    primaryColorDark: primaryColor,
    colorScheme: ColorScheme.dark(primary: primary),
    dividerColor: Colors.white,
  );

  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    primaryColor: primaryColor,
    colorScheme: ColorScheme.light(primary: primary),
    dividerColor: Colors.black,
  );
}
