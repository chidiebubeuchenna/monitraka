import 'package:flutter/material.dart';
import 'package:monitraka/res/res.dart';

class ActivityScreen extends StatefulWidget {
  static const id = '/Activity';

  const ActivityScreen({Key? key}) : super(key: key);

  @override
  State<ActivityScreen> createState() => _ActivityScreenState();
}

class _ActivityScreenState extends State<ActivityScreen> {
  Widget activityTile(IconData tileIcon, String title, void Function() nav) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(8),
              topRight: Radius.circular(8),
              bottomRight: Radius.circular(8),
              bottomLeft: Radius.circular(4)),
          boxShadow: [
            BoxShadow(color: Colors.black.withOpacity(0.1), blurRadius: 25),
          ]),
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
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(8),
              topRight: Radius.circular(8),
              bottomRight: Radius.circular(8),
              bottomLeft: Radius.circular(4)),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
            activityTile(
                Icons.shield_outlined, 'Create a private community', () {}),
            const SizedBox(height: 16),
            activityTile(Icons.groups_outlined, 'Join a community', () {})
          ],
        ),
      ),
    );
  }
}
