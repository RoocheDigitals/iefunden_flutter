import 'package:iefunden/main.dart';
import 'package:iefunden/router.dart';

class GetStartedController {
  static cppaPlatformOnPress() {
    navigatorKey.currentState?.pushNamed(CPPALandingScreenRoute);
  }

  static csoWalletOnPress() {
    navigatorKey.currentState?.pushNamed(GetStartedScreenRoute);
  }

  static iibPortfolioOnPress() {
    navigatorKey.currentState?.pushNamed(GetStartedScreenRoute);
  }
}
