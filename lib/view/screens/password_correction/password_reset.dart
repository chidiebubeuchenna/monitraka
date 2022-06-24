import 'package:flutter/material.dart';
import 'package:monitraka/view/screens/password_correction/create_new_password.dart';
import 'package:monitraka/view/screens/password_correction/forgot_screen.dart';
import 'package:monitraka/widgets/app_bar.dart';

import '../../../res/res.dart';
import '../../../widgets/buttons.dart';
import '../../../widgets/text_field.dart';

class PasswordReset extends StatefulWidget {
  const PasswordReset({Key? key}) : super(key: key);
  static const id = '/PasswordReset';

  @override
  State<PasswordReset> createState() => _PasswordResetState();
}

class _PasswordResetState extends State<PasswordReset> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: specialAppBar(
          () => Navigator.popAndPushNamed(context, ForgotPassword.id)),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(Resources.rString.pTitle,
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: Resources.color.cGreen)),
              Text(
                Resources.rString.pContent,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Resources.color.rgText),
              ),
              const SizedBox(height: 25),
              const AppTextField(
                  title: 'Enter 6-digit token',
                  obscureText: false,
                  hint: '* * * * *'),
              const SizedBox(height: 36),
              Button(
                title: 'Next',
                bgColor: Resources.color.cGreen,
                textColor: Resources.color.cWhite,
                btnAction: () =>
                    Navigator.pushNamed(context, CreatePassword.id),
              ),
              const SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Text(
                      Resources.rString.pToken,
                      style: TextStyle(
                          color: Resources.color.cGreen,
                          decorationColor: Resources.color.cGreen,
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
