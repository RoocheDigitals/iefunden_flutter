import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iefunden/color.dart';
import 'package:iefunden/commons/buttons.dart';
import 'package:iefunden/commons/main_container.dart';
import 'package:iefunden/commons/title.dart';

class IIBPortfolioDashboardTierTwoScreen extends StatelessWidget {
  const IIBPortfolioDashboardTierTwoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MainContainer(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const MainTitle(
            "Welcome to Tier -2 Investments Dashboard",
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
                      "Decent Housing Mortgage",
                      ColorManager.red,
                      () {},
                      width: 300,
                    ),
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
