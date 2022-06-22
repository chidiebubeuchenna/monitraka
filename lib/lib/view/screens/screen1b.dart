import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:monitraka/widgets/textFieldForm.dart';
import 'package:monitraka/widgets/elevatedButton.dart';
import 'package:monitraka/widgets/textButton.dart';

class screen1b extends StatefulWidget {
  const screen1b({Key? key}) : super(key: key);

  @override
  State<screen1b> createState() => _screen1bState();
}

class _screen1bState extends State<screen1b> {
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
                "Password Reset",
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
                "Enter token sent to your mail to continue",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                "Enter 6-digit Token",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 15,
              ),
              textForm(label: '****', obsuretext: true),
              SizedBox(
                height: 32,
              ),
              SizedBox(
                height: 28,
              ),
              elevateButton(label: 'Next'),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Resend Token",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(19, 109, 49, 1),
                    ),
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
