import 'package:flutter/material.dart';
import 'package:monitraka/views/screens/dashboard/activity_screen.dart';
import 'package:monitraka/views/screens/dashboard/profile_screen.dart';

class DashBoard extends StatefulWidget {
  static const id = '/DashBoard';

  const DashBoard({Key? key}) : super(key: key);

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 100,
              ),
              Text('This is the Dashboard'
              ),
              TextButton(onPressed: (){},
                  child: Text('This is Home'),),
              TextButton(onPressed: (){
                Navigator.pushNamed(context, ActivityScreen.id);
              },
                child: Text('This is Activity'),),
              TextButton(onPressed: (){},
                child: Text('This is Budgets'),),
              TextButton(onPressed: (){},
                child: Text('This is Wallets'),),
              TextButton(onPressed: (){
                Navigator.pushNamed(context, ProfileScreen.id);
              },
                child: Text('This is Profile'),)
            ],
          ),
        ),

      ),

    );
  }
}
