import 'package:flutter/material.dart';
import 'package:monitraka/views/screens/dashboard/budget/budget_screen.dart';
import 'package:monitraka/views/screens/dashboard/budget/custom_plan.dart';

class BudgetNav extends StatefulWidget {
  static const id = '/BudgetNav';
  const BudgetNav({Key? key}) : super(key: key);

  @override
  State<BudgetNav> createState() => _BudgetNavState();
}

final GlobalKey<NavigatorState> budgetKey = GlobalKey<NavigatorState>();

class _BudgetNavState extends State<BudgetNav> {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: budgetKey,
      onGenerateRoute: (settings) {
        return MaterialPageRoute(
          settings: settings,
          builder: (BuildContext context) {
            switch (settings.name) {
              case Budget.id:
                return const Budget();
              case CustomPlan.id:
                return const CustomPlan();
            }
            return const Budget();
          },
        );
      },
    );
  }
}
