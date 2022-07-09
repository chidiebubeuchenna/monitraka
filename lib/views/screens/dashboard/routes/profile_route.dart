import 'package:flutter/material.dart';
import 'package:monitraka/views/screens/dashboard/profile/profile_screen.dart';

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
            }
            return const ProfileScreen();
          },
        );
      },
    );
  }
}
