import 'package:flutter/material.dart';
import 'package:monitraka/res/res.dart';
import 'package:monitraka/views/screens/register/login_screen.dart';

class LetsGoScreen extends StatefulWidget {
  const LetsGoScreen({Key? key}) : super(key: key);
  static const id = '/LetsGo';

  @override
  State<LetsGoScreen> createState() => _LetsGoScreenState();
}

class _LetsGoScreenState extends State<LetsGoScreen> {
  decideNavigation() {
    Future.delayed(const Duration(seconds: 4), () {
      Navigator.pushNamed(context, LoginScreen.id);
    });
  }

  @override
  void initState() {
    super.initState();
    decideNavigation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Resources.color.cWhite,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const SizedBox(height: 130),
                Image.asset(Resources.iStrings.congrats),
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
