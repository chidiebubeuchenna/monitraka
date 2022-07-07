// import 'dart:js';

// import 'dart:js';

import 'package:flutter/material.dart';
import 'package:monitraka/views/screens/dashboard/activity/communities/friends/add_friends.dart';
import 'package:monitraka/views/screens/dashboard/activity/communities/friends/friends.dart';
import 'package:monitraka/views/screens/dashboard/profile/security_screen.dart';
import 'package:monitraka/views/screens/dashboard/contact_us.dart';
import 'package:monitraka/views/screens/dashboard/password_settings.dart';
import 'package:monitraka/views/screens/dashboard/profile_screen.dart';
import 'package:monitraka/views/screens/dashboard/profile_settings.dart';
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
  TabScreen.id: (context) => const TabScreen(),
  SecurityScreen.id: (context) => const SecurityScreen(),
  ProfileSettings.id: (context) => ProfileSettings(),
  PasswordSettings.id: (context) => const PasswordSettings(),
  ContactUs.id: (context) => const ContactUs(),
  ProfileScreen.id: (context) => const ProfileScreen(),
  AddFriends.id: (context) => const AddFriends(),
  Friends.id: (context) => const Friends()
};
