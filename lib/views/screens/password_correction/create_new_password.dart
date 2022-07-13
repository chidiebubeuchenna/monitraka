import 'package:flutter/material.dart';
import 'package:monitraka/views/screens/password_correction/password_created.dart';
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
  final _passwordController = TextEditingController();
  final _cPasswordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: specialAppBar(() => Navigator.pop(context)),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Form(
            key: _formKey,
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
                Text('Password', style: titleStyle),
                const SizedBox(height: 15),
                CommonTextField(
                  // obscureText: true,
                  hint: ' Password',
                  controller: _passwordController,
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
                Text('Confirm Password', style: titleStyle),
                const SizedBox(height: 15),
                CommonTextField(
                  // obscureText: true,
                  hint: 'Re-type your password',
                  controller: _cPasswordController,
                  validator: (val) {
                    if (_cPasswordController.text != _passwordController.text) {
                      return 'Password must be the same';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 36),
                Button(
                  title: 'Create Password',
                  bgColor: Resources.color.cGreen,
                  textColor: Resources.color.cWhite,
                  btnAction: () {
                    // if (_formKey.currentState!.validate()) {
                    //   Navigator.pushNamed(context, PasswordCreated.id);
                    // }
                    Navigator.pushNamed(context, PasswordCreated.id);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
