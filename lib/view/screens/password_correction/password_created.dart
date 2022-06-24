import 'package:flutter/material.dart';
import 'package:monitraka/view/screens/register/login_screen.dart';

import '../../../res/res.dart';

class PasswordCreated extends StatefulWidget {
  const PasswordCreated({Key? key}) : super(key: key);
  static const id = '/PasswordCreated';

  @override
  State<PasswordCreated> createState() => _PasswordCreatedState();
}

class _PasswordCreatedState extends State<PasswordCreated> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const SizedBox(height: 30),
              Text(
                Resources.rString.cSuccess,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Resources.color.headerText),
              ),
              const SizedBox(height: 50),
              GestureDetector(
                onTap: () =>
                    Navigator.pushReplacementNamed(context, LoginScreen.id),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.arrow_back,
                      color: Resources.color.cGreen,
                    ),
                    Text(
                      'Back to login',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Resources.color.cGreen),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 173),
              Center(
                child: Image.asset(
                  Resources.iStrings.icon,
                  color: Resources.color.fillColor,
                  width: 97,
                  height: 78,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
