import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ContainerWRadial extends StatelessWidget {
  const ContainerWRadial({super.key, this.color, required this.child});

  final Widget child;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          right: 0,
          child: SvgPicture.asset(("assets/images/RadialPulseRight.svg"),
              semanticsLabel: 'iefunded pulse right', color: color),
        ),
        Positioned(
          left: 0,
          bottom: 0,
          child: SvgPicture.asset(("assets/images/RadialPulseLeft.svg"),
              semanticsLabel: 'iefunded pulse left', color: color),
        ),
        child,
      ],
    );
  }
}
