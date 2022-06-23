import 'package:flutter/material.dart';
import 'package:monitraka/res/colors/base_colors.dart';
import 'package:monitraka/widgets/elevatedButton.dart';
import 'package:monitraka/widgets/textFieldForm.dart';
import 'package:monitraka/widgets/textButton.dart';
import 'package:monitraka/res/colors/reg_color.dart';

class screen2 extends StatefulWidget {
  const screen2({Key? key}) : super(key: key);

  @override
  State<screen2> createState() => _screen2State();
}

class _screen2State extends State<screen2> {
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
                "Enter phone number to reset account",
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
              textForm(label: 'Phone number', obsuretext: false),
              SizedBox(
                height: 32,
              ),
              Text(
                "Phone Number",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 15,
              ),
              textForm(label: '08011448899', obsuretext: false),
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
                  textButton(
                    label: "Sign up",
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
