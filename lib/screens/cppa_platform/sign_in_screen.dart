import 'package:flutter/material.dart';
import 'package:iefunden/color.dart';
import 'package:iefunden/commons/buttons.dart';
import 'package:iefunden/commons/main_container.dart';
import 'package:iefunden/commons/password_textfield.dart';
import 'package:iefunden/commons/textfield.dart';
import 'package:iefunden/commons/title.dart';
import 'package:iefunden/controllers/cppa_platform/cppa_auth_controller.dart';
import 'package:iefunden/controllers/navigation_controller.dart';
import 'package:iefunden/providers/cppa_platform_provider.dart';
import 'package:provider/provider.dart';

class CPPASignInScreen extends StatelessWidget {
  const CPPASignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = CPPAAuthController();
    return Consumer<CPPAPlatformProvider>(builder: (context, provider, child) {
      return Stack(
        children: [
          MainContainer(
            body: Container(
              constraints: BoxConstraints(
                maxHeight: MediaQuery.of(context).size.height - 100,
              ),
              child: SingleChildScrollView(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const MainTitle(
                        "Welcome to C/PPA Platform",
                        fontSize: 24,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 40,
                          vertical: 30,
                        ),
                        child: Form(
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                              TextFieldBox(
                                label: "Company Name",
                                color: ColorManager.lightBlueShade,
                                controller: controller.companyName,
                                onChangeCallback: (value) {},
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              PasswordTextFieldBox(
                                label: "PIN",
                                controller: controller.pin,
                                onChangeCallback: (value) {},
                              ),
                              const SizedBox(
                                height: 50,
                              ),
                              submitButton(
                                "Log In",
                                ColorManager.navyBlue,
                                () => provider.signIn(),
                                fontSize: 16,
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  linkButton(
                                    "I Dont Have Account",
                                    ColorManager.navyBlue,
                                    () => {},
                                    underlineWidth: 150,
                                  ),
                                  submitButton(
                                    "Sign Up",
                                    ColorManager.navyBlue,
                                    () => NavigationController.goToCPPASignUp(),
                                    width: 100,
                                    fontSize: 14,
                                  ),
                                ],
                              ),
                            ])),
                      )
                    ]),
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
    });
  }
}
