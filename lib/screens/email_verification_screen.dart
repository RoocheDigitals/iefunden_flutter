import 'package:flutter/material.dart';
import 'package:iefunden/color.dart';
import 'package:iefunden/commons/buttons.dart';
import 'package:iefunden/commons/error_text.dart';
import 'package:iefunden/commons/main_container.dart';
import 'package:iefunden/commons/title.dart';
import 'package:iefunden/controllers/email_verify_controller.dart';
import 'package:iefunden/providers/email_verify_provider.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:provider/provider.dart';

class EmailVerificationScreen extends StatelessWidget {
  const EmailVerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = EmailVerificationController();
    return Consumer<EmailVerificationProvider>(
        builder: (context, provider, child) {
      return Stack(
        children: [
          MainContainer(
            body: Container(
              constraints: BoxConstraints(
                maxHeight: MediaQuery.of(context).size.height - 100,
              ),
              child: SingleChildScrollView(
                child: provider.state == EmailVerificationState.LANDINGVIEW
                    ? _welcomeWidget(provider, controller)
                    : _otpForm(provider, controller),
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

  Widget _welcomeWidget(EmailVerificationProvider provider,
      EmailVerificationController controller) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        MainTitle(
          provider.title,
          fontSize: 18,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 50.0),
          child: Text(
            "Verification code\non your Email",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const Text(
          "We will send you verification\ncode on your Email id.",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 60.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              submitButton(
                "Continue",
                ColorManager.navyBlue,
                () {
                  provider.state = EmailVerificationState.OTPVIEW;
                  provider.startTimer();
                },
                fontSize: 16,
                width: 200,
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget _otpForm(EmailVerificationProvider provider,
      EmailVerificationController controller) {
    return Column(
      children: [
        MainTitle(
          provider.title,
          fontSize: 18,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 40,
            vertical: 30,
          ),
          child: Text(
            "Enter the 4 digit code we sent\nyou via email to continue",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
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
                Row(
                  children: [
                    Expanded(
                      child: OTPTextField(
                        controller: controller.verificationPin,
                        length: 4,
                        fieldWidth: 40,
                        otpFieldStyle: OtpFieldStyle(
                          borderColor: Colors.black,
                          focusBorderColor: Colors.black,
                          enabledBorderColor: Colors.black,
                          disabledBorderColor: Colors.black,
                          errorBorderColor: Colors.black,
                        ),
                        style: const TextStyle(fontSize: 48),
                        textFieldAlignment: MainAxisAlignment.spaceAround,
                        fieldStyle: FieldStyle.underline,
                        onCompleted: (pin) {
                          provider.verifyEmail();
                        },
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 30,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "code expires in ",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        ": ${provider.remainingTimeString}",
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      ErrorText(provider.message),
                    ],
                  ),
                ),
                submitButton(
                  "Send",
                  ColorManager.navyBlue,
                  () => provider.verifyEmail(),
                  fontSize: 16,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 10,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Didn’t get the code? ",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: HexColor("#637C8D"),
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: const Text(
                          "Resend code",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
