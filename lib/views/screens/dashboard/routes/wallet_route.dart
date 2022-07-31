import 'package:flutter/material.dart';
import 'package:monitraka/views/screens/dashboard/wallet/wallet_screen.dart';

class WalletNav extends StatefulWidget {
  static const id = '/WalletNav';
  const WalletNav({Key? key}) : super(key: key);

  @override
  State<WalletNav> createState() => _WalletNavState();
}

final GlobalKey<NavigatorState> walletKey = GlobalKey<NavigatorState>();

class _WalletNavState extends State<WalletNav> {
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
                return const WalletScreen();
            }
            return const WalletScreen();
          },
        );
      },
    );
  }
}
