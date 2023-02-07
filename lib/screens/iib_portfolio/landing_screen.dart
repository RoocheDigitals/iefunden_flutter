import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iefunden/color.dart';
import 'package:iefunden/commons/radial_container.dart';
import 'package:iefunden/controllers/navigation_controller.dart';

class IIBPortfolioLandingScreen extends StatelessWidget {
  const IIBPortfolioLandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: ColorManager.red,
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset(
                      ("assets/images/menu.svg"),
                      semanticsLabel: 'iefunded menu',
                      color: ColorManager.creamWhite,
                    ),
                    Text(
                      "Iefunden",
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: ColorManager.creamWhite,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    const SizedBox()
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 100.0, top: 200.0),
                  child: Text(
                    "Welcome to\nIIB Portfolio",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ),
                TextButton(
                  onPressed: () => NavigationController.goToIIBSignIn(),
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
                  onPressed: () => NavigationController.goToIIBSignUp(),
                  style: Theme.of(context).textButtonTheme.style?.copyWith(
                        textStyle: MaterialStatePropertyAll(
                          TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            foreground: Paint()..color = ColorManager.red,
                          ),
                        ),
                      ),
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
