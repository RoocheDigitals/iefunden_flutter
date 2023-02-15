import 'package:flutter/material.dart';
import 'package:iefunden/models/iib/request.dart';
import 'package:iefunden/models/iib/responses.dart';
import 'package:iefunden/services/iib_portfolio.dart';

class IIBPortfolioAuthController {
  static final IIBPortfolioAuthController _singleton =
      IIBPortfolioAuthController._internal();

  factory IIBPortfolioAuthController() {
    return _singleton;
  }

  IIBPortfolioAuthController._internal();

  final _iibService = IIBService();
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

  Future<IIBSignInResponseModel> signInUser() async {
    var request = IIBSignInRequestModel(
      email.text,
      pin.text,
    );
    final result = await _iibService.signIn(request);
    final response = IIBSignInResponseModel.fromJson(result);
    return response;
  }

  Future<IIBSignUpResponseModel> signUpUser() async {
    var request = IIBSignUpRequestModel(
      email.text,
      pin.text,
      "",
      "",
      mobile.text,
    );
    final result = await _iibService.signUp(request);
    final response = IIBSignUpResponseModel.fromJson(result);
    return response;
  }
}
