import 'package:flutter/material.dart';
import 'package:iefunden/models/cso/request.dart';
import 'package:iefunden/models/cso/responses.dart';
import 'package:iefunden/services/cso.dart';

class CSOWalletAuthController {
  static final CSOWalletAuthController _singleton =
      CSOWalletAuthController._internal();

  factory CSOWalletAuthController() {
    return _singleton;
  }

  CSOWalletAuthController._internal();

  final _csoService = CSOService();
  // login
  TextEditingController loginfullName = TextEditingController();
  TextEditingController loginPin = TextEditingController();

  // registration
  TextEditingController fullName = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController typeOfService = TextEditingController();
  TextEditingController mobile = TextEditingController();
  TextEditingController pin = TextEditingController();
  TextEditingController logo = TextEditingController();

  // reset password text controllers
  TextEditingController oldPin = TextEditingController();
  TextEditingController newPin = TextEditingController();
  TextEditingController confirmPin = TextEditingController();

  Future<CSOSignInResponseModel> signInUser() async {
    var request = CSOSignInRequestModel(
      email.text,
      pin.text,
    );
    final result = await _csoService.signIn(request);
    final response = CSOSignInResponseModel.fromJson(result);
    return response;
  }

  Future<CSOSignUpResponseModel> signUpUser() async {
    var request = CSOSignUpRequestModel(
      email.text,
      pin.text,
      "",
      "",
      mobile.text,
    );
    final result = await _csoService.signUp(request);
    final response = CSOSignUpResponseModel.fromJson(result);
    return response;
  }
}
