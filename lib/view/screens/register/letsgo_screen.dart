import 'dart:async';

import 'package:flutter/material.dart';
import 'package:monitraka/res/res.dart';
import 'package:monitraka/view/screens/register/login_screen.dart';

class LetsGoScreen extends StatefulWidget {
  const LetsGoScreen({Key? key}) : super(key: key);
  static const id = '/LetsGo';

  @override
  State<LetsGoScreen> createState() => _LetsGoScreenState();
}

class _LetsGoScreenState extends State<LetsGoScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, LoginScreen.id);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              children: <Widget>[
                const SizedBox(height: 550),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      Resources.rString.aTitle,
                      style: TextStyle(
                          color: Resources.color.cGreen,
                          fontWeight: FontWeight.w700,
                          fontSize: 32),
                    ),
                    Text(
                      Resources.rString.aContent,
                      style: TextStyle(
                          color: Resources.color.rgText,
                          fontWeight: FontWeight.w500,
                          fontSize: 24),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
