import 'package:flutter/material.dart';
import 'package:monitraka/views/screens/dashboard/activity/activity_screen.dart';

class ActivityNav extends StatefulWidget {
  const ActivityNav({Key? key}) : super(key: key);

  @override
  State<ActivityNav> createState() => _ActivityNavState();
}

final GlobalKey<NavigatorState> activityKey = GlobalKey<NavigatorState>();

class _ActivityNavState extends State<ActivityNav> {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: activityKey,
      onGenerateRoute: (settings) {
        return MaterialPageRoute(
          settings: settings,
          builder: (BuildContext context) {
            switch (settings.name) {
              case '/':
                return const ActivityScreen();
            }
            return const ActivityScreen();
          },
        );
      },
    );
  }
}
