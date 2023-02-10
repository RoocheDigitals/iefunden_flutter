import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';
import 'package:iefunden/models/cppa_user.dart';

class CPPASignUpController {
  static final CPPASignUpController _singleton =
      CPPASignUpController._internal();

  factory CPPASignUpController() {
    return _singleton;
  }

  CPPASignUpController._internal();

  TextEditingController companyName = TextEditingController();
  TextEditingController companyAddress = TextEditingController();
  TextEditingController contactPerson = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController mobile = TextEditingController();
  TextEditingController pin = TextEditingController();
  TextEditingController logo = TextEditingController();

  Future<void> signUpUser() async {
    try {
      final userAttributes = <CognitoUserAttributeKey, String>{
        CognitoUserAttributeKey.email: email.text,
        CognitoUserAttributeKey.phoneNumber: mobile.text,
        // additional attributes as needed
      };
      SignUpResult result = await Amplify.Auth.signUp(
        username: companyName.text,
        password: pin.text,
        options: CognitoSignUpOptions(userAttributes: userAttributes),
      );
      print(result.isSignUpComplete);
    } on AuthException catch (e) {
      print(e.message);
    }
  }

  Future<void> confirmUser(CPPAConfirmSignupModel data) async {
    try {
      final result = await Amplify.Auth.confirmSignUp(
          username: data.username, confirmationCode: data.confirmCode);
    } on AuthException catch (e) {
      safePrint(e.message);
    }
  }
}
