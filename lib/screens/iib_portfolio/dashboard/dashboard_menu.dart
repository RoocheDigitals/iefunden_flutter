import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iefunden/commons/buttons.dart';
import 'package:iefunden/commons/main_container.dart';
import 'package:iefunden/commons/title.dart';
import 'package:iefunden/controllers/navigation_controller.dart';

class IIBPortfolioDashboardMenuScreen extends StatelessWidget {
  const IIBPortfolioDashboardMenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MainContainer(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const MainTitle(
            "Welcome to IIB Portfolio",
            fontSize: 24,
          ),
          Flexible(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SvgPicture.asset(
                  ("assets/images/Logo.svg"),
                  semanticsLabel: 'iefunded logo',
                ),
                Column(
                  children: [
                    submitButton(
                      "Tier - 1 Investments",
                      Colors.white,
                      () => NavigationController.goToIIBDashboardTierOne(),
                      width: 300,
                    ),
                    submitButton(
                      "Tier - 2 Investments",
                      Colors.white,
                      () => NavigationController.goToIIBDashboardTierTwo(),
                      width: 300,
                    ),
                    submitButton(
                      "Tier - 3 Investments",
                      Colors.white,
                      () => NavigationController.goToIIBDashboardTierThree(),
                      width: 300,
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
