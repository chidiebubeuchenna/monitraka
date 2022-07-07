import 'package:flutter/material.dart';
import 'package:monitraka/views/screens/password_correction/create_new_password.dart';
import 'package:monitraka/widgets/app_bar.dart';

import '../../../res/res.dart';
import '../../../widgets/buttons.dart';

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
      appBar: specialAppBar(() => Navigator.pop(context)),
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
              TextField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.only(left: 20),
                  hintText: '* * * * *',
                  filled: true,
                  fillColor: Resources.color.fillColor,
                  hintStyle: TextStyle(
                      color: Resources.color.hintText,
                      fontSize: 12,
                      fontWeight: FontWeight.w600),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Resources.color.cGreen),
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
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
