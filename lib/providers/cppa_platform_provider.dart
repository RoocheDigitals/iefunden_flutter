import 'package:flutter/material.dart';
import 'package:iefunden/controllers/cppa_platform/cppa_signin_controller.dart';
import 'package:iefunden/controllers/cppa_platform/cppa_signup_controller.dart';

class CPPAPlatformProvider extends ChangeNotifier {
  late CPPASignInController _signInController;
  late CPPASignUpController _signUpController;

  CPPAPlatformProvider() {
    _signInController = CPPASignInController();
    _signUpController = CPPASignUpController();
  }

  bool _isSigningIn = false;
  get isSigningIn => _isSigningIn;
  set isSigningIn(val) {
    _isSigningIn = val;
    notifyListeners();
  }

  bool _isSigningUp = false;
  get isSigningUp => _isSigningUp;
  set isSigningUp(val) {
    _isSigningUp = val;
    notifyListeners();
  }

  bool _isConfirmSigningIn = false;
  get isConfirmSigningIn => _isConfirmSigningIn;
  set isConfirmSigningIn(val) {
    _isConfirmSigningIn = val;
    notifyListeners();
  }

  void signUp() async {
    print("${_signUpController.companyName.text}object");

    isSigningUp = true;
    await _signUpController.signUpUser();
    isSigningUp = false;
  }
}
