import 'package:flutter/material.dart';
import 'package:monitraka/views/screens/dashboard/profile_screen.dart';

import '../../../res/res.dart';
import '../../../widgets/buttons.dart';
import '../../../widgets/text_field.dart';

class PasswordSettings extends StatefulWidget {
  static const id = '/PasswordSettings';

  const PasswordSettings({Key? key}) : super(key: key);

  @override
  State<PasswordSettings> createState() => _PasswordSettingsState();
}

class _PasswordSettingsState extends State<PasswordSettings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SingleChildScrollView(child: SafeArea(child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 16, left: 16, right: 16, bottom: 0), child: (
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text('Password Settings',
                      style: TextStyle(
                          color: Resources.color.cGreen,
                          fontSize: 24,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.close,
                          color: Resources.color.cGreen,)

                    ),
                  ],
                ),
              ],
            )
        ),
        ),
        Padding(padding: const EdgeInsets.only(right: 180, left: 16),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [Text('Change your password', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400, color: Resources.color.rgText),)],),
        ),
        const SizedBox(height: 20),
        const AppTextField(
            title: 'Old Password', obscureText: false, hint: ''),
        const SizedBox(height: 20),
        const AppTextField(
            title: 'New Password', obscureText: false, hint: ''),
        const SizedBox(height: 20),
        const AppTextField(
            title: 'Confirm New Password', obscureText: false, hint: ''),
        const SizedBox(height: 30),
        Button(
          title: 'Create Password',
          bgColor: Resources.color.cGreen,
          textColor: Resources.color.cWhite,
          btnAction: () {
            Navigator.pushNamed(context, ProfileScreen.id);
          },
        ),],)),),);
  }
}
