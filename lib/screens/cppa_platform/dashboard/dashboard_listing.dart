import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iefunden/commons/buttons.dart';
import 'package:iefunden/commons/main_container.dart';
import 'package:iefunden/commons/title.dart';

class CPPADashboardListingScreen extends StatelessWidget {
  const CPPADashboardListingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MainContainer(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const MainTitle(
            "Welcome to Listing Dashboard",
            fontSize: 20,
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
                      "Sales/Purchase of Allotment",
                      Colors.white,
                      () => null,
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
