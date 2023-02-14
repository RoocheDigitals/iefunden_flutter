import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iefunden/color.dart';
import 'package:iefunden/commons/buttons.dart';
import 'package:iefunden/commons/main_container.dart';
import 'package:iefunden/commons/title.dart';

class CsoWalletDashboardAltSpendingScreen extends StatelessWidget {
  const CsoWalletDashboardAltSpendingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MainContainer(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const MainTitle(
            "Welcome to Alternate Spending Dashboard",
            fontSize: 16,
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
                      "Alternate Spending Items",
                      ColorManager.green,
                      () {},
                      width: 300,
                    ),
                    submitButton(
                      "Alternate Spending Data",
                      ColorManager.green,
                      () {},
                      width: 300,
                    ),
                    submitButton(
                      "Alternate Spending Offers",
                      ColorManager.green,
                      () {},
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
