import 'package:flutter/material.dart';
import 'package:iefunden/models/cppa/responses.dart';
import 'package:iefunden/models/iib/request.dart';
import 'package:iefunden/services/iib_portfolio.dart';

class IIBPortfolioAuthController {
  static final IIBPortfolioAuthController _singleton =
      IIBPortfolioAuthController._internal();

  factory IIBPortfolioAuthController() {
    return _singleton;
  }

  IIBPortfolioAuthController._internal();

  final _iibService = IIBService();
  TextEditingController companyName = TextEditingController();
  TextEditingController companyAddress = TextEditingController();
  TextEditingController contactPerson = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController mobile = TextEditingController();
  TextEditingController pin = TextEditingController();
  TextEditingController logo = TextEditingController();

  Future<CPPASignInResponseModel> signInUser() async {
    var request = IIBSignInRequestModel(
      email.text,
      pin.text,
    );
    final result = await _iibService.signIn(request);
    final response = CPPASignInResponseModel.fromJson(result);
    return response;
  }

  Future<CPPASignUpResponseModel> signUpUser() async {
    var request = IIBSignUpRequestModel(
      email.text,
      pin.text,
      "",
      "",
      mobile.text,
    );
    final result = await _iibService.signUp(request);
    final response = CPPASignUpResponseModel.fromJson(result);
    return response;
  }
}
