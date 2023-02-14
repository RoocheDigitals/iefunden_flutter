import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MainContainer extends StatelessWidget {
  const MainContainer({super.key, required this.body});

  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size(0, 150),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(30, 50, 30, 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              SvgPicture.asset(
                ("assets/images/menu_2.svg"),
                semanticsLabel: 'iefunded menu',
              ),
              SizedBox(
                height: 60,
                child: SvgPicture.asset(
                  ("assets/images/Logo.svg"),
                  alignment: Alignment.centerRight,
                  semanticsLabel: 'iefunded logo',
                ),
              ),
            ],
          ),
        ),
      ),
      body: body,
    );
  }
}
