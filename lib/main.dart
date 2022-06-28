import 'package:flutter/material.dart';
import 'package:monitraka/routes.dart';
import 'package:monitraka/validator/login_validator.dart';
import 'package:monitraka/views/screens/register/letsgo_screen.dart';
import 'package:monitraka/views/screens/register/login_screen.dart';
import 'package:monitraka/views/screens/splash_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const Monitraka());
}

class Monitraka extends StatelessWidget {
  const Monitraka({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => LoginValidator(),
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(fontFamily: 'Poppins'),
          title: 'Monitraka',
          initialRoute: LoginScreen.id,
          routes: routes,
        ),
    );
  }
}
