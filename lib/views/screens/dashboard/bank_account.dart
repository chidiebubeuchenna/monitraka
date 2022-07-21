import 'package:flutter/material.dart';
import 'package:monitraka/views/screens/dashboard/wallet/wallet_screen.dart';

import '../../../res/res.dart';
import '../../../widgets/app_bar.dart';

class BankAccounts extends StatefulWidget {
  const BankAccounts({Key? key}) : super(key: key);
  static const id = '/BankAccounts';

  @override
  State<BankAccounts> createState() => _BankAccountsState();
}

class _BankAccountsState extends State<BankAccounts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(() => null),
      backgroundColor: Resources.color.cWhite,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children:<Widget> [
                const SizedBox(height: 10,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      ' All Bank\nAccounts',
                      style: TextStyle(
                          color: Resources.color.cGreen,
                          fontWeight: FontWeight.w700,
                          fontSize: 40),),
                    FloatingActionButton.small(
                      backgroundColor: Resources.color.fillColor,
                      onPressed: (){},
                      child: Center(child: const Text('+', style: TextStyle(color: Colors.black, fontSize: 28, fontWeight: FontWeight.w900 ),)))],),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Link your bank accounts',
                    style: TextStyle(
                        color: Resources.color.rgText,
                        fontWeight: FontWeight.w500,
                        fontSize: 18),),
                ),
                const SizedBox(height: 70),
                Column(children: [
                  Row(
                    children: [
                      Image.asset(Resources.iStrings.fcmb),
                      const SizedBox(width: 28,),
                      Container(
                        width: 190,
                        height: 60 ,
                        decoration: BoxDecoration(
                          color: Resources.color.fillColor,
                          border: Border.all(color: Resources.color.cWhite),
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(14),
                              topRight: Radius.circular(14),
                              bottomRight: Radius.circular(14),
                              bottomLeft: Radius.circular(14)),
                        ),
                        alignment: Alignment.centerRight,
                        child: Container(
                          width: 94,
                            height: 52,
                            decoration: BoxDecoration(
                              color: Resources.color.cWhite,
                              border: Border.all(color: Resources.color.cWhite),
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                  bottomRight: Radius.circular(10),
                                  bottomLeft: Radius.circular(10)),
                            ),
                          alignment: Alignment.center,
                            child: Text(
                              '£1,500', style: TextStyle(
                              color: Resources.color.cBlack, fontSize: 20,fontWeight: FontWeight.w900),)
                          ),
                // shape: const RoundedRectangleBorder(
                // borderRadius: BorderRadius.only(
                //   topLeft: Radius.circular(8),
                //   topRight: Radius.circular(8),
                //  bottomRight: Radius.circular(8),
                //   bottomLeft: Radius.circular(4),
              )],
          ),
          SizedBox(height: 30,),
          Row(
            children: [
              SizedBox(width: 10,),
              Image.asset(Resources.iStrings.padlock),
              const SizedBox(width: 40,),
              Container(
                width: 250,
                height: 60 ,
                decoration: BoxDecoration(
                  color: Resources.color.fillColor,
                  border: Border.all(color: Resources.color.cWhite),
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(14),
                      topRight: Radius.circular(14),
                      bottomRight: Radius.circular(14),
                      bottomLeft: Radius.circular(14)),
                ),
                alignment: Alignment.centerRight,
                child: Container(
                    width: 100,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Resources.color.cWhite,
                      border: Border.all(color: Resources.color.cWhite),
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10)),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      '£3,000', style: TextStyle(
                      color: Resources.color.cBlack, fontSize: 20,fontWeight: FontWeight.w900),)
                ),
                // shape: const RoundedRectangleBorder(
                // borderRadius: BorderRadius.only(
                //   topLeft: Radius.circular(8),
                //   topRight: Radius.circular(8),
                //  bottomRight: Radius.circular(8),
                //   bottomLeft: Radius.circular(4),
              )],
          ),
          SizedBox(height: 30,),
          Row(
            children: [
              Image.asset(Resources.iStrings.firstbank),
              const SizedBox(width: 78,),
              Container(
                width: 200,
                height: 60 ,
                decoration: BoxDecoration(
                  color: Resources.color.fillColor,
                  border: Border.all(color: Resources.color.cWhite),
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(14),
                      topRight: Radius.circular(14),
                      bottomRight: Radius.circular(14),
                      bottomLeft: Radius.circular(14)),
                ),
                alignment: Alignment.centerRight,
                child: Container(
                    width: 75,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Resources.color.cWhite,
                      border: Border.all(color: Resources.color.cWhite),
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10)),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      '£300', style: TextStyle(
                      color: Resources.color.cBlack, fontSize: 20, fontWeight: FontWeight.w900),)
                ),
                // shape: const RoundedRectangleBorder(
                // borderRadius: BorderRadius.only(
                //   topLeft: Radius.circular(8),
                //   topRight: Radius.circular(8),
                //  bottomRight: Radius.circular(8),
                //   bottomLeft: Radius.circular(4),
              )],
          )
        ],
        )

      ],),
    ),),),);
  }
}
