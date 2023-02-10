import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iefunden/color.dart';
import 'package:iefunden/commons/radial_container.dart';
import 'package:iefunden/controllers/navigation_controller.dart';
import 'package:iefunden/commons/constants.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: ColorManager.gradientBlue,
        )),
        child: ContainerWRadial(
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * .15,
                vertical: MediaQuery.of(context).size.height * .05),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SvgPicture.asset(
                      ("assets/images/menu.svg"),
                      semanticsLabel: 'iefunded menu',
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 100.0, top: 200.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        APP_TITLE,
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    ],
                  ),
                ),
                TextButton(
                  onPressed: () => NavigationController.goToCPA(),
                  child: const Text("C/PPA Platform"),
                ),
                TextButton(
                  onPressed: () => NavigationController.goToWallet(),
                  child: const Text("CSO Wallet"),
                ),
                TextButton(
                  onPressed: () => NavigationController.goToIIBPortfolio(),
                  child: const Text("IIB Portfolio"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
