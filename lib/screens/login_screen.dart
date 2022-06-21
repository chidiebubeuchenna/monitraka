import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:monitraka/screens/letsgo_screen.dart';
import 'package:monitraka/screens/signup_screen.dart';
import 'package:monitraka/widgets/buttons.dart';
import 'package:monitraka/widgets/text_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                        child:Text("Log in", textAlign: TextAlign.left, style: TextStyle(color: Colors.black,fontFamily: 'Poppins', fontWeight: FontWeight.w900, fontSize: 24),),),
                      SizedBox(height: 5),
                      Align(alignment: Alignment.centerLeft,
                        child:Text("Log in to your account", textAlign: TextAlign.left, style: TextStyle(color: Colors.black54,fontFamily: 'Poppins', fontWeight: FontWeight.normal, fontSize: 24),),),
                    ],),
                    SizedBox(height: 30,),
                    AppTextField(title: "Email"),
                    SizedBox(height: 40),
                    AppTextField(title: "Password"),
                    Row(children: [
                      Checkbox(value: false,
                        onChanged: (value){}, activeColor: Colors.black,),
                      const Text("Remember me", style: TextStyle(color: Colors.black),)
                    ],),
                    SizedBox(height: 40,),
                    Button(title: "LOG IN"),
                    SizedBox(height: 30,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Don't have an account?", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                        TextButton(onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => SignupScreen())),
                            child: const Text("Sign Up", style: TextStyle(color: Colors.green,decoration: TextDecoration.underline,
                                decorationColor: Colors.green,decorationThickness:3,fontWeight: FontWeight.bold),))
                      ],
                    ),
                    SizedBox(height: 26 ),
                    const Text("Forgot Password?", style: TextStyle(color: Colors.green,fontFamily:'Poppins',decoration: TextDecoration.underline,
                      decorationColor: Colors.green,decorationThickness:3),),
                    SizedBox(height: 20,),
                    const Icon(Icons.fingerprint, color: Colors.green, size: 80),
                  ],
                ),
              ),)
        ));
  }
}

