import 'package:flutter/material.dart';
import 'package:iefunden/models/cppa/request.dart';
import 'package:iefunden/models/cppa/responses.dart';
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
    var request = CPPASignInRequestModel(
      email.text,
      pin.text,
    );
    final result = await cppaService.signIn(request);
    final response = CPPASignInResponseModel.fromJson(result);
    return response;
  }

  Future<CPPASignUpResponseModel> signUpUser() async {
    var request = CPPASignUpRequestModel(
      email.text,
      pin.text,
      "",
      "",
      mobile.text,
    );
    final result = await cppaService.signUp(request);
    final response = CPPASignUpResponseModel.fromJson(result);
    return response;
  }
}
