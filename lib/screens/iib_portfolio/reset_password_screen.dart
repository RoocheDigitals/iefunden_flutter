import 'package:flutter/material.dart';
import 'package:iefunden/color.dart';
import 'package:iefunden/commons/buttons.dart';
import 'package:iefunden/commons/main_container.dart';
import 'package:iefunden/commons/password_textfield.dart';
import 'package:iefunden/commons/title.dart';
import 'package:iefunden/controllers/iib_portfolio/iib_portfolio_auth_controller.dart';
import 'package:iefunden/providers/iib_portfolio_provider.dart';
import 'package:provider/provider.dart';

class IIBPortfolioResetPasswordScreen extends StatelessWidget {
  const IIBPortfolioResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = IIBPortfolioAuthController();
    return Consumer<IIBPortfolioProvider>(builder: (context, provider, child) {
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
                        "Welcome to IIB Reset Password",
                        fontSize: 18,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 10),
                        child: Form(
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                              PasswordTextFieldBox(
                                label: "Old PIN",
                                controller: controller.oldPin,
                                onChangeCallback: (value) {},
                              ),
                              PasswordTextFieldBox(
                                label: "New PIN",
                                controller: controller.newPin,
                                onChangeCallback: (value) {},
                              ),
                              PasswordTextFieldBox(
                                label: "Confirm New PIN",
                                controller: controller.confirmPin,
                                onChangeCallback: (value) {},
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              submitButton(
                                "Update Password",
                                ColorManager.navyBlue,
                                () => provider.resetPassword(),
                                fontSize: 14,
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
