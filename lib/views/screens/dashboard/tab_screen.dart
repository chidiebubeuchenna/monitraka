import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:monitraka/views/screens/dashboard/routes/activity_route.dart';
import 'package:monitraka/views/screens/dashboard/routes/budget_route.dart';
import 'package:monitraka/views/screens/dashboard/routes/dashboard_routes.dart';
import 'package:monitraka/views/screens/dashboard/routes/profile_route.dart';
import 'package:monitraka/views/screens/dashboard/routes/wallet_route.dart';

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
    const DashboardNav(),
    const ActivityNav(),
    const BudgetNav(),
    const WalletNav(),
    const ProfileNav()
  ];
  final List<GlobalKey<NavigatorState>> _navigatorKeys = [
    dashboardKey,
    activityKey,
    budgetKey,
    walletKey,
    profileKey
  ];

  Future<bool> _systemBackButtonPressed() {
    if (_navigatorKeys[_selectedItem].currentState!.canPop()) {
      _navigatorKeys[_selectedItem]
          .currentState!
          .pop(_navigatorKeys[_selectedItem].currentContext);
    } else {
      SystemChannels.platform.invokeMethod<void>('SystemNavigator.pop');
    }
    throw {};
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _systemBackButtonPressed,
      child: Scaffold(
        body: pages.elementAt(_selectedItem),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedItem,
          onTap: (int index) {
            setState(() {
              _selectedItem = index;
            });
          },
          selectedIconTheme: IconThemeData(color: Resources.color.cGreen),
          unselectedIconTheme: IconThemeData(color: Resources.color.hintText),
          selectedItemColor: Resources.color.cBlack,
          unselectedItemColor: Resources.color.hintText,
          selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w600),
          unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.w600),
          showUnselectedLabels: true,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.refresh), label: 'Activity'),
            BottomNavigationBarItem(
                icon: Icon(Icons.bar_chart), label: 'Budget'),
            BottomNavigationBarItem(icon: Icon(Icons.wallet), label: 'Wallets'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ],
        ),
      ),
    );
  }
}
