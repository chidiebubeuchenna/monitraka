import 'package:flutter/material.dart';
// import 'package:monitraka/views/screens/dashboard/profile/contact_us.dart';
// import 'package:monitraka/views/screens/dashboard/profile/password_settings.dart';
import 'package:monitraka/views/screens/dashboard/profile/profile_screen.dart';
// import 'package:monitraka/views/screens/dashboard/profile/profile_settings.dart';

import '../profile/modal_screens/security.dart';

class ProfileNav extends StatefulWidget {
  const ProfileNav({Key? key}) : super(key: key);

  @override
  State<ProfileNav> createState() => _ProfileNavState();
}

final GlobalKey<NavigatorState> profileKey = GlobalKey<NavigatorState>();

class _ProfileNavState extends State<ProfileNav> {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: profileKey,
      onGenerateRoute: (settings) {
        return MaterialPageRoute(
          settings: settings,
          builder: (context) {
            switch (settings.name) {
              case '/':
                return const ProfileScreen();
              case '/Security':
                return const SecurityScreen();
              // case '/ProfileSettings':
              // //   return const ProfileSettings();
              // //  case '/PasswordSettings':
              // //   return const PasswordSettings();
              // // case '/ContactUs':
              // //   return const ContactUs();
            }
            return const ProfileScreen();
          },
        );
      },
    );
  }
}
