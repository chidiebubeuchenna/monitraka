import 'package:flutter/material.dart';
import 'package:monitraka/views/screens/dashboard/activity/activity_screen.dart';
import 'package:monitraka/views/screens/dashboard/budget/budget_screen.dart';
import 'package:monitraka/views/screens/dashboard/home/dashboard.dart';
import 'package:monitraka/views/screens/dashboard/profile/profile_screen.dart';
import 'package:monitraka/views/screens/dashboard/wallet/wallet_screen.dart';

import '../../../res/res.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({Key? key}) : super(key: key);
  static const id = '/TabScreen';

  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  int _selectedItem = 0;

  final pages = [
    const DashBoard(),
    const ActivityScreen(),
    const Budget(),
    const WalletScreen(),
    const ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages.elementAt(_selectedItem),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedItem,
        onTap: (int index) {
          setState(() {
            _selectedItem = index;
          });
        },
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedIconTheme: IconThemeData(color: Resources.color.cGreen),
        unselectedIconTheme: IconThemeData(color: Resources.color.hintText),
        selectedLabelStyle: TextStyle(
            color: Resources.color.cBlack, fontWeight: FontWeight.w600),
        unselectedLabelStyle: TextStyle(
            color: Resources.color.hintText, fontWeight: FontWeight.w600),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.refresh), label: 'Activity'),
          BottomNavigationBarItem(icon: Icon(Icons.bar_chart), label: 'Budget'),
          BottomNavigationBarItem(icon: Icon(Icons.wallet), label: 'Wallets'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
