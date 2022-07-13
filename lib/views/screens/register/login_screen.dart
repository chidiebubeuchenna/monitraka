import 'package:flutter/material.dart';
import 'package:monitraka/providers/auth.dart';
import 'package:monitraka/res/res.dart';
import 'package:monitraka/views/screens/dashboard/tab_screen.dart';
import 'package:monitraka/views/screens/password_correction/forgot_screen.dart';
import 'package:monitraka/views/screens/register/signup_screen.dart';
import 'package:monitraka/widgets/buttons.dart';
import 'package:monitraka/widgets/text_field.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);
  static const id = '/Login';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final prov = Provider.of<Auth>(context);
    final formKey = GlobalKey<FormState>();
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const SizedBox(height: 20),
                  Wrap(
                    direction: Axis.vertical,
                    children: [
                      Text(
                        Resources.rString.lTitle,
                        style: TextStyle(
                            color: Resources.color.cGreen,
                            fontWeight: FontWeight.w700,
                            fontSize: 24),
                      ),
                      Text(
                        Resources.rString.lContent,
                        style: TextStyle(
                            color: Resources.color.rgText,
                            fontWeight: FontWeight.w400,
                            fontSize: 18),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Text('Email', style: titleStyle),
                  const SizedBox(height: 15),
                  CommonTextField(
                    // obscureText: false,
                    controller: _emailController,
                    hint: 'Johndoe4599@gmail.com',
                    validator: (val) {
                      if (_emailController.text.isEmpty) {
                        return 'Please enter valid email';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 16),
                  Text('Password', style: titleStyle),
                  const SizedBox(height: 15),
                  CommonTextField(
                    // obscureText: true,
                    controller: _passwordController,
                    hint: '* * * * * * * * * * * *',
                    validator: (val) {
                      if (_passwordController.text.isEmpty) {
                        return 'Password cannot be empty';
                      } else if (_passwordController.text.length < 8) {
                        return 'Password cannot be less than 8 characters';
                      }
                      return null;
                    },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Checkbox(
                          value: prov.checkBox,
                          onChanged: (value) => prov.box(),
                          activeColor: Resources.color.cGreen),
                      Text(
                        "Remember me",
                        style: TextStyle(
                            color: Resources.color.cBlack,
                            fontSize: 12,
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                  const SizedBox(height: 36),
                  Button(
                    title: Resources.rString.lTitle,
                    bgColor: Resources.color.cGreen,
                    textColor: Resources.color.cWhite,
                    btnAction: () {
                      // if (_formKey.currentState!.validate()) {
                      //   Navigator.pushNamed(context, TabScreen.id);
                      // }
                      Navigator.pushNamed(context, TabScreen.id);
                    },
                  ),
                  const SizedBox(height: 20),
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
                        onTap: () =>
                            Navigator.pushNamed(context, SignupScreen.id),
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
                  const SizedBox(height: 26),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Icon(Icons.fingerprint,
                              color: Resources.color.cGreen, size: 80),
                          const SizedBox(height: 20),
                          InkWell(
                            onTap: () =>
                                Navigator.pushNamed(context, ForgotPassword.id),
                            child: Text(
                              Resources.rString.fTitle,
                              style: TextStyle(
                                  color: Resources.color.cGreen,
                                  decoration: TextDecoration.underline,
                                  decorationColor: Colors.green,
                                  decorationThickness: 3,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
