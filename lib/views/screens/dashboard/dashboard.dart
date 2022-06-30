import 'package:flutter/material.dart';
import 'package:monitraka/res/res.dart';
import 'package:monitraka/views/screens/dashboard/activity_screen.dart';
import 'package:monitraka/views/screens/dashboard/profile_screen.dart';

class DashBoard extends StatefulWidget {
  static const id = '/DashBoard';

  const DashBoard({Key? key}) : super(key: key);

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  int _selectedItem = 0;
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
              SizedBox(height: 200),
              Text('This is the Dashboard'),
              TextButton(
                onPressed: () {},
                child: Text('This is Home'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, ActivityScreen.id);
                },
                child: Text('This is Activity'),
              ),
              TextButton(
                onPressed: () {},
                child: Text('This is Budgets'),
              ),
              TextButton(
                onPressed: () {},
                child: Text('This is Wallets'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, ProfileScreen.id);
                },
                child: Text('This is Profile'),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedItem,
        onTap: (int index) {
          setState(() {
            _selectedItem = index;
          });
        },
        selectedItemColor: Resources.color.cGreen,
        unselectedItemColor: Resources.color.hintText,
        unselectedLabelStyle: TextStyle(
            color: Resources.color.hintText, fontWeight: FontWeight.w600),
        items: [
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

class TabNavigation {
  static const String root = '/';
  static const String activity = '/activity';
}

class TabNavigator extends StatelessWidget {
  TabNavigator({required this.navKey});
  final GlobalKey<NavigatorState> navKey;

  final Map<String, WidgetBuilder> _routeBuilder = {
    TabNavigation.root: (context) => const DashBoard(),
    TabNavigation.activity: (context) => const ActivityScreen()
  };

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navKey,
      initialRoute: TabNavigation.root,
      onGenerateRoute: (routeSetting) {
        return MaterialPageRoute(
          builder: (context) => DashBoard(),
        );
      },
    );
  }
}
