import 'package:flutter/material.dart';
import 'package:iefunden/controllers/cppa_platform/cppa_auth_controller.dart';

class CPPAPlatformProvider extends ChangeNotifier {
  late CPPAAuthController _authController;

  CPPAPlatformProvider() {
    _authController = CPPAAuthController();
  }

  String _message = "";
  get message => _message;
  set message(val) {
    _message = val;
    notifyListeners();
  }

  bool _isLoading = false;
  get isLoading => _isLoading;
  set isLoading(val) {
    _isLoading = val;
    notifyListeners();
  }

  void signUp() async {
    isLoading = true;
    await _authController.signUpUser();
    isLoading = false;
  }

  // void signIn() async {
  //   isLoading = true;
  //   final response = await _signInController.signInUser();
  //   if(response.) {
  //     isLoading = false;
  //   }
  // }

  void signIn() async {
    isLoading = true;
    final response = await _authController.signInUser();
    print(response);
    message = response.message;
    isLoading = false;
  }
}