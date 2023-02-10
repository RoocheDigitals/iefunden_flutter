import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iefunden/color.dart';
import 'package:iefunden/commons/constants.dart';
import 'package:iefunden/commons/radial_container.dart';
import 'package:iefunden/controllers/navigation_controller.dart';

class CPPALandingScreen extends StatelessWidget {
  const CPPALandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: ColorManager.navyBlue,
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
                  onPressed: () => NavigationController.goToCPASignIn(),
                  style: Theme.of(context).textButtonTheme.style?.copyWith(
                        backgroundColor: const MaterialStatePropertyAll(
                          Colors.transparent,
                        ),
                        side: const MaterialStatePropertyAll(
                          BorderSide(
                            color: Colors.white,
                          ),
                        ),
                        textStyle: MaterialStatePropertyAll(
                          TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            foreground: Paint()..color = Colors.white,
                          ),
                        ),
                      ),
                  child: const Text("Sign In"),
                ),
                TextButton(
                  onPressed: () => NavigationController.goToCPASignUp(),
                  child: const Text("Sign Up"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
