import 'dart:js';

import 'package:flutter/material.dart';
import 'package:monitraka/providers/reg_prov.dart';
import 'package:monitraka/routes.dart';
import 'package:monitraka/validator/login_validator.dart';
import 'package:monitraka/views/screens/intro/splash_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => RegAuth()),
      ChangeNotifierProvider(create: (context) => LoginValidator()),
    ],
    child: const Monitraka(),
  ));
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
