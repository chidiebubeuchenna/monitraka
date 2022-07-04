import 'package:flutter/material.dart';
import 'package:monitraka/providers/signup_prov.dart';
import 'package:monitraka/res/res.dart';
import 'package:monitraka/views/screens/register/login_screen.dart';
import 'package:monitraka/views/screens/register/letsgo_screen.dart';
import 'package:monitraka/widgets/buttons.dart';
import 'package:monitraka/widgets/drop_down_menu.dart';
import 'package:monitraka/widgets/text_field.dart';
import 'package:provider/provider.dart';

import 'letsgo_screen.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);
  static const id = '/Signup';

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _cPasswordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  final int _initialValue = 0;
  final List<DropdownMenuItem<int>> _items = [
    socialItems('WhatsApp', 0),
    socialItems('Twitter', 1),
    socialItems('Instagram', 2),
    socialItems('A friend', 3),
    socialItems('Our team', 4),
  ];
  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    _passwordController.dispose();
    _cPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Form(
              key: _formKey,
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
                  //Full Name field
                  Text('Full Name', style: titleStyle),
                  const SizedBox(height: 15),
                  CommonTextField(
                      obscureText: false,
                      controller: _nameController,
                      hint: 'Enter your full name'),
                  const SizedBox(height: 16),
                  //Email field
                  Text('Email', style: titleStyle),
                  const SizedBox(height: 15),
                  CommonTextField(
                      obscureText: false,
                      controller: _emailController,
                      hint: 'Enter your email address'),
                  const SizedBox(height: 16),
                  //Phone Number field
                  Text('Phone Number', style: titleStyle),
                  const SizedBox(height: 15),
                  CommonTextField(
                      obscureText: false,
                      controller: _phoneController,
                      hint: 'Enter your phone number'),
                  const SizedBox(height: 16),
                  //Password field
                  Text('Password', style: titleStyle),
                  const SizedBox(height: 15),
                  CommonTextField(
                    obscureText: true,
                    controller: _passwordController,
                    hint: 'Password',
                    validator: (val) {
                      if (_passwordController.text.isEmpty) {
                        return 'Password cannot be empty';
                      } else if (_passwordController.text.length < 8) {
                        return 'Password cannot be less than 8 characters';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 16),
                  //Confirm Password field
                  Text('Confirm Password', style: titleStyle),
                  const SizedBox(height: 15),
                  CommonTextField(
                    obscureText: true,
                    controller: _cPasswordController,
                    hint: 'Re-type your password',
                    validator: (val) {
                      if (_cPasswordController.text !=
                          _passwordController.text) {
                        return 'Password must be the same';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      Text('How did you hear about us? ', style: titleStyle),
                      Text(
                        '(Optional)',
                        style: TextStyle(
                            color: Resources.color.redText,
                            fontWeight: FontWeight.w600,
                            fontSize: 14),
                      )
                    ],
                  ),
                  const SizedBox(height: 16),
                  dropDown(_initialValue, _items, (a) {}),
                  const SizedBox(height: 32),
                  Consumer<SignupProv>(
                    builder: (BuildContext context, value, Widget? child) =>
                        Button(
                      title: 'Create Account',
                      textColor: Resources.color.cWhite,
                      bgColor: Resources.color.cGreen,
                      btnAction: () {
                        //Uncomment this to see the what it does
                        // if (_formKey.currentState!.validate()) {
                        //   value.userName(_nameController.text,
                        //       _emailController.text, _phoneController.text);
                        //   Navigator.pushNamed(context, LetsGoScreen.id);
                        // }
                        //Comment this after that. This is for we devs ;)
                        value.userName(_nameController.text,
                            _emailController.text, _phoneController.text);
                        Navigator.pushNamed(context, LetsGoScreen.id);
                      },
                    ),
                  ),
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
                        onTap: () =>
                            Navigator.pushNamed(context, LoginScreen.id),
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
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
