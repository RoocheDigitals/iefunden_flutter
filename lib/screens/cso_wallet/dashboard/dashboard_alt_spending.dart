import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iefunden/color.dart';
import 'package:iefunden/commons/buttons.dart';
import 'package:iefunden/commons/constants.dart';
import 'package:iefunden/commons/radial_container.dart';

class CsoWalletDashboardAltSpendingScreen extends StatelessWidget {
  const CsoWalletDashboardAltSpendingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: ColorManager.creamWhite,
        child: ContainerWRadial(
          color: ColorManager.green,
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * .15,
                vertical: MediaQuery.of(context).size.height * .05),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset(
                      ("assets/images/menu.svg"),
                      semanticsLabel: 'iefunded menu',
                      color: ColorManager.green,
                    ),
                    Text(
                      APP_TITLE,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: ColorManager.green,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    const SizedBox()
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 150.0, top: 150.0),
                  child: Text(
                    "Alternated\nSpending",
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          fontSize: 32,
                          color: ColorManager.green,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
                submitButton(
                    "Alternate Spending Items", ColorManager.green, () {}),
                submitButton(
                    "Alternate Spending Data", ColorManager.green, () {}),
                submitButton(
                    "Alternate Spending Offers", ColorManager.green, () {})
              ],
            ),
          ),
        ),
      ),
    );
  }
}
