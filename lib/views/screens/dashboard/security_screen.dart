import 'package:flutter/material.dart';
import 'package:monitraka/res/res.dart';

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
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: (
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text('Security',
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
              Padding(
                padding: const EdgeInsets.only(
                    left: 16,
                  right: 16,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text('Show amount on dashboard')
                      ],
                    ),
                    Column(
                      children: [
                        Switch(value: isSwitched2,
                          onChanged: (value) {
                            setState(
                                    () {
                                  isSwitched2 = value;
                                  print(isSwitched2);
                                }
                            );
                          },)
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 16,
                  right: 16,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text('Enable Finger Print or face ID')
                      ],
                    ),
                    Column(
                      children: [
                        Switch(value: isSwitched,
                          onChanged: (value) {
                            setState(
                                    () {
                                  isSwitched = value;
                                  print(isSwitched);
                                }
                            );
                          },)
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
