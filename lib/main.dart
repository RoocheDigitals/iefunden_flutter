import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iefunden/providers/landing_provider.dart';
import 'package:iefunden/theme.dart' as theme;
import 'package:provider/provider.dart';
import 'package:iefunden/router.dart' as router;

void main() {
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
        ChangeNotifierProvider(create: (context) => LandingProvider()),
      ],
      child: MaterialApp(
        title: 'iefunden',
        debugShowCheckedModeBanner: false,
        theme: theme.generateTheme(),
        onGenerateRoute: router.generateRoute,
        navigatorKey: navigatorKey,
        initialRoute: router.LandingScreenRoute,
      ),
    );
  }
}
