import 'package:flutter/material.dart';

class ActivityScreen extends StatefulWidget {
  static const id = '/Activity';

  const ActivityScreen({Key? key}) : super(key: key);

  @override
  State<ActivityScreen> createState() => _ActivityScreenState();
}

class _ActivityScreenState extends State<ActivityScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 200,
            ),
            Text('This is the activity page'),
          ],
        ),
      ),



    );
  }
}
