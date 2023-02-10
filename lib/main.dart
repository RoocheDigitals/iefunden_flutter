import 'dart:convert';
import 'dart:developer';

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iefunden/amplifyconfiguration.dart';
import 'package:iefunden/commons/constants.dart';
import 'package:iefunden/providers/cppa_platform_provider.dart';
import 'package:iefunden/theme.dart' as theme;
import 'package:provider/provider.dart';
import 'package:iefunden/router.dart' as router;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //   // add Amplify plugins
  final auth = AmplifyAuthCognito();
  Amplify.addPlugin(auth);
  // configure Amplify
  // note that Amplify cannot be configured more than once!
  log(jsonEncode(amplifyconfig));
  await Amplify.configure(jsonEncode(amplifyconfig));
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
  runApp(const MyApp());
}

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => CPPAPlatformProvider()),
      ],
      child: MaterialApp(
        title: APP_TITLE,
        debugShowCheckedModeBanner: false,
        theme: theme.generateTheme(),
        onGenerateRoute: router.generateRoute,
        navigatorKey: navigatorKey,
        initialRoute: router.LandingScreenRoute,
      ),
    );
  }
}
