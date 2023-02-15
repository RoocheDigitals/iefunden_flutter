import 'package:flutter/material.dart';
import 'package:iefunden/controllers/iib_portfolio/iib_portfolio_auth_controller.dart';
import 'package:iefunden/controllers/navigation_controller.dart';

class IIBPortfolioProvider extends ChangeNotifier {
  late IIBPortfolioAuthController _authController;

  IIBPortfolioProvider() {
    _authController = IIBPortfolioAuthController();
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

  void signIn() async {
    isLoading = true;
    final response = await _authController.signInUser();
    print(response);
    NavigationController.goToIIBDashboardMenu();
    message = response.message;
    isLoading = false;
  }

  void resetPassword() async {
    isLoading = true;
    isLoading = false;
  }
}
