import 'package:flutter/material.dart';
import 'package:monitraka/res/res.dart';
import 'package:monitraka/widgets/text_field.dart';

securityModal(BuildContext context) {
  return showModalBottomSheet(
    isScrollControlled: true,
    context: context,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40), topRight: Radius.circular(40)),
    ),
    builder: (context) => const SecurityScreen(),
  );
}

class SecurityScreen extends StatefulWidget {
  const SecurityScreen({Key? key}) : super(key: key);

  @override
  State<SecurityScreen> createState() => _SecurityScreenState();
}

class _SecurityScreenState extends State<SecurityScreen> {
  bool isSwitched = false;
  bool isSwitched2 = false;

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      heightFactor: 0.7,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
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
            Column(
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
                        });
                      },
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
