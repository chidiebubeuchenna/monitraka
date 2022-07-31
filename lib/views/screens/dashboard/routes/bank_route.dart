import 'package:flutter/material.dart';
import '../bank_account.dart';

class BankNav extends StatefulWidget {
  const BankNav({Key? key}) : super(key: key);

  @override
  State<BankNav> createState() => _BankNavState();
}

final GlobalKey<NavigatorState> walletKey = GlobalKey<NavigatorState>();

class _BankNavState extends State<BankNav> {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: walletKey,
      onGenerateRoute: (settings) {
        return MaterialPageRoute(
          settings: settings,
          builder: (BuildContext context) {
            switch (settings.name) {
              case '/':
                return const BankAccounts();
            }
            return const BankAccounts();
          },
        );
      },
    );
  }
}
