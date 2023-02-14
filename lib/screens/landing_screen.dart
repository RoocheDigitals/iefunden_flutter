import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iefunden/commons/buttons.dart';
import 'package:iefunden/commons/constants.dart';
import 'package:iefunden/commons/main_container.dart';
import 'package:iefunden/commons/title.dart';
import 'package:iefunden/controllers/navigation_controller.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MainContainer(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MainTitle(
            APP_TITLE,
          ),
          Flexible(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SvgPicture.asset(
                  ("assets/images/Logo.svg"),
                  semanticsLabel: 'iefunded logo',
                ),
                submitButton(
                  "Get Start",
                  Colors.white,
                  () => NavigationController.goToGetStarted(),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
