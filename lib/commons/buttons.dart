import 'package:flutter/material.dart';
import 'package:iefunden/color.dart';
import 'package:iefunden/main.dart';

Widget submitButton(String label, Color color, void Function()? onPress,
    {double? width, double fontSize = 18}) {
  return Container(
    width:
        width ?? MediaQuery.of(navigatorKey.currentContext!).size.width / 1.8,
    margin: const EdgeInsets.only(bottom: 10),
    child: TextButton(
      onPressed: onPress,
      style: Theme.of(navigatorKey.currentContext!)
          .textButtonTheme
          .style
          ?.copyWith(
            textStyle: MaterialStatePropertyAll(
              TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.w500,
                foreground: Paint()..color = Colors.white,
              ),
            ),
          ),
      child: Text(label),
    ),
  );
}

Widget linkButton(String label, Color color, void Function()? onPress,
    {double underlineWidth = 110}) {
  return Column(
    children: [
      InkWell(
        onTap: onPress,
        child: Text(
          label,
          style: const TextStyle(
            fontSize: 14,
          ),
        ),
      ),
      CustomPaint(
        size: Size(underlineWidth, 15),
        painter: HighLightLinkLinePainter(),
      ),
    ],
  );
}

class HighLightLinkLinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = HexColor("#01A4FF")
      ..strokeWidth = 15;

    Path path0 = Path();
    path0.moveTo(0, 0);
    path0.lineTo(size.width, 0);
    path0.lineTo(size.width * 0.5000000, size.height * 0.3000000);
    path0.lineTo(0, 0);
    path0.close();

    canvas.drawPath(path0, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
