import 'package:flutter/material.dart';

import '../../../../../../res/res.dart';

class Friends extends StatefulWidget {
  const Friends({Key? key}) : super(key: key);
  static const id = '/Friends';

  @override
  State<Friends> createState() => _FriendsState();
}

class _FriendsState extends State<Friends> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                const SizedBox(width: 10),
                TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: Text('Done',
                      style: TextStyle(
                          color: Resources.color.headerText,
                          fontWeight: FontWeight.w600,
                          fontSize: 16)),
                ),
                const SizedBox(width: 75),
                Text(
                  'Friends',
                  style: TextStyle(
                      color: Resources.color.cGreen,
                      fontWeight: FontWeight.w600,
                      fontSize: 18),
                ),
                const SizedBox(height: 70),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
