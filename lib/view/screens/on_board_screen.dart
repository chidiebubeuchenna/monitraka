import 'package:flutter/material.dart';
import 'package:monitraka/res/res.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);
  static const id = '/OnBoard';
  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            PageView(),
            Row(
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Skip',
                    style: TextStyle(
                        color: Resources.color.cGreen,
                        fontSize: 18,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                TextButton(onPressed: () {}, child: Text('Next'))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
