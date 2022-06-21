import 'package:flutter/material.dart';
import 'package:monitraka/view/screens/splash_screen.dart';

void main() {
  runApp(Monitraka());
}

class Monitraka extends StatelessWidget {
  const Monitraka({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Monitraka',
      home: SplashScreen(),
    );
  }
}
