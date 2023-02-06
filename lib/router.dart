import 'package:flutter/material.dart';
import 'package:iefunden/screens/cppa_platform/landing_screen.dart';
import 'package:iefunden/screens/cppa_platform/sign_in_screen.dart';
import 'package:iefunden/screens/cppa_platform/sign_up_screen.dart';
import 'package:iefunden/screens/get_started_screen.dart';
import 'package:iefunden/screens/landing_screen.dart';

const String LandingScreenRoute = '/';
const String GetStartedScreenRoute = '/get-started';
const String CPPALandingScreenRoute = '/cppa';
const String CPPASignInScreenRoute = '/cppa/sign-in';
const String CPPASignUpScreenRoute = '/cppa/sign-up';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case LandingScreenRoute:
      return MaterialPageRoute(builder: (context) => const LandingScreen());
    case GetStartedScreenRoute:
      return MaterialPageRoute(builder: (context) => const GetStartedScreen());
    case CPPALandingScreenRoute:
      return MaterialPageRoute(builder: (context) => const CPPALandingScreen());
    case CPPASignInScreenRoute:
      return MaterialPageRoute(builder: (context) => const CPPASignInScreen());
    case CPPASignUpScreenRoute:
      return MaterialPageRoute(builder: (context) => const CPPASignUpScreen());
    default:
      return MaterialPageRoute(builder: (context) => const LandingScreen());
  }
}
