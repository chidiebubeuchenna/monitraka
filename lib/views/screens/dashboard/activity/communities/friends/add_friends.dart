import 'package:flutter/material.dart';
import 'package:monitraka/res/res.dart';
import 'package:monitraka/widgets/text_field.dart';

class AddFriends extends StatefulWidget {
  const AddFriends({Key? key}) : super(key: key);
  static const id = '/AddFriends';

  @override
  State<AddFriends> createState() => _AddFriendsState();
}

class _AddFriendsState extends State<AddFriends> {
  Widget contactTile(Icon tileIcon, String title, void Function() nav) {
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
        leading: tileIcon,
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
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
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
                    'Add Friends',
                    style: TextStyle(
                        color: Resources.color.cGreen,
                        fontWeight: FontWeight.w600,
                        fontSize: 18),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SpecialField(
                        hint: 'Name or email', icon: Icon(Icons.search)),
                    const SizedBox(height: 30),
                    Text(
                      'See which of your friends are on the Monitraka app.',
                      style: TextStyle(
                          color: Resources.color.hintText,
                          fontSize: 12,
                          fontWeight: FontWeight.w300),
                    ),
                    const SizedBox(height: 16),
                    contactTile(
                        Icon(Icons.perm_contact_cal,
                            color: Resources.color.cYellow),
                        'Connect with Contacts',
                        () {}),
                    const SizedBox(height: 16),
                    contactTile(const Icon(Icons.facebook, color: Colors.blue),
                        'Connect through Facebook', () {})
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
