import 'package:iefunden/main.dart';
import 'package:iefunden/router.dart';

class LandingController {
  static getStartedOnPress() {
    navigatorKey.currentState?.pushNamed(GetStartedScreenRoute);
  }

  static cppaSignUpOnPress() {
    navigatorKey.currentState?.pushNamed(CPPASignUpScreenRoute);
  }

  static cppaSignInOnPress() {
    navigatorKey.currentState?.pushNamed(CPPASignInScreenRoute);
  }
}
