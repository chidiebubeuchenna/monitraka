import 'package:flutter/material.dart';
import 'package:monitraka/res/res.dart';
import 'package:monitraka/widgets/app_bar.dart';
import 'package:monitraka/widgets/boxes.dart';
import 'package:monitraka/widgets/text_field.dart';

class JoinCommunity extends StatefulWidget {
  const JoinCommunity({Key? key}) : super(key: key);
  static const id = '/JoinCommunity';

  @override
  State<JoinCommunity> createState() => _JoinCommunityState();
}

class _JoinCommunityState extends State<JoinCommunity> {
  int currentBtn = 0;
  // Map<Widget, Widget> communities = {
  //   Image.asset(Resources.iStrings.couples): const Icon()
  // };
  List<Widget> commTypes = [
    Containers(
      boxColor: Resources.color.cPink,
      boxInfo: Align(
        alignment: Alignment.centerRight,
        child:
            Image.asset(Resources.iStrings.moneyStairs, height: 20, width: 20),
      ),
    ),
  ];
  TextButton commType(String txt, int id, int selected) {
    return TextButton(
      onPressed: () {
        setState(() {
          currentBtn == selected ? selected = id : currentBtn = selected;
        });
      },
      style: TextButton.styleFrom(
        side: BorderSide(
          color: currentBtn == selected
              ? Resources.color.cYellow
              : Resources.color.cGreen,
        ),
        backgroundColor: currentBtn == selected
            ? Resources.color.fillColor
            : Resources.color.cWhite,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          topLeft: Radius.circular(8),
          topRight: Radius.circular(8),
          bottomRight: Radius.circular(8),
          bottomLeft: Radius.circular(4),
        )),
        minimumSize: const Size(71, 23),
      ),
      child: Text(
        txt,
        style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: Resources.color.hintText),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        appBar(() => Navigator.pop(context)),
        Text(
          'Communities',
          style: TextStyle(
              fontSize: 16,
              color: Resources.color.cBlack,
              fontWeight: FontWeight.w700),
        ),
        const SizedBox(height: 16),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: SpecialField(
              hint: 'Search Communities', icon: Icon(Icons.search)),
        ),
        Center(
          child: Image.asset(Resources.iStrings.couples),
        ),
        const SizedBox(height: 24),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            commType('Couples', 1, 1),
            commType('Daily Geng', 2, 2),
            commType('Weekly Fam', 3, 3)
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(width: 10),
            commType('Bi-Weekly guys', 4, 4),
            commType('Yearly OGs', 5, 5),
            commType('Students', 6, 6)
          ],
        ),
        const SizedBox(height: 8),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Icon(Icons.info_outline, size: 20, color: Colors.blue),
              Text(
                'No one can in the public community can see your profile.',
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w300,
                    color: Resources.color.hintText),
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
        const SizedBox(height: 6),
        Container(
          color: Colors.pink,
          width: 354,
          height: 245,
        )

        // commTypes[currentBtn]
      ],
    );
  }
}
