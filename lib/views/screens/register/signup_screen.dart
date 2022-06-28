import 'package:flutter/material.dart';
import 'package:monitraka/res/res.dart';
import 'package:monitraka/views/screens/register/letsgo_screen.dart';
import 'package:monitraka/views/screens/register/login_screen.dart';
import 'package:monitraka/widgets/app_bar.dart';
import 'package:monitraka/widgets/buttons.dart';
import 'package:monitraka/widgets/drop_down_menu.dart';
import 'package:monitraka/widgets/text_field.dart';



class SignupScreen extends StatefulWidget {

  const SignupScreen({Key? key}) : super(key: key);
  static const id = '/Signup';

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    //final validationService = Provider.of<LoginValidator>(context);
    return Scaffold(
        appBar: appBar(() => Navigator.popAndPushNamed(context, LoginScreen.id),),
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
                        error: 'Required field!',
                        obscureText: false,
                      ),
                      const SizedBox(height: 16),
                       AppTextField(
                        title: "Email",
                        hint: 'Enter your email address',
                        error: 'Please enter a valid email',
                        obscureText: false,
                      ),
                      const SizedBox(height: 16),
                      const AppTextField(
                        title: "Phone Number",
                        hint: 'Enter your phone number',
                        error: 'Enter a valid number',
                        obscureText: false,
                      ),
                      const SizedBox(height: 16),
                       AppTextField(
                        title: "Password",
                        hint: 'Password',
                        error: 'Password cannot be empty',
                        obscureText: true,
                      ),
                      const SizedBox(height: 16),
                       AppTextField(
                        title: "Confirm Password",
                        hint: 'Re-type your password',
                        error: 'Password cannot be empty',
                        obscureText: true,
                      ),
                      const SizedBox(height: 16),
                      const DropDown(),
                      const SizedBox(height: 32),
                      Button(
                          title: 'Create Account',
                          textColor: Resources.color.cWhite,
                          bgColor: Resources.color.cGreen,
                          btnAction: () =>
                              Navigator.pushNamed(context, LetsGoScreen.id)),//(!validationService.isvalid) ? null: validationService.submitData)
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
