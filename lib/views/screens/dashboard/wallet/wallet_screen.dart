import 'package:flutter/material.dart';

import '../../../../res/res.dart';

class WalletScreen extends StatefulWidget {
  const WalletScreen({Key? key}) : super(key: key);

  @override
  State<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
  Container walletContainer(String walletTitle, Image walletImage) {
    return Container(
      height: 99,
      width: 167,
      decoration: BoxDecoration(
        color: Resources.color.cWhite,
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(8),
            topRight: Radius.circular(8),
            bottomLeft: Radius.circular(8),
            bottomRight: Radius.circular(4)),
        boxShadow: [
          BoxShadow(color: Colors.black.withOpacity(0.1), blurRadius: 25)
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          walletImage,
          Text(
            walletTitle,
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Resources.color.hintText),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Wallet',
            style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w900,
                color: Resources.color.cBlack),
          ),
          Align(
              alignment: Alignment.center,
              child: Image.asset(Resources.iStrings.moneyStairs)),
          const SizedBox(height: 30),
          Container(
            height: 69,
            padding: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(8),
                  bottomLeft: Radius.circular(8),
                  bottomRight: Radius.circular(4)),
              boxShadow: [
                BoxShadow(color: Colors.black.withOpacity(0.1), blurRadius: 25)
              ],
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(Resources.iStrings.wallet, width: 35, height: 35),
                const SizedBox(width: 10),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Cash Wallet',
                      style: TextStyle(
                          color: Resources.color.hintText,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      'NGN 100,000',
                      style: TextStyle(
                          color: Resources.color.headerText,
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 30),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: walletContainer('Add a bank account',
                        Image.asset(Resources.iStrings.wallet)),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: walletContainer('Create New Wallet',
                        Image.asset(Resources.iStrings.wallet)),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {},
                child: walletContainer('Add a Crypto Wallet',
                    Image.asset(Resources.iStrings.wallet)),
              ),
            ],
          )
        ],
      ),
    ));
  }
}
