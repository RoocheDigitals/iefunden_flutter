import 'package:flutter/material.dart';

class ColorManager {
  static List<Color> gradientBlue = [HexColor("#0D31D1"), HexColor("#132885")];
  static Color lightBlue = HexColor("#01A4FF");
  static Color navyBlue = HexColor("#132885");
  static Color green = HexColor("#224519");
  static Color creamWhite = HexColor("#F8F6FE");
  static Color yellow = HexColor("#DDCA58");
  static Color red = HexColor("#AE0D00");
  static Color black = HexColor("#000000");
  static Color lightBlueShade = HexColor("#EAEEFF");
  static Color lightGreenShade = HexColor("#DBE3D8");
  static Color lightRedShade = HexColor("#EFD8D6");
}

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF$hexColor";
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}
