import 'package:flutter/material.dart';
import 'package:iefunden/commons/utilities.dart';

ThemeData? generateTheme() {
  return ThemeData(
    primarySwatch: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    fontFamily: "Inter",
    textTheme: const TextTheme(
      displayLarge: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
      titleLarge: TextStyle(
        fontSize: 40.0,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
      titleMedium: TextStyle(
        fontSize: 18.0,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
      bodyMedium: TextStyle(
        fontSize: 18.0,
        color: Colors.white,
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        side: MaterialStateProperty.all(BorderSide.none),
        shape: MaterialStateProperty.all(
          const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.zero),
          ),
        ),
        backgroundColor: MaterialStateProperty.all(
          HexColor("#FFFBFC"),
        ),
        textStyle: MaterialStateProperty.all(
          TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            foreground: Paint()..color = HexColor("#132885"),
          ),
        ),
      ),
    ),
  );
}
