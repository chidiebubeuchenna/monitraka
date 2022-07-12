import 'package:flutter/material.dart';
import 'package:monitraka/res/res.dart';
import 'package:monitraka/views/screens/register/login_screen.dart';
import 'package:monitraka/views/screens/register/signup_screen.dart';

class HomeScreen extends StatefulWidget {
  static const id = '/HomeScreen';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(Resources.iStrings.logo,
                    height: 120, alignment: Alignment.center),
              ],
            ),
            const SizedBox(height: 60),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Image.asset(Resources.iStrings.home, height: 280)],
            ),
            const SizedBox(height: 60),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: () =>
                        Navigator.pushNamed(context, LoginScreen.id),
                    style: ElevatedButton.styleFrom(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(8),
                            topRight: Radius.circular(8),
                            bottomRight: Radius.circular(8),
                            bottomLeft: Radius.circular(4)),
                      ),
                      side: const BorderSide(width: 1.5, color: Colors.yellow),
                      elevation: 0,
                      primary: Resources.color.cGreen,
                      textStyle: TextStyle(
                          color: Resources.color.cGreen,
                          fontWeight: FontWeight.w600,
                          fontSize: 16),
                      minimumSize: const Size(120, 50),
                    ),
                    child: Text(Resources.rString.lTitle),
                  ), //Log in
                  ElevatedButton(
                    onPressed: () =>
                        Navigator.pushNamed(context, SignupScreen.id),
                    style: ElevatedButton.styleFrom(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(8),
                            topRight: Radius.circular(8),
                            bottomRight: Radius.circular(8),
                            bottomLeft: Radius.circular(4)),
                      ),
                      side:
                          BorderSide(width: 1.5, color: Resources.color.cGreen),
                      elevation: 0,
                      primary: Colors.white,
                      textStyle: TextStyle(
                          color: Resources.color.cGreen,
                          fontWeight: FontWeight.w600,
                          fontSize: 16),
                      minimumSize: const Size(120, 50),
                    ),
                    child: Text(
                      Resources.rString.sTitle,
                      style: TextStyle(color: Resources.color.cBlack),
                    ),
                  ), //Sign up
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
