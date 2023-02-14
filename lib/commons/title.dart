import 'package:flutter/material.dart';
import 'package:iefunden/color.dart';

class MainTitle extends StatelessWidget {
  const MainTitle(this.label, {super.key, this.fontSize = 28});

  final String label;
  final double fontSize;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: fontSize,
          ),
        ),
        CustomPaint(
          size: const Size(300, 10),
          painter: DiagonalLinePainter(),
        ),
      ],
    );
  }
}

class DiagonalLinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = HexColor("#9EDEFD")
      ..strokeWidth = 15;

    Path path0 = Path();
    path0.moveTo(0, 0);
    path0.lineTo(size.width, 0);
    path0.lineTo(size.width, size.height);
    path0.lineTo(0, 0);
    path0.close();

    canvas.drawPath(path0, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
