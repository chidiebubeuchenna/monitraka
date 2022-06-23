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
                SizedBox(height: 450),
                Row(children: <Widget>[
                  Align(alignment: AlignmentDirectional.left,//this isn't correct in the code, but for some reason it doesn't want to move left
                     child: Image.asset('assets/images/1103_confetti-outline-2.gif', width: 155,height: 155,fit: BoxFit.contain,)),
                  Align(alignment: AlignmentDirectional.bottomCenter, child: Image.asset('assets/images/1103_confetti-outline-5.gif', width: 113,height: 113,fit: BoxFit.contain,)),
                  Align(alignment: AlignmentDirectional.right, //this needs to move to the right too
                      child: Image.asset('assets/images/1103_confetti-outline-3.gif', width: 155,height: 155,fit: BoxFit.contain,)),
                  Align(alignment: AlignmentDirectional.bottomEnd, child: Image.asset('assets/images/1103_confetti-outline-4.gif', width: 91,height: 91,fit: BoxFit.contain,)),
                ],),
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
