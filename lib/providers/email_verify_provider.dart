import 'dart:async';

import 'package:flutter/material.dart';
import 'package:iefunden/controllers/email_verify_controller.dart';

enum EmailVerificationState { LANDINGVIEW, OTPVIEW }

class EmailVerificationProvider extends ChangeNotifier {
  late EmailVerificationController _controller;

  EmailVerificationProvider() {
    _controller = EmailVerificationController();
  }

  String _title = "";
  get title => _title;
  set title(val) {
    _title = val;
    initializeAll();
    notifyListeners();
  }

  int _remainingTimeSeconds = 120;
  String _remainingTimeString = "02:00";
  get remainingTimeString => _remainingTimeString;

  EmailVerificationState _state = EmailVerificationState.LANDINGVIEW;
  get state => _state;
  set state(val) {
    _state = val;
    notifyListeners();
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

  void initializeAll() {
    _state = EmailVerificationState.LANDINGVIEW;
    resetRemainingTime();
  }

  void resetRemainingTime() {
    _remainingTimeSeconds = 120;
    _remainingTimeString = "02:00";
  }

  void updateRemainingTime() {
    _remainingTimeSeconds--;
    int sec = _remainingTimeSeconds % 60;
    int min = (_remainingTimeSeconds / 60).floor();
    String minute = min.toString().length <= 1 ? "0$min" : "$min";
    String second = sec.toString().length <= 1 ? "0$sec" : "$sec";
    _remainingTimeString = "$minute:$second";
    notifyListeners();
  }

  void startTimer() {
    const oneSec = Duration(seconds: 1);
    Timer.periodic(
      oneSec,
      (Timer timer) {
        if (_remainingTimeSeconds == 0) {
          timer.cancel();
        } else {
          updateRemainingTime();
        }
      },
    );
  }

  void verifyEmail() async {
    isLoading = true;
    final result = await _controller.verifyUser();
    // if (!result) {
    //   NavigationController.goToCPPAVerifyEmail();
    // }
    message = result.message;
    isLoading = false;
  }
}
