import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:monitraka/widgets/textFieldForm.dart';
import 'package:monitraka/widgets/elevatedButton.dart';
import 'package:monitraka/widgets/textButton.dart';

class screen1 extends StatefulWidget {
  const screen1({Key? key}) : super(key: key);

  @override
  State<screen1> createState() => _screen1State();
}

class _screen1State extends State<screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 132, horizontal: 19),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Forgot Password",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: Color.fromRGBO(19, 109, 49, 1),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Enter email to reset account",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                "Reset password via:",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 15,
              ),
              textForm(label: 'Email', obsuretext: false),
              SizedBox(
                height: 32,
              ),
              Text(
                "Email",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 15,
              ),
              textForm(label: 'Johdoe4599@gmail.com', obsuretext: false),
              SizedBox(
                height: 28,
              ),
              elevateButton(label: 'Send Token'),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                  ),
                  textButton(label: "Sign up"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
