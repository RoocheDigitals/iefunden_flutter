import 'package:flutter/material.dart';
import 'package:iefunden/color.dart';

ThemeData? generateTheme() {
  return ThemeData(
    primarySwatch: Colors.blue,
    scaffoldBackgroundColor: ColorManager.creamWhite,
    fontFamily: "Inter",
    textTheme: TextTheme(
      displayLarge:
          const TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
      titleLarge: TextStyle(
        fontSize: 32.0,
        color: ColorManager.creamWhite,
        fontWeight: FontWeight.bold,
      ),
      titleMedium: TextStyle(
        fontSize: 18.0,
        color: ColorManager.creamWhite,
        fontWeight: FontWeight.bold,
      ),
      bodyMedium: TextStyle(
        fontSize: 18.0,
        color: ColorManager.creamWhite,
        fontWeight: FontWeight.bold,
      ),
      bodySmall: const TextStyle(
        fontSize: 14.0,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        side: const MaterialStatePropertyAll(BorderSide.none),
        shape: const MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.zero),
          ),
        ),
        backgroundColor: MaterialStatePropertyAll(ColorManager.creamWhite),
        textStyle: MaterialStatePropertyAll(
          TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            foreground: Paint()..color = ColorManager.navyBlue,
          ),
        ),
      ),
    ),
  );
}
