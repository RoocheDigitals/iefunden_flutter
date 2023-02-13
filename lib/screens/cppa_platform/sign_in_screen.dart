import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iefunden/color.dart';
import 'package:iefunden/commons/buttons.dart';
import 'package:iefunden/commons/constants.dart';
import 'package:iefunden/commons/error_text.dart';
import 'package:iefunden/commons/radial_container.dart';
import 'package:iefunden/commons/textfield.dart';
import 'package:iefunden/controllers/cppa_platform/cppa_auth_controller.dart';
import 'package:iefunden/controllers/navigation_controller.dart';
import 'package:iefunden/providers/cppa_platform_provider.dart';
import 'package:provider/provider.dart';

class CPPASignInScreen extends StatelessWidget {
  const CPPASignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = CPPAAuthController();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Consumer<CPPAPlatformProvider>(builder: (context, provider, child) {
        return Stack(
          children: [
            Container(
              color: ColorManager.creamWhite,
              child: ContainerWRadial(
                color: ColorManager.navyBlue,
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
                            color: ColorManager.navyBlue,
                          ),
                          Text(
                            APP_TITLE,
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                  color: ColorManager.navyBlue,
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
                                        bottom: 20.0,
                                        top: 150,
                                      ),
                                      child: Text(
                                        "Welcome to \nC/PPA Platform",
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleLarge
                                            ?.copyWith(
                                              color: ColorManager.navyBlue,
                                              fontSize: 25.0,
                                              fontWeight: FontWeight.w900,
                                            ),
                                      ),
                                    ),
                                    TextFieldBox(
                                      label: "Company Name",
                                      color: ColorManager.lightBlueShade,
                                      controller: controller.companyName,
                                      onChangeCallback: (value) {
                                        provider.message = "";
                                      },
                                    ),
                                    TextFieldBox(
                                      label: "PIN",
                                      color: ColorManager.lightBlueShade,
                                      controller: controller.pin,
                                      onChangeCallback: (value) {
                                        provider.message = "";
                                      },
                                    ),
                                    ErrorText(provider.message),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 10.0),
                                      child: Row(
                                        children: [
                                          Expanded(
                                            child: submitButton(
                                              "Sign In",
                                              ColorManager.navyBlue,
                                              () => provider.signIn(),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Forgot Password",
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodySmall
                                                ?.copyWith(
                                                  color: ColorManager.navyBlue,
                                                ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "I don't have account  ",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodySmall,
                                        ),
                                        InkWell(
                                          onTap: () => NavigationController
                                              .goToCPASignUp(),
                                          child: Text(
                                            "Sign Up",
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodySmall
                                                ?.copyWith(
                                                  color: ColorManager.navyBlue,
                                                ),
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
            provider.isLoading
                ? Container(
                    color: Colors.black.withOpacity(0.5),
                    child: const Center(
                      child: CircularProgressIndicator(),
                    ),
                  )
                : const SizedBox()
          ],
        );
      }),
    );
  }
}
