import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iefunden/color.dart';
import 'package:iefunden/commons/buttons.dart';
import 'package:iefunden/commons/radial_container.dart';
import 'package:iefunden/commons/textfield.dart';
import 'package:iefunden/controllers/iib_portfolio/iib_portfolio_signup_controller.dart';
import 'package:iefunden/commons/constants.dart';

class IIBPortfolioSignUpScreen extends StatelessWidget {
  const IIBPortfolioSignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Widget uploadBox() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Upload Logo",
            style: Theme.of(context)
                .textTheme
                .bodyMedium
                ?.copyWith(color: Colors.black, fontSize: 14),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextFormField(
                    scrollPadding: const EdgeInsets.only(bottom: 300),
                    decoration: InputDecoration(
                      isDense: true,
                      contentPadding: const EdgeInsets.all(5),
                      fillColor: ColorManager.lightRedShade,
                      filled: true,
                      border: InputBorder.none,
                    ),
                  ),
                ),
                Expanded(
                    child: submitButton("Browse ", ColorManager.red, () {})),
              ],
            ),
          )
        ],
      );
    }

    var controller = IIBPortfolioSignUpController();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        color: ColorManager.creamWhite,
        child: ContainerWRadial(
          color: ColorManager.red,
          child: Padding(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.width * .10,
              right: MediaQuery.of(context).size.height * .05,
              left: MediaQuery.of(context).size.height * .05,
            ),
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
                Container(
                  constraints: BoxConstraints(
                    maxHeight: MediaQuery.of(context).size.height - 100,
                  ),
                  child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: KeyboardVisibilityBuilder(
                        builder: (context, isKeyboardVisible) {
                      return Padding(
                        padding: EdgeInsets.only(
                            bottom: !isKeyboardVisible ? 0 : 200),
                        child: Form(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    bottom: 20.0, top: 40),
                                child: Text(
                                  "Welcome to \nIIB Portfolio",
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleLarge
                                      ?.copyWith(
                                        color: ColorManager.red,
                                        fontSize: 25.0,
                                        fontWeight: FontWeight.w900,
                                      ),
                                ),
                              ),
                              TextFieldBox(
                                label: "Full Name",
                                color: ColorManager.lightRedShade,
                                controller: controller.fullName,
                                onChangeCallback: (value) {},
                              ),
                              TextFieldBox(
                                label: "Email",
                                color: ColorManager.lightRedShade,
                                controller: controller.email,
                                onChangeCallback: (value) {},
                              ),
                              TextFieldBox(
                                label: "Password",
                                color: ColorManager.lightRedShade,
                                controller: controller.password,
                                onChangeCallback: (value) {},
                              ),
                              TextFieldBox(
                                label: "Mobile No.",
                                color: ColorManager.lightRedShade,
                                controller: controller.mobile,
                                onChangeCallback: (value) {},
                              ),
                              TextFieldBox(
                                label: "Type of Service",
                                color: ColorManager.lightRedShade,
                                controller: controller.typeOfService,
                                onChangeCallback: (value) {},
                              ),
                              uploadBox(),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 10.0),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: submitButton(
                                          "Sign Up", ColorManager.red, () {}),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "I already have an Account  ",
                                    style:
                                        Theme.of(context).textTheme.bodySmall,
                                  ),
                                  Text(
                                    "Sign In",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall
                                        ?.copyWith(
                                          color: ColorManager.red,
                                        ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      );
                    }),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
