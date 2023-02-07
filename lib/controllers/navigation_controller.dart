import 'package:iefunden/main.dart';
import 'package:iefunden/router.dart';

class NavigationController {
  static goToGetStarted() {
    navigatorKey.currentState?.pushNamed(GetStartedScreenRoute);
  }

  ///cppa
  static goToCPASignUp() {
    navigatorKey.currentState?.pushNamed(CPPASignUpScreenRoute);
  }

  static goToCPASignIn() {
    navigatorKey.currentState?.pushNamed(CPPASignInScreenRoute);
  }

  static goToCPADashboardMenu() {
    navigatorKey.currentState?.pushNamed(CPPADashboardMenuScreenRoute);
  }

  static goToCPADashboardFloatation() {
    navigatorKey.currentState?.pushNamed(CPPADashboardFloatationScreenRoute);
  }

  static goToCPADashboardBidding() {
    navigatorKey.currentState?.pushNamed(CPPADashboardBiddingScreenRoute);
  }

  static goToCPADashboardListing() {
    navigatorKey.currentState?.pushNamed(CPPADashboardListingScreenRoute);
  }

  static goToCPA() {
    navigatorKey.currentState?.pushNamed(CPPALandingScreenRoute);
  }

  /// wallet
  static goToWalletSignUp() {
    navigatorKey.currentState?.pushNamed(CsoWalletSignUpScreenRoute);
  }

  static goToWalletSignIn() {
    navigatorKey.currentState?.pushNamed(CsoWalletSignInScreenRoute);
  }

  static goToWalletDashboardMenu() {
    navigatorKey.currentState?.pushNamed(CsoWalletDashboardMenuScreenRoute);
  }

  static goToWalletDashboardPrefSpending() {
    navigatorKey.currentState
        ?.pushNamed(CsoWalletDashboardPrefSpendingScreenRoute);
  }

  static goToWalletDashboardAltSpending() {
    navigatorKey.currentState
        ?.pushNamed(CsoWalletDashboardAltSpendingScreenRoute);
  }

  static goToWalletDashboardColSpending() {
    navigatorKey.currentState
        ?.pushNamed(CsoWalletDashboardColSpendingScreenRoute);
  }

  static goToWallet() {
    navigatorKey.currentState?.pushNamed(CsoWalletLandingScreenRoute);
  }

  /// iib
  static goToIIBSignUp() {
    navigatorKey.currentState?.pushNamed(IIBPortfolioSignUpScreenRoute);
  }

  static goToIIBSignIn() {
    navigatorKey.currentState?.pushNamed(IIBPortfolioSignInScreenRoute);
  }

  static goToIIBDashboardMenu() {
    navigatorKey.currentState?.pushNamed(IIBPortfolioDashboardMenuScreenRoute);
  }

  static goToIIBDashboardTierOne() {
    navigatorKey.currentState
        ?.pushNamed(IIBPortfolioDashboardTierOneScreenRoute);
  }

  static goToIIBDashboardTierTwo() {
    navigatorKey.currentState
        ?.pushNamed(IIBPortfolioDashboardTierTwoScreenRoute);
  }

  static goToIIBDashboardTierThree() {
    navigatorKey.currentState
        ?.pushNamed(IIBPortfolioDashboardTierThreeScreenRoute);
  }

  static goToIIBPortfolio() {
    navigatorKey.currentState?.pushNamed(IIBPortfolioLandingScreenRoute);
  }
}
