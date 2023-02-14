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
    NavigationController.goToWalletDashboardMenu();
    message = response.message;
    isLoading = false;
  }
}
