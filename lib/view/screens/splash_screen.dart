import 'package:flutter/material.dart';
import 'package:monitraka/res/res.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text(Resources.rString.fContent,
                style: TextStyle(color: Resources.color.cGreen, fontSize: 32))
          ],
        ),
      ),
    );
  }
}
