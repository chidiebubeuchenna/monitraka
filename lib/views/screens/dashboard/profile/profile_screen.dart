import 'package:flutter/material.dart';
import 'package:monitraka/main.dart';
import 'package:monitraka/res/res.dart';
import 'package:monitraka/views/screens/register/login_screen.dart';
import 'package:monitraka/widgets/tiles.dart';

import '../../../../viewmodels/user_view_model.dart';

class ProfileScreen extends StatefulWidget {
  static const id = '/ProfileScreen';

  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool isSwitched = false;
  final userInfo = UserViewModel();
  ElevatedButton modalButton(Function() option, String data) {
    return ElevatedButton(
      onPressed: option,
      style: ElevatedButton.styleFrom(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8),
                topRight: Radius.circular(8),
                bottomLeft: Radius.circular(4),
                bottomRight: Radius.circular(8)),
          ),
          elevation: 0,
          primary: Resources.color.cGreen,
          textStyle: TextStyle(
              color: Resources.color.cWhite,
              fontWeight: FontWeight.w600,
              fontSize: 12),
          minimumSize: const Size(150, 30)),
      child: Text(data),
    );
  }

  showModal() {
    return showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40), topRight: Radius.circular(40)),
      ),
      builder: (context) {
        return Column(
          children: [
            const SizedBox(height: 80),
            Text(
              'Are you sure you want to log out?',
              style: TextStyle(
                  color: Resources.color.cGreen,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
            const SizedBox(height: 32),
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              modalButton(
                  () => Monitraka.mainAppKey.currentState!
                      .pushNamed(LoginScreen.id),
                  'YES'),
              modalButton(() => Navigator.pop(context), 'NO')
            ])
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              Text(
                Resources.pStrings.psHead,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    color: Resources.color.cBlack),
              ),
              Text(
                Resources.pStrings.psSub,
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 12,
                    color: Resources.color.headerText),
              ),
              const SizedBox(height: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(child: Image.asset(Resources.iStrings.moneyStairs)),
                  const SizedBox(height: 20),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12, vertical: 15),
                    width: 335,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(8),
                          topRight: Radius.circular(8),
                          bottomRight: Radius.circular(8),
                          bottomLeft: Radius.circular(4)),
                      border: Border.all(color: Resources.color.cGreen),
                      color: Resources.color.cWhite,
                      boxShadow: [
                        BoxShadow(
                          color: Resources.color.bBlack,
                          offset: const Offset(7, 7),
                          blurRadius: 10.0,
                        ), //
                      ],
                    ),
                    child: Row(
                      children: [
                        const CircleAvatar(
                          radius: 22.5,
                          child: Icon(Icons.account_circle),
                        ),
                        const SizedBox(width: 7),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Account Name'),
                            Text(userInfo.user.name)
                          ],
                        ),
                        const SizedBox(width: 70),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [Text('Traka Id'), Text(userInfo.user.id)],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 330,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Reminder'),
                        Switch(
                          value: isSwitched,
                          onChanged: (value) {
                            setState(() {
                              isSwitched = value;
                              print(isSwitched);
                            });
                          },
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              profileTile(Icons.manage_accounts, 'Profile Settings', () {}),
              const SizedBox(height: 30),
              profileTile(Icons.safety_check_sharp, 'Security',
                  () => Navigator.pushNamed(context, '/Security')),
              const SizedBox(height: 30),
              profileTile(Icons.password, 'Password', () {}),
              const SizedBox(height: 30),
              profileTile(Icons.call_rounded, 'Contact us', () {}),
              const SizedBox(height: 30),
              profileTile(Icons.logout, 'Log out', showModal),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
