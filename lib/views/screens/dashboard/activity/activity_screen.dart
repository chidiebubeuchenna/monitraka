import 'package:flutter/material.dart';
import 'package:monitraka/res/res.dart';

class ActivityScreen extends StatefulWidget {
  static const id = '/Activity';

  const ActivityScreen({Key? key}) : super(key: key);

  @override
  State<ActivityScreen> createState() => _ActivityScreenState();
}

class _ActivityScreenState extends State<ActivityScreen> {
  Widget activity(IconData tileIcon, String title, void Function() nav) {
    return Container(
      child: ListTile(
        leading: Icon(tileIcon),
        title: Text(
          title,
          style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: Resources.color.cBlack),
        ),
        trailing: const Icon(Icons.navigate_next),
        onTap: nav,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              Text('Activity',
                  style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w900,
                      color: Resources.color.cBlack)),
              Align(
                  alignment: Alignment.center,
                  child: Image.asset(Resources.iStrings.moneyStairs)),
              const SizedBox(height: 30),
              activity(
                  Icons.shield_outlined, 'Create a private community', () {}),
              const SizedBox(height: 16),
              activity(Icons.groups_outlined, 'Join a community', () {})
            ],
          ),
        ),
      ),
    );
  }
}
