import 'package:flutter/material.dart';

class TabNavigators {}

class BottomBarNav extends StatelessWidget {
  const BottomBarNav({Key? key, required this.navKey}) : super(key: key);
  final GlobalKey<NavigatorState> navKey;

  @override
  Widget build(BuildContext context) {
    return const Navigator();
  }
}
