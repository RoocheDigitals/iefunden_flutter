import 'package:flutter/material.dart';
import 'package:iefunden/screens/cppa_platform/dashboard/dashboard_bidding.dart';
import 'package:iefunden/screens/cppa_platform/dashboard/dashboard_floatation.dart';
import 'package:iefunden/screens/cppa_platform/dashboard/dashboard_listing.dart';
import 'package:iefunden/screens/cppa_platform/dashboard/dashboard_menu.dart';
import 'package:iefunden/screens/cppa_platform/landing_screen.dart';
import 'package:iefunden/screens/cppa_platform/reset_password_screen.dart';
import 'package:iefunden/screens/cppa_platform/sign_in_screen.dart';
import 'package:iefunden/screens/cppa_platform/sign_up_screen.dart';
import 'package:iefunden/screens/cso_wallet/dashboard/dashboard_alt_spending.dart';
import 'package:iefunden/screens/cso_wallet/dashboard/dashboard_collect_spending.dart';
import 'package:iefunden/screens/cso_wallet/dashboard/dashboard_menu.dart';
import 'package:iefunden/screens/cso_wallet/dashboard/dashboard_pref_spending.dart';
import 'package:iefunden/screens/cso_wallet/landing_screen.dart';
import 'package:iefunden/screens/cso_wallet/reset_password_screen.dart';
import 'package:iefunden/screens/cso_wallet/sign_in_screen.dart';
import 'package:iefunden/screens/cso_wallet/sign_up_screen.dart';
import 'package:iefunden/screens/get_started_screen.dart';
import 'package:iefunden/screens/iib_portfolio/dashboard/dashboard_menu.dart';
import 'package:iefunden/screens/iib_portfolio/dashboard/dashboard_tier_one.dart';
import 'package:iefunden/screens/iib_portfolio/dashboard/dashboard_tier_three.dart';
import 'package:iefunden/screens/iib_portfolio/dashboard/dashboard_tier_two.dart';
import 'package:iefunden/screens/iib_portfolio/landing_screen.dart';
import 'package:iefunden/screens/iib_portfolio/reset_password_screen.dart';
import 'package:iefunden/screens/iib_portfolio/sign_in_screen.dart';
import 'package:iefunden/screens/iib_portfolio/sign_up_screen.dart';
import 'package:iefunden/screens/landing_screen.dart';

const String LandingScreenRoute = '/';
const String GetStartedScreenRoute = '/get-started';

/// cppa
const String CPPALandingScreenRoute = '/cppa';
const String CPPASignInScreenRoute = '/cppa/sign-in';
const String CPPASignUpScreenRoute = '/cppa/sign-up';
const String CPPAResetPasswordScreenRoute = '/cppa/reset-password';
const String CPPADashboardMenuScreenRoute = '/cppa/dashboard';
const String CPPADashboardFloatationScreenRoute = '/cppa/dashboard-float';
const String CPPADashboardBiddingScreenRoute = '/cppa/dashboard-listing';
const String CPPADashboardListingScreenRoute = '/cppa/dashboard-bidding';

/// cso wallet routes
const String CsoWalletLandingScreenRoute = '/cso-wallet';
const String CsoWalletSignInScreenRoute = '/cso-wallet/sign-in';
const String CsoWalletSignUpScreenRoute = '/cso-wallet/sign-up';
const String CsoWalletResetPasswordScreenRoute = '/cso-wallet/reset-password';
const String CsoWalletDashboardMenuScreenRoute = '/cso-wallet/dashboard';
const String CsoWalletDashboardPrefSpendingScreenRoute =
    '/cso-wallet/dashboard-pref-spending';
const String CsoWalletDashboardAltSpendingScreenRoute =
    '/cso-wallet/dashboard-alt-spending';
const String CsoWalletDashboardColSpendingScreenRoute =
    '/cso-wallet/dashboard-collect-spending';

/// iib portfolio routes
const String IIBPortfolioLandingScreenRoute = '/iib';
const String IIBPortfolioSignInScreenRoute = '/iib/sign-in';
const String IIBPortfolioSignUpScreenRoute = '/iib/sign-up';
const String IIBPortfolioResetPasswordScreenRoute = '/iib/reset-password';
const String IIBPortfolioDashboardMenuScreenRoute = '/iib/dashboard';
const String IIBPortfolioDashboardTierOneScreenRoute =
    '/iib/dashboard-tier-one';
const String IIBPortfolioDashboardTierTwoScreenRoute =
    '/iib/dashboard-tier-two';
const String IIBPortfolioDashboardTierThreeScreenRoute =
    '/iib/dashboard-tier-three';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case LandingScreenRoute:
      return MaterialPageRoute(builder: (context) => const LandingScreen());
    case GetStartedScreenRoute:
      return MaterialPageRoute(builder: (context) => const GetStartedScreen());

    /// cppa
    case CPPALandingScreenRoute:
      return MaterialPageRoute(builder: (context) => const CPPALandingScreen());
    case CPPASignInScreenRoute:
      return MaterialPageRoute(builder: (context) => const CPPASignInScreen());
    case CPPASignUpScreenRoute:
      return MaterialPageRoute(builder: (context) => const CPPASignUpScreen());
    case CPPAResetPasswordScreenRoute:
      return MaterialPageRoute(
          builder: (context) => const CPPAResetPasswordScreen());
    case CPPADashboardMenuScreenRoute:
      return MaterialPageRoute(
          builder: (context) => const CPPADashboardMenuScreen());
    case CPPADashboardFloatationScreenRoute:
      return MaterialPageRoute(
          builder: (context) => const CPPADashboardFloatationScreen());
    case CPPADashboardBiddingScreenRoute:
      return MaterialPageRoute(
          builder: (context) => const CPPADashboardBiddingScreen());
    case CPPADashboardListingScreenRoute:
      return MaterialPageRoute(
          builder: (context) => const CPPADashboardListingScreen());

    /// cso
    case CsoWalletLandingScreenRoute:
      return MaterialPageRoute(
          builder: (context) => const CsoWalletLandingScreen());
    case CsoWalletSignInScreenRoute:
      return MaterialPageRoute(
          builder: (context) => const CsoWalletSignInScreen());
    case CsoWalletSignUpScreenRoute:
      return MaterialPageRoute(
          builder: (context) => const CsoWalletSignUpScreen());
    case CsoWalletResetPasswordScreenRoute:
      return MaterialPageRoute(
          builder: (context) => const CsoWalletResetPasswordScreen());
    case CsoWalletDashboardMenuScreenRoute:
      return MaterialPageRoute(
          builder: (context) => const CsoWalletDashboardMenuScreen());
    case CsoWalletDashboardPrefSpendingScreenRoute:
      return MaterialPageRoute(
          builder: (context) => const CsoWalletDashboardPrefSpendingScreen());
    case CsoWalletDashboardAltSpendingScreenRoute:
      return MaterialPageRoute(
          builder: (context) => const CsoWalletDashboardAltSpendingScreen());
    case CsoWalletDashboardColSpendingScreenRoute:
      return MaterialPageRoute(
          builder: (context) => const CsoWalletDashboardColSpendingScreen());

    /// iib portfolio
    case IIBPortfolioLandingScreenRoute:
      return MaterialPageRoute(
          builder: (context) => const IIBPortfolioLandingScreen());
    case IIBPortfolioSignInScreenRoute:
      return MaterialPageRoute(
          builder: (context) => const IIBPortfolioSignInScreen());
    case IIBPortfolioSignUpScreenRoute:
      return MaterialPageRoute(
          builder: (context) => const IIBPortfolioSignUpScreen());
    case IIBPortfolioResetPasswordScreenRoute:
      return MaterialPageRoute(
          builder: (context) => const IIBPortfolioResetPasswordScreen());
    case IIBPortfolioDashboardMenuScreenRoute:
      return MaterialPageRoute(
          builder: (context) => const IIBPortfolioDashboardMenuScreen());
    case IIBPortfolioDashboardTierOneScreenRoute:
      return MaterialPageRoute(
          builder: (context) => const IIBPortfolioDashboardTierOneScreen());
    case IIBPortfolioDashboardTierTwoScreenRoute:
      return MaterialPageRoute(
          builder: (context) => const IIBPortfolioDashboardTierTwoScreen());
    case IIBPortfolioDashboardTierThreeScreenRoute:
      return MaterialPageRoute(
          builder: (context) => const IIBPortfolioDashboardTierThreeScreen());

    default:
      return MaterialPageRoute(builder: (context) => const LandingScreen());
  }
}
