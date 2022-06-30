// import 'dart:js';

import 'package:flutter/material.dart';

import 'package:monitraka/views/screens/dashboard/activity/activity_screen.dart';
import 'package:monitraka/views/screens/dashboard/home/dashboard.dart';
import 'package:monitraka/views/screens/dashboard/profile/profile_screen.dart';
import 'package:monitraka/views/screens/dashboard/tab_screen.dart';
import 'package:monitraka/views/screens/intro/home_screen.dart';
import 'package:monitraka/views/screens/intro/on_board_screen.dart';
import 'package:monitraka/views/screens/intro/splash_screen.dart';
import 'package:monitraka/views/screens/password_correction/create_new_password.dart';
import 'package:monitraka/views/screens/password_correction/forgot_screen.dart';
import 'package:monitraka/views/screens/password_correction/password_created.dart';
import 'package:monitraka/views/screens/password_correction/password_reset.dart';
import 'package:monitraka/views/screens/register/letsgo_screen.dart';
import 'package:monitraka/views/screens/register/login_screen.dart';
import 'package:monitraka/views/screens/register/signup_screen.dart';

Map<String, WidgetBuilder> routes = {
  SplashScreen.id: (context) => const SplashScreen(),
  OnBoarding.id: (context) => const OnBoarding(),
  LoginScreen.id: (context) => const LoginScreen(),
  SignupScreen.id: (context) => const SignupScreen(),
  ForgotPassword.id: (context) => const ForgotPassword(),
  PasswordReset.id: (context) => const PasswordReset(),
  CreatePassword.id: (context) => const CreatePassword(),
  PasswordCreated.id: (context) => const PasswordCreated(),
  LetsGoScreen.id: (context) => const LetsGoScreen(),
  HomeScreen.id: (context) => const HomeScreen(),
  TabScreen.id: (context) => const TabScreen()
};
