import 'package:flutter/material.dart';
import 'package:monitraka/views/screens/dashboard/activity/activity_screen.dart';
import 'package:monitraka/views/screens/dashboard/activity/communities/join_comm.dart';
import 'package:monitraka/views/screens/dashboard/activity/communities/private_comm.dart';

class ActivityNav extends StatefulWidget {
  static const id = '/ActivityNav';
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
              case ActivityScreen.id:
                return const ActivityScreen();

              case JoinCommunity.id:
                return const JoinCommunity();

              case PrivateCommunity.id:
                return const PrivateCommunity();
            }
            return const ActivityScreen();
          },
        );
      },
    );
  }
}
