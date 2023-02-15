import 'package:flutter/material.dart';
import 'package:iefunden/color.dart';
import 'package:iefunden/commons/buttons.dart';
import 'package:iefunden/commons/error_text.dart';
import 'package:iefunden/commons/main_container.dart';
import 'package:iefunden/commons/password_textfield.dart';
import 'package:iefunden/commons/textfield.dart';
import 'package:iefunden/commons/title.dart';
import 'package:iefunden/controllers/cso_wallet/cso_wallet_auth_controller.dart';
import 'package:iefunden/controllers/navigation_controller.dart';
import 'package:iefunden/providers/cso_wallet_provider.dart';
import 'package:provider/provider.dart';

class CsoWalletSignInScreen extends StatelessWidget {
  const CsoWalletSignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = CSOWalletAuthController();
    return Consumer<CSOWalletProvider>(builder: (context, provider, child) {
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
                        "Welcome to CSO Wallet",
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
                                label: "Username",
                                color: ColorManager.lightBlueShade,
                                controller: controller.loginfullName,
                                onChangeCallback: (value) {},
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              PasswordTextFieldBox(
                                label: "PIN",
                                controller: controller.loginPin,
                                onChangeCallback: (value) {},
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    ErrorText(provider.message),
                                  ],
                                ),
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
                                    () =>
                                        NavigationController.goToWalletSignUp(),
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
