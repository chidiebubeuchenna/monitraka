import 'package:flutter/material.dart';
import 'package:monitraka/res/res.dart';

import 'package:monitraka/widgets/app_bar.dart';
import 'package:monitraka/widgets/buttons.dart';
import 'package:monitraka/widgets/text_field.dart';

import 'modal_screens/add_friends_modal.dart';
import 'modal_screens/friends_modal.dart';

String select = '';
List<Widget> rowItem = [];
containerGen(String itemVal) {
  return Container(
    margin: const EdgeInsets.only(left: 12),
    width: 115,
    height: 23,
    decoration: BoxDecoration(
      color: Resources.color.cWhite,
      borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(8),
          topRight: Radius.circular(8),
          bottomRight: Radius.circular(8),
          bottomLeft: Radius.circular(4)),
    ),
    child: Center(
      child: Text(itemVal,
          style: TextStyle(
              color: Resources.color.hintText,
              fontSize: 12,
              fontWeight: FontWeight.w500)),
    ),
  );
}

rowGen() {
  return Row(
    children: rowItem,
  );
}

class PrivateCommunity extends StatefulWidget {
  const PrivateCommunity({Key? key}) : super(key: key);
  static const id = '/PrivateCommunity';

  @override
  State<PrivateCommunity> createState() => _PrivateCommunityState();
}

class _PrivateCommunityState extends State<PrivateCommunity> {
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
                  GestureDetector(
                    onTap: () {
                      setState(() {});
                      showModal(context);
                      setState(() {});
                    },
                    child: Container(
                      width: 374,
                      height: 52,
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                        color: Resources.color.fillColor,
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(8),
                          topRight: Radius.circular(8),
                          bottomRight: Radius.circular(8),
                          bottomLeft: Radius.circular(4),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          rowGen(),
                          const Icon(Icons.keyboard_arrow_down),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SizedBox(width: 20),
                      TextButton(
                        onPressed: () => addFriendModal(context),
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
                        onPressed: () => friendModal(context),
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
                    btnAction: () {},
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

showModal(context) {
  return showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40), topRight: Radius.circular(40)),
      ),
      builder: (context) => const BudgetInfo());
}

class BudgetInfo extends StatefulWidget {
  const BudgetInfo({Key? key}) : super(key: key);

  @override
  State<BudgetInfo> createState() => _BudgetInfoState();
}

class _BudgetInfoState extends State<BudgetInfo> {
  bool check2 = false;
  bool check3 = false;
  bool check1 = false;
  String title1 = 'Budget Amount';
  String title2 = 'Budget Name';
  String title3 = 'Budget Duration';
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: SingleChildScrollView(
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
            CheckboxListTile(
              value: check1,
              checkColor: Resources.color.cWhite,
              activeColor: Resources.color.cGreen,
              side: BorderSide(color: Resources.color.cGreen, width: 2),
              onChanged: (val) {
                setState(() {
                  check1 = val!;
                });
              },
              title: Text(title1),
            ),
            CheckboxListTile(
              value: check2,
              checkColor: Resources.color.cWhite,
              activeColor: Resources.color.cGreen,
              side: BorderSide(color: Resources.color.cGreen, width: 2),
              onChanged: (val) {
                setState(() {
                  check2 = val!;
                });
              },
              title: Text(title2),
            ),
            CheckboxListTile(
              value: check3,
              checkColor: Resources.color.cWhite,
              activeColor: Resources.color.cGreen,
              side: BorderSide(color: Resources.color.cGreen, width: 2),
              onChanged: (val) {
                setState(() {
                  check3 = val!;
                });
              },
              title: Text(title3),
            ),
            const SizedBox(height: 16),
            Button(
                title: 'Done',
                textColor: Resources.color.cWhite,
                bgColor: Resources.color.cGreen,
                btnAction: () {
                  Navigator.pop(context);
                  if (check1 == true) {
                    setState(() {
                      select = title1;
                      rowItem.add(containerGen(select));
                    });
                  } else if (check2 == true) {
                    setState(() {
                      select = title2;
                      rowItem.add(containerGen(select));
                    });
                  } else if (check3 == true) {
                    setState(() {
                      select = title3;
                      rowItem.add(containerGen(select));
                    });
                  } else {
                    return null;
                  }
                })
          ],
        ),
      ),
    );
  }
}
