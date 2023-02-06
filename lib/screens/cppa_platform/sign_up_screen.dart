import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iefunden/commons/radial_container.dart';
import 'package:iefunden/commons/utilities.dart';

class CPPASignUpScreen extends StatelessWidget {
  const CPPASignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: HexColor("#F8F6FE"),
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
                        "Iefunden",
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    ],
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  style: Theme.of(context).textButtonTheme.style?.copyWith(
                        backgroundColor: MaterialStateProperty.all(
                          Colors.transparent,
                        ),
                        side: MaterialStateProperty.all(
                          const BorderSide(
                            color: Colors.white,
                          ),
                        ),
                        textStyle: MaterialStateProperty.all(
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
                  onPressed: () {},
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
