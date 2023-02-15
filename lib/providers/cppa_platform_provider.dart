import 'package:flutter/material.dart';
import 'package:iefunden/controllers/cppa_platform/cppa_auth_controller.dart';
import 'package:iefunden/controllers/navigation_controller.dart';

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
    final result = await _authController.signUpUser();
    if (!result.userConfirmed) {}
    message = result.message;
    isLoading = false;
  }

  void signIn() async {
    isLoading = true;
    final result = await _authController.signInUser();
    if (result.accessToken.isNotEmpty) {
      NavigationController.goToCPPADashboardMenu();
    }
    message = result.message;
    isLoading = false;
  }

  void resetPassword() async {
    isLoading = true;
    isLoading = false;
  }
}
