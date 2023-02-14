import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iefunden/commons/buttons.dart';
import 'package:iefunden/commons/main_container.dart';
import 'package:iefunden/commons/title.dart';
import 'package:iefunden/controllers/navigation_controller.dart';

class CsoWalletDashboardMenuScreen extends StatelessWidget {
  const CsoWalletDashboardMenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MainContainer(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const MainTitle(
            "Welcome to CSO Wallet",
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
                      "Preference Consumer Spending",
                      Colors.white,
                      () => NavigationController
                          .goToWalletDashboardPrefSpending(),
                      width: 300,
                    ),
                    submitButton(
                      "Alternate Consumer Spending",
                      Colors.white,
                      () =>
                          NavigationController.goToWalletDashboardAltSpending(),
                      width: 300,
                    ),
                    submitButton(
                      "Collective Consumer Spending",
                      Colors.white,
                      () =>
                          NavigationController.goToWalletDashboardColSpending(),
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
