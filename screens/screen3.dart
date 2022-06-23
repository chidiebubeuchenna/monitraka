import 'package:flutter/material.dart';

import 'package:monitraka/widgets/textFieldForm.dart';
import 'package:monitraka/widgets/elevatedButton.dart';
import 'package:monitraka/widgets/textButton.dart';
import 'package:monitraka/widgets/toggle_password.dart';

class screen3 extends StatefulWidget {
  const screen3({Key? key}) : super(key: key);

  @override
  State<screen3> createState() => _screen3State();
}

class _screen3State extends State<screen3> {
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
                "Create New Password",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Create your new password",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                "Password",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 15,
              ),
              text_form(label: 'password'),
              SizedBox(
                height: 32,
              ),
              text_form(label: 'Re-type your password'),
              SizedBox(
                height: 28,
              ),
              elevateButton(label: 'Create Password'),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
