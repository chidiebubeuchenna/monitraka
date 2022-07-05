import 'package:flutter/material.dart';

class DashBoard extends StatefulWidget {
  static const id = '/DashBoard';

  const DashBoard({Key? key}) : super(key: key);

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.all(24.0),
        child: Center(
          child: Text('Dashboard'),
        ),
      ),
    );
  }
}
