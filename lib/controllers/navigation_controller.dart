import 'package:iefunden/main.dart';
import 'package:iefunden/router.dart';

class NavigationController {
  static goToGetStarted() {
    navigatorKey.currentState?.pushNamed(GetStartedScreenRoute);
  }

  static goToVerifyEmail() {
    navigatorKey.currentState?.pushNamed(EmailVerificationRoute);
  }

  ///cppa
  static goToCPPASignUp() {
    navigatorKey.currentState?.pushNamed(CPPASignUpScreenRoute);
  }

  static goToCPPASignIn() {
    navigatorKey.currentState?.pushNamed(CPPASignInScreenRoute);
  }

  static goToCPPAResetPassword() {
    navigatorKey.currentState?.pushNamed(CPPAResetPasswordScreenRoute);
  }

  static goToCPPADashboardMenu() {
    navigatorKey.currentState?.pushNamed(CPPADashboardMenuScreenRoute);
  }

  static goToCPPADashboardFloatation() {
    navigatorKey.currentState?.pushNamed(CPPADashboardFloatationScreenRoute);
  }

  static goToCPPADashboardBidding() {
    navigatorKey.currentState?.pushNamed(CPPADashboardBiddingScreenRoute);
  }

  static goToCPPADashboardListing() {
    navigatorKey.currentState?.pushNamed(CPPADashboardListingScreenRoute);
  }

  static goToCPPA() {
    navigatorKey.currentState?.pushNamed(CPPALandingScreenRoute);
  }

  /// wallet
  static goToWalletSignUp() {
    navigatorKey.currentState?.pushNamed(CsoWalletSignUpScreenRoute);
  }

  static goToWalletSignIn() {
    navigatorKey.currentState?.pushNamed(CsoWalletSignInScreenRoute);
  }

  static goToWalletResetPassword() {
    navigatorKey.currentState?.pushNamed(CsoWalletResetPasswordScreenRoute);
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

  static goToIIBResetPassword() {
    navigatorKey.currentState?.pushNamed(IIBPortfolioResetPasswordScreenRoute);
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
