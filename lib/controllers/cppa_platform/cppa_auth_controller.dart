import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';
import 'package:iefunden/models/responses.dart';
import 'package:iefunden/services/cppa.dart';

class CPPAAuthController {
  static final CPPAAuthController _singleton = CPPAAuthController._internal();

  factory CPPAAuthController() {
    return _singleton;
  }

  CPPAAuthController._internal();

  final cppaService = CPPAService();
  TextEditingController companyName = TextEditingController();
  TextEditingController companyAddress = TextEditingController();
  TextEditingController contactPerson = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController mobile = TextEditingController();
  TextEditingController pin = TextEditingController();
  TextEditingController logo = TextEditingController();

  Future<CPPASignInResponseModel> signInUser() async {
    final result = await cppaService.signIn(companyName.text, pin.text);
    final response = CPPASignInResponseModel.fromJson(result);
    return response;
  }

  Future<void> signUpUser() async {
    try {
      // final result = await cppaService.signIn();
      // print(result);
      // final userAttributes = <CognitoUserAttributeKey, String>{
      //   CognitoUserAttributeKey.email: 'ritzjumola@gmail.com',
      //   CognitoUserAttributeKey.phoneNumber: '+15559101234',
      //   // additional attributes as needed
      // };
      // final result = await Amplify.Auth.signUp(
      //   username: 'ritzjumola',
      //   password: '>tkZs8MU',
      //   options: CognitoSignUpOptions(userAttributes: userAttributes),
      // );
      // print(result.isSignUpComplete);
    } on AuthException catch (e) {
      print(e.message);
    }
  }

  // Future<void> confirmUser() async {
  //   try {
  //     final result = await Amplify.Auth.confirmSignUp(
  //         username: data.username, confirmationCode: data.confirmCode);
  //   } on AuthException catch (e) {
  //     safePrint(e.message);
  //   }
  // }
}
