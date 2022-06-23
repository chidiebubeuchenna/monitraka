import 'package:flutter/material.dart';
import 'package:monitraka/view/screens/Screen2.dart';
import 'package:monitraka/view/screens/screen1.dart';
import 'package:monitraka/view/screens/screen4.dart';
import 'package:monitraka/view/screens/splash_screen.dart';
import 'package:monitraka/view/screens/screen2b.dart';
import 'package:monitraka/view/screens/screen3.dart';
import 'package:monitraka/view/screens/screen1b.dart';

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
      home: const backLogin(),
    );
  }
}
