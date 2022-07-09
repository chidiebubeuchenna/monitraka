import 'package:flutter/material.dart';
import 'package:monitraka/views/screens/dashboard/activity/communities/friends/add_friends_modal.dart';
import 'package:monitraka/views/screens/dashboard/activity/communities/friends/friend_profile_modal.dart';

import '../../../../../../res/res.dart';

int friendNo = 0;
String friendName = 'Kayboy Odinaka';

friendModal(BuildContext context) {
  return showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40), topRight: Radius.circular(40)),
      ),
      builder: (context) => const Friends());
}

class Friends extends StatefulWidget {
  const Friends({Key? key}) : super(key: key);

  @override
  State<Friends> createState() => _FriendsState();
}

class _FriendsState extends State<Friends> {
  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      heightFactor: 0.9,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
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
                const SizedBox(width: 90),
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
            TextButton(
              onPressed: () => addFriendModal(context),
              style: TextButton.styleFrom(
                  backgroundColor: Resources.color.fillColor,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8),
                    topRight: Radius.circular(8),
                    bottomRight: Radius.circular(8),
                    bottomLeft: Radius.circular(4),
                  )),
                  minimumSize: const Size(356, 52)),
              child: Wrap(
                children: [
                  Icon(Icons.person_add_outlined,
                      size: 18, color: Resources.color.cBlack),
                  const SizedBox(width: 4),
                  Text('Add Friends',
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 12,
                          color: Resources.color.cBlack)),
                ],
              ),
            ),
            const SizedBox(height: 35),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text('$friendNo friend')),
                ListView.builder(
                    shrinkWrap: true,
                    itemCount: 1,
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: const CircleAvatar(
                            child: Icon(Icons.account_circle)),
                        title: Text(friendName),
                        trailing: const Icon(Icons.keyboard_arrow_down),
                        onTap: () => friendProfileModal(context),
                      );
                    }),
                const Divider(thickness: 1, indent: 20, endIndent: 20)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
