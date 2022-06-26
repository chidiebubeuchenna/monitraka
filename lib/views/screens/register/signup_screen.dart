import 'package:flutter/material.dart';
import 'package:monitraka/res/res.dart';
import 'package:monitraka/views/screens/register/login_screen.dart';
import 'package:monitraka/widgets/buttons.dart';
import 'package:monitraka/widgets/drop_down_menu.dart';
import 'package:monitraka/widgets/text_field.dart';

import 'letsgo_screen.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);
  static const id = '/Signup';

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final int _initialValue = 0;
  final List<DropdownMenuItem<int>> _items = [
    socialItems('WhatsApp', 0),
    socialItems('Twitter', 1),
    socialItems('Instagram', 2),
    socialItems('A friend', 3),
    socialItems('Our team', 4),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const SizedBox(height: 20),
                Text(
                  Resources.rString.sTitle,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Resources.color.cGreen,
                      fontWeight: FontWeight.w700,
                      fontSize: 24),
                ),
                Text(
                  Resources.rString.sContent,
                  style: TextStyle(
                      color: Resources.color.rgText,
                      fontWeight: FontWeight.w400,
                      fontSize: 18),
                ),
                const SizedBox(height: 30),
                const AppTextField(
                  title: "Full Name",
                  hint: 'Enter your full name',
                  obscureText: false,
                ),
                const SizedBox(height: 16),
                const AppTextField(
                  title: "Email",
                  hint: 'Enter your email address',
                  obscureText: false,
                ),
                const SizedBox(height: 16),
                const AppTextField(
                  title: "Phone Number",
                  hint: 'Enter your phone number',
                  obscureText: false,
                ),
                const SizedBox(height: 16),
                const AppTextField(
                  title: "Password",
                  hint: 'Password',
                  obscureText: true,
                ),
                const SizedBox(height: 16),
                const AppTextField(
                  title: "Confirm Password",
                  hint: 'Re-type your password',
                  obscureText: true,
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    Text('How did you hear about us? ',
                        style: TextStyle(
                            color: Resources.color.headerText,
                            fontWeight: FontWeight.w600,
                            fontSize: 14)),
                    Text('(Optional)',
                        style: TextStyle(
                            color: Resources.color.redText,
                            fontWeight: FontWeight.w600,
                            fontSize: 14))
                  ],
                ),
                const SizedBox(height: 16),
                dropDown(_initialValue, _items),
                const SizedBox(height: 32),
                Button(
                    title: 'Create Account',
                    textColor: Resources.color.cWhite,
                    bgColor: Resources.color.cGreen,
                    btnAction: () =>
                        Navigator.pushNamed(context, LetsGoScreen.id)),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      Resources.rString.noAccount,
                      style: TextStyle(
                          color: Resources.color.cBlack,
                          fontWeight: FontWeight.w600,
                          fontSize: 12),
                    ),
                    InkWell(
                      onTap: () => Navigator.pushNamed(context, LoginScreen.id),
                      child: Text(
                        Resources.rString.lTitle,
                        style: TextStyle(
                            color: Resources.color.cGreen,
                            decoration: TextDecoration.underline,
                            decorationColor: Resources.color.cGreen,
                            decorationThickness: 3,
                            fontWeight: FontWeight.w600,
                            fontSize: 12),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
