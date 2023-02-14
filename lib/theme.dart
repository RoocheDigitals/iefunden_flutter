import 'package:flutter/material.dart';
import 'package:iefunden/color.dart';

ThemeData? generateTheme() {
  return ThemeData(
    primarySwatch: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    fontFamily: "Inter",
    appBarTheme: const AppBarTheme(
      color: Colors.white,
    ),
    textTheme: TextTheme(
      displayLarge:
          const TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
      titleLarge: TextStyle(
        fontSize: 32.0,
        color: ColorManager.lightBlue,
        fontWeight: FontWeight.bold,
      ),
      titleMedium: TextStyle(
        fontSize: 18.0,
        color: ColorManager.lightBlue,
        fontWeight: FontWeight.bold,
      ),
      bodyMedium: TextStyle(
        fontSize: 18.0,
        color: ColorManager.lightBlue,
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
            borderRadius: BorderRadius.all(Radius.circular(100)),
          ),
        ),
        backgroundColor: MaterialStatePropertyAll(ColorManager.lightBlue),
        textStyle: MaterialStatePropertyAll(
          TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.w500,
            foreground: Paint()..color = Colors.white,
          ),
        ),
      ),
    ),
  );
}
