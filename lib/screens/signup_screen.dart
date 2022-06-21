import 'package:flutter/material.dart';
import 'package:monitraka/screens/login_screen.dart';
import 'package:monitraka/widgets/buttons.dart';
import 'package:monitraka/widgets/text_field.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.white24,
            body: Padding(
              padding:const EdgeInsets.all(24),
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.topLeft,
                      child: Icon(Icons.arrow_back, color: Colors.black, size: 35,),),
                    SizedBox(height: 20,),
                    Column(children: <Widget>[
                      Align(alignment: Alignment.centerLeft,
                        child:Text("Sign Up", textAlign: TextAlign.left, style: TextStyle(color: Colors.black, fontWeight: FontWeight.w900, fontSize: 24),),),
                      SizedBox(height: 5),
                      Align(alignment: Alignment.centerLeft,
                        child:Text("Track your finances with us", textAlign: TextAlign.left, style: TextStyle(color: Colors.black54, fontWeight: FontWeight.normal, fontSize: 20),),),
                    ],),
                    SizedBox(height: 30,),
                    AppTextField(title: "Full Name"),
                    SizedBox(height: 40),
                    AppTextField(title: "Email"),
                    SizedBox(height: 40),
                    AppTextField(title: "Phone Number"),
                    SizedBox(height: 40),
                    AppTextField(title: "Password"),
                    SizedBox(height: 40),
                    AppTextField(title: "Confirm Password"),
                    SizedBox(height: 40),
                    AppTextField(title: "How did you hear about us(Optional)"),//this isn't an ordinary text field, fill in later, also change optional to red)
                    SizedBox(height: 40,),
                    Button(title: "CREATE ACCOUNT"),
                    SizedBox(height: 30,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Already have an account?", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                        TextButton(onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoginScreen())),
                            child: const Text("Log in", style: TextStyle(color: Colors.green,decoration: TextDecoration.underline,
                                decorationColor: Colors.green, decorationThickness:3, fontWeight: FontWeight.bold),))
                      ],
                    )

                  ],
                ),
              ),)
        ));
  }
}