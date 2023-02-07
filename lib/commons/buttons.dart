import 'package:flutter/material.dart';
import 'package:iefunden/main.dart';

Widget submitButton(String label, Color color, void Function()? onPress) {
  return TextButton(
    onPressed: onPress,
    style:
        Theme.of(navigatorKey.currentContext!).textButtonTheme.style?.copyWith(
              backgroundColor: MaterialStatePropertyAll(color),
              textStyle: MaterialStatePropertyAll(
                TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  foreground: Paint()..color = Colors.white,
                ),
              ),
            ),
    child: Text(label),
  );
}
