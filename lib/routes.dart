import 'package:flutter/material.dart';
import 'package:monitraka/view/screens/on_board_screen.dart';
import 'package:monitraka/view/screens/register/letsgo_screen.dart';
import 'package:monitraka/view/screens/register/login_screen.dart';
import 'package:monitraka/view/screens/register/signup_screen.dart';
import 'package:monitraka/view/screens/splash_screen.dart';

Map<String, Widget Function(BuildContext)> routes = {
  SplashScreen.id: (context) => const SplashScreen(),
  OnBoarding.id: (context) => const OnBoarding(),
  LoginScreen.id: (context) => const LoginScreen(),
  SignupScreen.id: (context) => const SignupScreen(),
  LetsGoScreen.id: (context) => const LetsGoScreen()
};
