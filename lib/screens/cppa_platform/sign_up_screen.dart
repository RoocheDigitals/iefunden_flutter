import 'package:flutter/material.dart';
import 'package:iefunden/color.dart';
import 'package:iefunden/commons/buttons.dart';
import 'package:iefunden/commons/main_container.dart';
import 'package:iefunden/commons/password_textfield.dart';
import 'package:iefunden/commons/textfield.dart';
import 'package:iefunden/commons/title.dart';
import 'package:iefunden/commons/upload_textfield.dart';
import 'package:iefunden/controllers/cppa_platform/cppa_auth_controller.dart';
import 'package:iefunden/controllers/navigation_controller.dart';
import 'package:iefunden/providers/cppa_platform_provider.dart';
import 'package:provider/provider.dart';

class CPPASignUpScreen extends StatelessWidget {
  const CPPASignUpScreen({super.key});

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
                        fontSize: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 10),
                        child: Form(
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                              TextFieldBox(
                                label: "Company Name",
                                color: ColorManager.lightBlueShade,
                                controller: controller.companyName,
                                onChangeCallback: (value) {},
                              ),
                              TextFieldBox(
                                label: "Company Address",
                                color: ColorManager.lightBlueShade,
                                controller: controller.companyAddress,
                                onChangeCallback: (value) {},
                              ),
                              TextFieldBox(
                                label: "Contact Person",
                                color: ColorManager.lightBlueShade,
                                controller: controller.contactPerson,
                                onChangeCallback: (value) {},
                              ),
                              TextFieldBox(
                                label: "Email",
                                color: ColorManager.lightBlueShade,
                                controller: controller.email,
                                onChangeCallback: (value) {},
                              ),
                              TextFieldBox(
                                label: "Mobile No.",
                                color: ColorManager.lightBlueShade,
                                controller: controller.mobile,
                                onChangeCallback: (value) {},
                              ),
                              PasswordTextFieldBox(
                                label: "Create PIN",
                                controller: controller.pin,
                                onChangeCallback: (value) {},
                              ),
                              UploadTextFieldBox(
                                label: "Upload Logo",
                                controller: controller.logo,
                                onChangeCallback: (value) {},
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  linkButton(
                                    "Forgot Password",
                                    ColorManager.navyBlue,
                                    () => null,
                                  ),
                                  submitButton(
                                    "Sign Up",
                                    ColorManager.navyBlue,
                                    () => provider.signUp(),
                                    width: 100,
                                    fontSize: 14,
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  linkButton(
                                    "I already Have Account",
                                    ColorManager.navyBlue,
                                    () => {},
                                    underlineWidth: 150,
                                  ),
                                  submitButton(
                                    "Log In",
                                    ColorManager.navyBlue,
                                    () => NavigationController.goToCPPASignIn(),
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
