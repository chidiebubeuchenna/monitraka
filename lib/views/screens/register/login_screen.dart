import 'package:flutter/material.dart';
import 'package:monitraka/res/res.dart';
import 'package:monitraka/validator/login_validator.dart';
import 'package:monitraka/views/screens/password_correction/forgot_screen.dart';
import 'package:monitraka/views/screens/register/signup_screen.dart';
import 'package:monitraka/widgets/app_bar.dart';
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
  final bool checkedBox = true;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final validationService = Provider.of<LoginValidator>(context);
    return Scaffold(
        appBar: appBar(() => Navigator.popAndPushNamed(context, SignupScreen.id)),
        body: SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
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
               AppTextField(
                  title: "Email",
                  error: validationService.email.error,
                  hint: 'Johndoe4599@gmail.com',
                  obscureText: false),
              const SizedBox(height: 16),
               AppTextField(
                  title: "Password",
                  error: validationService.password.error,
                  hint: '* * * * * * * * * * * *',
                  obscureText: true),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Checkbox(
                    value: checkedBox,
                    onChanged: (value) {
                      setState(() {
                        checkedBox != value;
                      });
                    },
                    activeColor: Resources.color.cGreen,
                  ),
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
                btnAction: (!validationService.isvalid) ? null: validationService.submitData),//(!validationService.isvalid) ? null: validationService.submitData,),
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
    ));
  }



  
}
