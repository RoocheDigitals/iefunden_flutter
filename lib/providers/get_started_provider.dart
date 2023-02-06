import 'package:flutter/material.dart';
import 'package:iefunden/main.dart';
import 'package:iefunden/router.dart';

class GetStartedProvider extends ChangeNotifier {
  cppaPlatformOnPress() {
    navigatorKey.currentState?.pushNamed(CPPALandingScreenRoute);
  }

  csoWalletOnPress() {
    navigatorKey.currentState?.pushNamed(GetStartedScreenRoute);
  }

  iibPortfolioOnPress() {
    navigatorKey.currentState?.pushNamed(GetStartedScreenRoute);
  }
}
