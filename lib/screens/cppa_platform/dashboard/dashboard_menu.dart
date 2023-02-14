import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iefunden/commons/buttons.dart';
import 'package:iefunden/commons/main_container.dart';
import 'package:iefunden/commons/title.dart';
import 'package:iefunden/controllers/navigation_controller.dart';

class CPPADashboardMenuScreen extends StatelessWidget {
  const CPPADashboardMenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MainContainer(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const MainTitle(
            "Welcome to C/PPA Platform",
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
                      "Floatation of Slots",
                      Colors.white,
                      () => NavigationController.goToCPPADashboardFloatation(),
                    ),
                    submitButton(
                      "Bidding for Slots",
                      Colors.white,
                      () => NavigationController.goToCPPADashboardBidding(),
                    ),
                    submitButton(
                      "Listing on Slots",
                      Colors.white,
                      () => NavigationController.goToCPPADashboardListing(),
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
