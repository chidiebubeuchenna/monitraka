import 'dart:async';

import 'package:flutter/material.dart';
import 'package:monitraka/res/res.dart';

import 'on_board_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);
  static const id = '/';
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Widget splashOne() {
    return Container(
      decoration: BoxDecoration(
        color: Resources.color.cGreen,
        backgroundBlendMode: BlendMode.darken,
        image: DecorationImage(
            image: AssetImage(
              Resources.iStrings.splash,
            ),
            fit: BoxFit.cover),
      ),
      child: Center(
          child: Image.asset(Resources.iStrings.icon, width: 182, height: 147)),
    );
  }

  Widget splashTwo() {
    return Container(
      decoration: BoxDecoration(color: Resources.color.cWhite),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const SizedBox(height: 175),
          Center(
            child:
                Image.asset(Resources.iStrings.logo, width: 291, height: 234),
          ),
          const SizedBox(height: 125),
          Text(
            Resources.oString.splash,
            style: const TextStyle(
                fontFamily: 'Economica',
                fontSize: 16,
                fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }

  @override
  void initState() {
    Timer(const Duration(seconds: 3),
        () => Navigator.pushNamed(context, OnBoarding.id));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: splashTwo(),
    );
  }
}
