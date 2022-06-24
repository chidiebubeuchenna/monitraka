import 'package:flutter/material.dart';
import 'package:monitraka/res/res.dart';
import 'package:monitraka/routes.dart';
import 'package:monitraka/view/screens/splash_screen.dart';

void main() {
  runApp(const Monitraka());
}

class Monitraka extends StatelessWidget {
  const Monitraka({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Poppins'),
      title: 'Monitraka',
      initialRoute: SplashScreen.id,
      routes: routes,
    );
  }
}
