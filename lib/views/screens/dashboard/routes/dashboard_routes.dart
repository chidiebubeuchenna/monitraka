import 'package:flutter/material.dart';
import 'package:monitraka/views/screens/dashboard/home/dashboard.dart';

class DashboardNav extends StatefulWidget {
  const DashboardNav({Key? key}) : super(key: key);

  @override
  State<DashboardNav> createState() => _DashboardNavState();
}

final GlobalKey<NavigatorState> dashboardKey = GlobalKey<NavigatorState>();

class _DashboardNavState extends State<DashboardNav> {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: dashboardKey,
      onGenerateRoute: (settings) {
        return MaterialPageRoute(
            settings: settings,
            builder: (BuildContext context) {
              switch (settings.name) {
                case '/':
                  return const DashBoard();
              }
              return const DashBoard();
            });
      },
    );
  }
}
