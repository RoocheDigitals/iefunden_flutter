import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iefunden/commons/radial_container.dart';
import 'package:iefunden/commons/utilities.dart';
import 'package:iefunden/controllers/get_started_controller.dart';

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
          colors: [
            HexColor("#0D31D1"),
            HexColor("#132885"),
          ],
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
                        "Iefunden",
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    ],
                  ),
                ),
                TextButton(
                  onPressed: () => GetStartedController.cppaPlatformOnPress(),
                  child: const Text("C/PPA Platform"),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text("CSO Wallet"),
                ),
                TextButton(
                  onPressed: () {},
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
