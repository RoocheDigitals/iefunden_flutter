import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iefunden/commons/constants.dart';
import 'package:iefunden/providers/cppa_platform_provider.dart';
import 'package:iefunden/providers/cso_wallet_provider.dart';
import 'package:iefunden/providers/iib_portfolio_provider.dart';
import 'package:iefunden/theme.dart' as theme;
import 'package:provider/provider.dart';
import 'package:iefunden/router.dart' as router;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

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
        ChangeNotifierProvider(create: (context) => CSOWalletProvider()),
        ChangeNotifierProvider(create: (context) => IIBPortfolioProvider()),
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
