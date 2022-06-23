// import 'package:flutter/material.dart';
// import 'package:monitraka/screens/login_screen.dart';
// import 'package:monitraka/widgets/buttons.dart';
// import 'package:monitraka/widgets/createaccount.dart';
// import 'package:monitraka/widgets/formfield.dart';
// import 'package:monitraka/widgets/password.dart';
// import 'package:monitraka/widgets/text_field.dart';
// import 'package:monitraka/services/apiservices.dart';
//
// class SignupScreen extends StatefulWidget {
//   const SignupScreen({Key? key}) : super(key: key);
//
//   @override9+

//   State<SignupScreen> createState() => _SignupScreenState();
// }
//
// class _SignupScreenState extends State<SignupScreen> {
//   final emailController = TextEditingController();
//   final passwordController = TextEditingController();
//   final _formkey = GlobalKey<FormState>();
//   bool isloading = false;
//   final _apiService = ApiServices();
//
//   onDispose(){
//     emailController.clear();
//     passwordController.clear();
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//         child: Scaffold(
//             backgroundColor: Colors.white24,
//             body: Padding(
//               padding:const EdgeInsets.all(24),
//               child: SingleChildScrollView(
//                 child: Column(
//                   children: <Widget>[
//                     Align(
//                       alignment: Alignment.topLeft,
//                       child: Icon(Icons.arrow_back, color: Colors.black, size: 35,),),
//                     SizedBox(height: 20,),
//                     Column(children: <Widget>[
//                       Align(alignment: Alignment.centerLeft,
//                         child:Text("Sign Up", textAlign: TextAlign.left, style: TextStyle(color: Colors.black, fontWeight: FontWeight.w900, fontSize: 24),),),
//                       SizedBox(height: 5),
//                       Align(alignment: Alignment.centerLeft,
//                         child:Text("Track your finances with us", textAlign: TextAlign.left, style: TextStyle(color: Colors.black54, fontWeight: FontWeight.normal, fontSize: 20),),),
//                     ],),
//                     SizedBox(height: 30,),
//                     AppTextField(title: "Full Name", ttitle: 'Enter your full name',),
//                     SizedBox(height: 40),
//                     AppTextField(validator: (value){
//                       if (value!.isEmpty) return "please enter a valid email";
//                       return null;
//                     }, title: 'Email', controller: emailController, ttitle: 'Enter your email address ',),
//                     SizedBox(height: 40),
//                     AppTextField(title: "Phone Number", ttitle: 'Enter your phone number',),
//                     SizedBox(height: 40),
//                     PasswordField(validator: (value){
//                       if (value!.isEmpty) return "password cannot be empty";
//                       return null;
//                     }, title: 'Password',controller: passwordController, ttitle: 'Password',),
//                     SizedBox(height: 40),
//                     PasswordField(validator: (value){
//                       if (value!.isEmpty) return "password cannot be empty";
//                       return null;
//                     }, title: 'Confirm Password',controller: passwordController, ttitle: 'Confirm password',),
//                     SizedBox(height: 40),
//
//
//                     AppTextField(title: 'how ', ttitle: 'select'), //this isn't an ordinary text field, fill in later, also change optional to red)
//
//
//                     SizedBox(height: 40,),
//                     Button(title: 'CREATE ACCOUNT'),
//                     SizedBox(height: 30,),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         const Text("Already have an account?", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
//                         TextButton(onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoginScreen())),
//                             child: const Text("Log in", style: TextStyle(
//                                 color: Colors.transparent,
//                                 shadows: [Shadow(offset: Offset(0,-3),color: Colors.green)],
//                                 decoration: TextDecoration.underline,
//                                 decorationColor: Colors.green, decorationThickness:2, fontWeight: FontWeight.bold),))
//                       ],
//                     )
//
//                   ],
//                 ),
//               ),)
//         ));
//   }
// }
//
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     throw UnimplementedError();
//   }}
