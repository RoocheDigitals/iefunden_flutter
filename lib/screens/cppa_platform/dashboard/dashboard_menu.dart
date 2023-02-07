import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iefunden/color.dart';
import 'package:iefunden/commons/buttons.dart';
import 'package:iefunden/commons/radial_container.dart';
import 'package:iefunden/controllers/navigation_controller.dart';

class CPPADashboardMenuScreen extends StatelessWidget {
  const CPPADashboardMenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: ColorManager.creamWhite,
        child: ContainerWRadial(
          color: ColorManager.navyBlue,
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
                      color: ColorManager.navyBlue,
                    ),
                    Text(
                      "Iefunden",
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: ColorManager.navyBlue,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    const SizedBox()
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 100.0, top: 150.0),
                  child: Text(
                    "Welcome to\nC/PPA Platform",
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          fontSize: 32,
                          color: ColorManager.navyBlue,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
                submitButton(
                  "Floatation of Slots",
                  ColorManager.navyBlue,
                  () => NavigationController.goToCPADashboardFloatation(),
                ),
                submitButton(
                  "Bidding for Slots",
                  ColorManager.navyBlue,
                  () => NavigationController.goToCPADashboardBidding(),
                ),
                submitButton(
                  "Listing on Slots",
                  ColorManager.navyBlue,
                  () => NavigationController.goToCPADashboardListing(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
