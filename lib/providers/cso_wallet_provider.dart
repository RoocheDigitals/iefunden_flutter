import 'package:flutter/material.dart';
import 'package:iefunden/controllers/cso_wallet/cso_wallet_auth_controller.dart';
import 'package:iefunden/controllers/navigation_controller.dart';

class CSOWalletProvider extends ChangeNotifier {
  late CSOWalletAuthController _authController;

  CSOWalletProvider() {
    _authController = CSOWalletAuthController();
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
      NavigationController.goToWalletDashboardMenu();
    }
    message = result.message;
    isLoading = false;
  }

  void resetPassword() async {
    isLoading = true;
    isLoading = false;
  }
}
