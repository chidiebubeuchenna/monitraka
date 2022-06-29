import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  static const id = '/ProfileScreen';

  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 200,
            ),
            Text('This is a profile page'),
          ],
        ),
      ),



    );
  }
}

