import 'package:flutter/material.dart';
import 'package:monitraka/main.dart';
import 'package:monitraka/providers/reg_prov.dart';
import 'package:monitraka/res/res.dart';
import 'package:monitraka/views/screens/dashboard/activity/communities/friends/friends.dart';
import 'package:monitraka/widgets/app_bar.dart';
import 'package:monitraka/widgets/buttons.dart';
import 'package:monitraka/widgets/text_field.dart';
import 'package:provider/provider.dart';

import 'friends/add_friends.dart';

class PrivateCommunity extends StatefulWidget {
  const PrivateCommunity({Key? key}) : super(key: key);
  static const id = '/PrivateCommunity';

  @override
  State<PrivateCommunity> createState() => _PrivateCommunityState();
}

class _PrivateCommunityState extends State<PrivateCommunity> {
  showModal(context) {
    // int currentCheckBox = 0;
    Row modalOptions(String text, int id) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(text,
              style: TextStyle(
                  color: Resources.color.headerText,
                  fontSize: 16,
                  fontWeight: FontWeight.w500)),
          Consumer<RegAuth>(
            builder: (BuildContext context, value, Widget? child) => Checkbox(
              value: value.checkBox,
              onChanged: (val) => value.box(),
              checkColor: Resources.color.cGreen,
              activeColor: Resources.color.cWhite,
            ),
          )
        ],
      );
    }

    return showModalBottomSheet(
      context: context,
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Text(
                'What do you want to make open\n '
                ' to your team?',
                style: TextStyle(
                    color: Resources.color.cGreen,
                    fontSize: 18,
                    fontWeight: FontWeight.w700),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              modalOptions('Budget Account', 1),
              modalOptions('Budget Name', 2),
              modalOptions('Budget Duration', 3),
              const SizedBox(height: 16),
              Button(
                  title: 'Done',
                  textColor: Resources.color.cWhite,
                  bgColor: Resources.color.cGreen,
                  btnAction: () => Navigator.pop(context))
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            appBar(() => Navigator.pop(context)),
            Text(
              'You can create a team/community where you\n'
              'choose who you share your progress with or'
              '\n make a budget goal with.',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Resources.color.cBlack),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(Icons.info_outline, size: 20, color: Colors.blue),
                  Text(
                    'You can choose what you want your private community\n to see.',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                        color: Resources.color.hintText),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Team/Community Name',
                    style: TextStyle(
                        color: Resources.color.headerText,
                        fontSize: 12,
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 11),
                  const SpecialField(hint: 'Best Friends', icon: null),
                  const SizedBox(height: 17.5),
                  Text(
                    'Select what you want your team members to see',
                    style: TextStyle(
                        color: Resources.color.headerText,
                        fontSize: 12,
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 11),
                  const SpecialField(hint: 'Drop down here', icon: null),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SizedBox(width: 20),
                      TextButton(
                        onPressed: () => Monitraka.mainAppKey.currentState!
                            .pushNamed(AddFriends.id),
                        style: TextButton.styleFrom(
                            side: const BorderSide(
                                color: Color.fromRGBO(19, 109, 49, 0.5)),
                            backgroundColor: Resources.color.cWhite,
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(8),
                                  topRight: Radius.circular(8),
                                  bottomRight: Radius.circular(8),
                                  bottomLeft: Radius.circular(4)),
                            ),
                            minimumSize: const Size(112, 23)),
                        child: Row(
                          children: [
                            Icon(Icons.add,
                                size: 12, color: Resources.color.headerText),
                            const SizedBox(width: 4),
                            Text(
                              'Add Friends',
                              style: TextStyle(
                                  color: Resources.color.headerText,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ),
                      TextButton(
                        onPressed: () => Monitraka.mainAppKey.currentState!
                            .pushNamed(Friends.id),
                        style: TextButton.styleFrom(
                            side: const BorderSide(
                                color: Color.fromRGBO(19, 109, 49, 0.5)),
                            backgroundColor: Resources.color.cWhite,
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(8),
                                  topRight: Radius.circular(8),
                                  bottomRight: Radius.circular(8),
                                  bottomLeft: Radius.circular(4)),
                            ),
                            minimumSize: const Size(112, 33)),
                        child: Row(
                          children: [
                            Icon(Icons.people_alt,
                                size: 14, color: Resources.color.cBlack),
                            const SizedBox(width: 4),
                            Text(
                              'My Friends',
                              style: TextStyle(
                                  color: Resources.color.headerText,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(width: 20),
                    ],
                  ),
                  const SizedBox(height: 30),
                  Button(
                    title: 'Create team',
                    textColor: Resources.color.cWhite,
                    bgColor: Resources.color.cGreen,
                    btnAction: () => showModal(context),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
