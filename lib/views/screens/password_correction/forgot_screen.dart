import 'package:flutter/material.dart';
import 'package:monitraka/res/res.dart';
import 'package:monitraka/views/screens/password_correction/password_reset.dart';
import 'package:monitraka/views/screens/register/login_screen.dart';
import 'package:monitraka/widgets/app_bar.dart';
import 'package:monitraka/widgets/drop_down_menu.dart';
import 'package:monitraka/widgets/text_field.dart';

import '../../../widgets/buttons.dart';
import '../register/signup_screen.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);
  static const id = '/ForgotPassword';
  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  String initialValue = 'Email';
  List<DropdownMenuItem<String>> values = [
    DropdownMenuItem(
      value: 'Email',
      child: Text(
        'Email',
        style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Resources.color.hintText),
      ),
    ),
    DropdownMenuItem(
      value: 'Phone Number',
      child: Text('Phone Number',
          style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Resources.color.hintText)),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(() => Navigator.popAndPushNamed(context, LoginScreen.id)),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(Resources.rString.fTitle,
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: Resources.color.cGreen)),
              Text(
                'Enter to reset account',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Resources.color.rgText),
              ),
              const SizedBox(height: 25),
              dropDown(initialValue, values),
              const AppTextField(
                  title: 'Email',
                  obscureText: false,
                  hint: 'Johndoe4599@gmail.com'),
              const AppTextField(
                  title: 'Phone Number',
                  obscureText: false,
                  hint: '08011448899'),
              const SizedBox(height: 36),
              Button(
                title: 'Send Token',
                bgColor: Resources.color.cGreen,
                textColor: Resources.color.cWhite,
                btnAction: () => Navigator.pushNamed(context, PasswordReset.id),
              ),
              const SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    Resources.rString.noAccount,
                    style: TextStyle(
                        color: Resources.color.cBlack,
                        fontWeight: FontWeight.w600,
                        fontSize: 14),
                  ),
                  InkWell(
                    onTap: () => Navigator.pushNamed(context, SignupScreen.id),
                    child: Text(
                      Resources.rString.sTitle,
                      style: TextStyle(
                          color: Resources.color.cGreen,
                          decoration: TextDecoration.underline,
                          decorationColor: Resources.color.cGreen,
                          decorationThickness: 3,
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
