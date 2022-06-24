import 'package:flutter/material.dart';
import 'package:monitraka/view/screens/password_correction/password_created.dart';
import 'package:monitraka/view/screens/password_correction/password_reset.dart';
import 'package:monitraka/widgets/app_bar.dart';

import '../../../res/res.dart';
import '../../../widgets/buttons.dart';
import '../../../widgets/text_field.dart';

class CreatePassword extends StatefulWidget {
  const CreatePassword({Key? key}) : super(key: key);
  static const id = '/CreateNewPassword';

  @override
  State<CreatePassword> createState() => _CreatePasswordState();
}

class _CreatePasswordState extends State<CreatePassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: specialAppBar(
          () => Navigator.popAndPushNamed(context, PasswordReset.id)),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(Resources.rString.cTitle,
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: Resources.color.cGreen)),
              Text(
                Resources.rString.cSubText,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Resources.color.rgText),
              ),
              const SizedBox(height: 25),
              const AppTextField(
                  title: 'Password', obscureText: true, hint: ' Password'),
              const SizedBox(height: 16),
              const AppTextField(
                  title: 'Create New Password',
                  obscureText: true,
                  hint: 'Re-type your password'),
              const SizedBox(height: 36),
              Button(
                title: 'Create Password',
                bgColor: Resources.color.cGreen,
                textColor: Resources.color.cWhite,
                btnAction: () {
                  Navigator.pushNamed(context, PasswordCreated.id);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
