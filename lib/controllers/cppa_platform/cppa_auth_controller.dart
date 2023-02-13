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

  Future<CPPASignUpResponseModel> signUpUser() async {
    final result = await cppaService.signUp(companyName.text, pin.text);
    final response = CPPASignUpResponseModel.fromJson(result);
    return response;
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
