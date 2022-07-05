import 'package:flutter/material.dart';
import 'package:monitraka/providers/auth.dart';
import 'package:monitraka/routes.dart';
import 'package:monitraka/views/screens/intro/splash_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => Auth()),
    ],
    child: const Monitraka(),
  ));
}

class Monitraka extends StatelessWidget {
  const Monitraka({Key? key}) : super(key: key);
  static GlobalKey<NavigatorState> mainAppKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: mainAppKey,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Poppins'),
      title: 'Monitraka',
      initialRoute: SplashScreen.id,
      routes: routes,
    );
  }
}
