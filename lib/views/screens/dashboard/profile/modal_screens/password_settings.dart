import 'package:flutter/material.dart';
import 'package:monitraka/widgets/text_field.dart';

import '../../../../../res/res.dart';
import '../../../../../widgets/buttons.dart';

passwordSettingsModal(BuildContext context) {
  return showModalBottomSheet(
    isScrollControlled: true,
    context: context,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40), topRight: Radius.circular(40)),
    ),
    builder: (context) => const PasswordSettings(),
  );
}

class PasswordSettings extends StatefulWidget {
  const PasswordSettings({Key? key}) : super(key: key);

  @override
  State<PasswordSettings> createState() => _PasswordSettingsState();
}

class _PasswordSettingsState extends State<PasswordSettings> {
  final TextEditingController _oPasswordController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _cPasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      heightFactor: 0.7,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Password Settings',
                    style: TextStyle(
                        color: Resources.color.cGreen,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: Icon(Icons.cancel_outlined,
                        color: Resources.color.cGreen),
                  ),
                ],
              ),
              Text(
                'Change your password',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Resources.color.rgText),
              ),
              const SizedBox(height: 20),
              Text(
                'Old Password',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Resources.color.rgText),
              ),
              const SizedBox(height: 15),
              CommonTextField(
                  // obscureText: false,
                  controller: _oPasswordController,
                  hint: ''),
              const SizedBox(height: 30),
              Text(
                'New Password',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Resources.color.rgText),
              ),
              const SizedBox(height: 15),
              CommonTextField(
                  // obscureText: false,
                  controller: _passwordController,
                  hint: ''),
              const SizedBox(height: 30),
              Text(
                'Confirm New Password',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Resources.color.rgText),
              ),
              const SizedBox(height: 15),
              CommonTextField(
                  // obscureText: false,
                  controller: _cPasswordController,
                  hint: ''),
              const SizedBox(height: 30),
              Button(
                title: 'Create Password',
                bgColor: Resources.color.cGreen,
                textColor: Resources.color.cWhite,
                btnAction: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
