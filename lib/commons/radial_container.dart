import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ContainerWRadial extends StatelessWidget {
  const ContainerWRadial({super.key, required this.child});

  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        child,
        Positioned(
          right: 0,
          child: SvgPicture.asset(
            ("assets/images/RadialPulseRight.svg"),
            semanticsLabel: 'iefunded pulse right',
          ),
        ),
        Positioned(
          left: 0,
          bottom: 0,
          child: SvgPicture.asset(
            ("assets/images/RadialPulseLeft.svg"),
            semanticsLabel: 'iefunded pulse left',
          ),
        )
      ],
    );
  }
}
