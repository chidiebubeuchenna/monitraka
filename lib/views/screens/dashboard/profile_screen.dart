import 'package:flutter/material.dart';
import 'package:monitraka/res/res.dart';
import 'package:monitraka/views/screens/dashboard/security_screen.dart';
import 'package:monitraka/views/screens/intro/home_screen.dart';
import 'package:monitraka/views/screens/register/login_screen.dart';

class ProfileScreen extends StatefulWidget {
  static const id = '/ProfileScreen';

  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool isSwitched = false;

  // List profileItems = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(Resources.pStrings.psHead,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24
                    ),
                    ),
                    Text(Resources.pStrings.psSub,
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                    ),
                    ),
                    SizedBox(
                      height: 10,
                    ),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      Center(child: Image.asset(Resources.iStrings.moneyStairs,)),
                        // Center(
                        //   child: Row(
                        //     children: [
                        //       Center(child: Image.asset(Resources.iStrings.moneyStairs,
                        //         alignment: Alignment.center,)),
                        //     ],
                        //   ),
                        // ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  padding: EdgeInsets.all(8),
                                  width:280,
                                  // height: 40,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(8),
                                        topRight: Radius.circular(8),
                                        bottomRight: Radius.circular(8),
                                        bottomLeft: Radius.circular(4)
                                    ),

                                    border: Border.all(
                                        color: Resources.color.cGreen,
                                        width: 1
                                    ),
                                    color: Resources.color.cWhite,

                                    boxShadow: [
                                  BoxShadow(
                                  color: Resources.color.bBlack,
                                    offset: const Offset(
                                      5.0,
                                      5.0,
                                    ),
                                    blurRadius: 10.0,
                                    spreadRadius: 2.0,
                                  ), //


                                  ],
                                  ),
                                  child:
                                  // Image.asset(Resources.iStrings.profilePic),
                                  Container(
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Text('Account Name',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Text('Tom Ogbu',
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),

                                  ),

                                ),
                              )

                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    'Reminder'
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Switch(
                                      value: isSwitched,
                                      onChanged: (value) {
                                        setState(
                                            () {
                                              isSwitched = value;
                                              print(isSwitched);
                                            }
                                        );
                                      },
                                    // activeTrackColor: Resources.color.cGreen,
                                    // activeColor: Resources.color.cYellow,
                                      ),

                                ],
                              )
                            ],
                          ),
                        ),

                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.all(8.0),
                      width: 320,
                      // height: 50,

                      // child: ListView.builder(
                      //     itemBuilder: (context, index) => const Card(
                      //       child: ListTile(
                      //         title: Text('Profile Settings',
                      //         style: TextStyle(
                      //           color: Colors.green,
                      //         ),
                      //         ),
                      //       ),
                      //     )),

                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(8),
                            topRight: Radius.circular(8),
                            bottomRight: Radius.circular(8),
                            bottomLeft: Radius.circular(4)
                        ),
                    //
                        border: Border.all(
                            color: Resources.color.cGreen,
                            width: 1
                        ),
                        color: Resources.color.cWhite,
                    ),
                    //
                    // // child: ListView.builder(
                    // //   itemCount: 2,
                    // //     itemBuilder: (context, index) => Card(
                    // //     child: ListTile(
                    // //       title: GestureDetector(
                    // //         onTap: (){
                    // //           Navigator.pushNamed(context, LoginScreen.id);
                    // //         },
                    //   child: GestureDetector(
                    //     onTap: (){
                    //       Navigator.pushNamed(context, LoginScreen.id);
                    //     },
                    //     child:    Text('Profile Settings'),
                      child: GestureDetector(
                        onTap: (){
                          Navigator.pushNamed(context, LoginScreen.id);
                        },
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Icon(Icons.account_circle_outlined,
                                  size: 30,
                                  color: Resources.color.cYellow,
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 10,
                              ),
                              child: Column(
                                children: [
                                  Text('Profile Settings')
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    //
                    //
                    //       ),
                        ), //Profile Settings
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      padding: EdgeInsets.all(8.0),
                      width: 320,

                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(8),
                            topRight: Radius.circular(8),
                            bottomRight: Radius.circular(8),
                            bottomLeft: Radius.circular(4)
                        ),
                        //
                        border: Border.all(
                            color: Resources.color.cGreen,
                            width: 1
                        ),
                        color: Resources.color.cWhite,
                      ),
                      //

                      child: GestureDetector(
                        onTap: (){
                          Navigator.pushNamed(context, SecurityScreen.id);
                        },
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Icon(Icons.safety_check_sharp,
                                  size: 30,
                                  color: Resources.color.cYellow,
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 10,
                              ),
                              child: Column(
                                children: [
                                  Text('Security')
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      //
                      //
                      //       ),
                    ), //Security
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      padding: EdgeInsets.all(8.0),
                      width: 320,

                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(8),
                            topRight: Radius.circular(8),
                            bottomRight: Radius.circular(8),
                            bottomLeft: Radius.circular(4)
                        ),
                        //
                        border: Border.all(
                            color: Resources.color.cGreen,
                            width: 1
                        ),
                        color: Resources.color.cWhite,
                      ),
                      //

                      child: Row(
                        children: [
                          Column(
                            children: [
                              Icon(Icons.password,
                                size: 30,
                                color: Resources.color.cYellow,
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 10,
                            ),
                            child: Column(
                              children: [
                                Text('Password Settings')
                              ],
                            ),
                          )
                        ],
                      ),
                      //
                      //
                      //       ),
                    ), //Password Settings
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      padding: EdgeInsets.all(8.0),
                      width: 320,

                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(8),
                            topRight: Radius.circular(8),
                            bottomRight: Radius.circular(8),
                            bottomLeft: Radius.circular(4)
                        ),
                        //
                        border: Border.all(
                            color: Resources.color.cGreen,
                            width: 1
                        ),
                        color: Resources.color.cWhite,
                      ),
                      //

                      child: Row(
                        children: [
                          Column(
                            children: [
                              Icon(Icons.call_rounded,
                                size: 30,
                                color: Resources.color.cYellow,
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 10,
                            ),
                            child: Column(
                              children: [
                                Text('Contact Us')
                              ],
                            ),
                          )
                        ],
                      ),
                      //
                      //
                      //       ),
                    ), //Contact Us
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      padding: EdgeInsets.all(8.0),
                      width: 320,

                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(8),
                            topRight: Radius.circular(8),
                            bottomRight: Radius.circular(8),
                            bottomLeft: Radius.circular(4)
                        ),
                        //
                        border: Border.all(
                            color: Resources.color.cGreen,
                            width: 1
                        ),
                        color: Resources.color.cWhite,
                      ),
                      //

                      child: GestureDetector(
                        onTap: () {
                          showModalBottomSheet(
                              context: context,
                              builder: (context) => Container(
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 80,
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Text('Are you sure you want to log out?',
                                        style: TextStyle(
                                          color: Resources.color.cGreen,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                        ),
                                        )
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(16.0),
                                      child: Container(

                                        // decoration: BoxDecoration(
                                        //   borderRadius: BorderRadius.only(
                                        //       topLeft: Radius.circular(8),
                                        //       topRight: Radius.circular(8),
                                        //       bottomRight: Radius.circular(8),
                                        //       bottomLeft: Radius.circular(4)
                                        //   ),




                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                                          children: [
                                            Column(
                                              children: [
                                                ElevatedButton(
                                                  onPressed: () =>
                                                      Navigator.pushNamed(context, HomeScreen.id),
                                                  style: ElevatedButton.styleFrom(
                                                    shape: RoundedRectangleBorder(
                                                      borderRadius:   BorderRadius.only(
                                                        topLeft: Radius.circular(8),
                                                        topRight: Radius.circular(8),
                                                        bottomLeft: Radius.circular(4),
                                                        bottomRight: Radius.circular(8)
                                                      ),
                                                    ),
                                                    elevation: 0,
                                                    primary: Resources.color.cGreen,
                                                    textStyle: TextStyle(
                                                        color: Resources.color.cGreen,
                                                        fontWeight: FontWeight.w600,
                                                        fontSize: 16),
                                                    minimumSize: const Size(150, 30),
                                                  ),
                                                  child: Text('YES',
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.bold
                                                  ),
                                                  ),
                                                ), //Yes
                                              ],
                                            ),
                                            Column(
                                              children: [
                                                ElevatedButton(
                                                onPressed: () =>
                                  Navigator.pop(context),
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius:   BorderRadius.only(
                                    topLeft: Radius.circular(8),
                                    topRight: Radius.circular(8),
                                    bottomLeft: Radius.circular(4),
                                    bottomRight: Radius.circular(8)
                                ),
                              ),
                              elevation: 0,
                              primary: Resources.color.cGreen,
                              textStyle: TextStyle(
                                  color: Resources.color.cGreen,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16),
                              minimumSize: const Size(150, 30),
                            ),
                            child: Text('NO',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ));
                        },
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Icon(Icons.logout,
                                  size: 30,
                                  color: Resources.color.redText,
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 10,
                              ),
                              child: Column(
                                children: [
                                  Text('Log out')
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      //
                      //
                      //       ),
                    ),//Log out

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

