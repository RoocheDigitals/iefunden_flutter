import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iefunden/color.dart';
import 'package:iefunden/commons/buttons.dart';
import 'package:iefunden/commons/radial_container.dart';
import 'package:iefunden/commons/constants.dart';

class IIBPortfolioDashboardTierThreeScreen extends StatelessWidget {
  const IIBPortfolioDashboardTierThreeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: ColorManager.creamWhite,
        child: ContainerWRadial(
          color: ColorManager.red,
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
                      color: ColorManager.red,
                    ),
                    Text(
                      APP_TITLE,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: ColorManager.red,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    const SizedBox()
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 150.0, top: 150.0),
                  child: Text(
                    "Tier 3\nInvestments",
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          fontSize: 32,
                          color: ColorManager.red,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
                submitButton(
                    "Comprehensive Health Care", ColorManager.red, () {}),
                submitButton(
                    "Productive Education  Bursary", ColorManager.red, () {}),
                submitButton(
                    "Befitting Retirement Pension", ColorManager.red, () {})
              ],
            ),
          ),
        ),
      ),
    );
  }
}
