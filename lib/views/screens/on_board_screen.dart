import 'package:flutter/material.dart';
import 'package:monitraka/views/screens/register/login_screen.dart';
import 'package:page_view_indicators/page_view_indicators.dart';
import 'package:monitraka/res/res.dart';
import 'package:monitraka/widgets/on_board_widget.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);
  static const id = '/OnBoard';
  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  @override
  Widget build(BuildContext context) {
    final controller = PageController(initialPage: 0);
    final pageNotifier = ValueNotifier<int>(0);
    return Scaffold(
      body: SafeArea(
        child: PageView(
          onPageChanged: (index) {
            pageNotifier.value = index;
          },
          controller: controller,
          children: [
            BoardItem(
                image: Resources.iStrings.onboard1,
                title: Resources.oString.obHead1,
                content: Resources.oString.obContent1),
            BoardItem(
                image: Resources.iStrings.onboard2,
                title: Resources.oString.obHead2,
                content: Resources.oString.obContent2),
            BoardItem(
                image: Resources.iStrings.onboard3,
                title: Resources.oString.obHead3,
                content: Resources.oString.obContent3),
            BoardItem(
                image: Resources.iStrings.onboard4,
                title: Resources.oString.obHead4,
                content: Resources.oString.obContent4),
          ],
        ),
      ),
      bottomSheet: Row(
        children: [
          const SizedBox(width: 30),
          TextButton(
            onPressed: () =>
                Navigator.pushReplacementNamed(context, LoginScreen.id),
            child: Text(
              'Skip',
              style: TextStyle(
                  color: Resources.color.cGreen,
                  fontSize: 18,
                  fontWeight: FontWeight.w400),
            ),
          ),
          const SizedBox(width: 70),
          CirclePageIndicator(
            dotColor: const Color(0xFFE9C60C),
            selectedDotColor: const Color(0xFF877203),
            currentPageNotifier: pageNotifier,
            itemCount: 4,
          ),
          const SizedBox(width: 70),
          TextButton(
            onPressed: () {
              controller.nextPage(
                  duration: const Duration(milliseconds: 400),
                  curve: Curves.easeOut);
            },
            child: Text('Next',
                style: TextStyle(
                    color: Resources.color.cBlack,
                    fontSize: 18,
                    fontWeight: FontWeight.w400)),
          ),
          const SizedBox(width: 30),
        ],
      ),
    );
  }
}
