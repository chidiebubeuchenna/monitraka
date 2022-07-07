import 'package:flutter/material.dart';
import 'package:monitraka/res/res.dart';
import 'package:monitraka/widgets/text_field.dart';

class SecurityScreen extends StatefulWidget {
  static const id = '/SecurityScreen';

  const SecurityScreen({Key? key}) : super(key: key);

  @override
  State<SecurityScreen> createState() => _SecurityScreenState();
}

class _SecurityScreenState extends State<SecurityScreen> {
  bool isSwitched = false;
  bool isSwitched2 = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Security',
                  style: TextStyle(
                      color: Resources.color.cGreen,
                      fontSize: 24,
                      fontWeight: FontWeight.w700),
                ),
                IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: Icon(Icons.cancel_outlined,
                      color: Resources.color.cGreen),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Show amount on dashboard', style: titleStyle),
                      Switch(
                        value: isSwitched2,
                        onChanged: (value) {
                          setState(() {
                            isSwitched2 = value;
                            print(isSwitched2);
                          });
                        },
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Enable Finger Print or face ID', style: titleStyle),
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
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
