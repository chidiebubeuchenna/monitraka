
import 'package:flutter/material.dart';

import '../../../../res/res.dart';

class WalletScreen extends StatefulWidget {
  static const id = '/WalletScreen';
  const WalletScreen({Key? key}) : super(key: key);

  @override
  State<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {

  Image get wimage => Image.asset(Resources.iStrings.wallet);
  Image get bimage => Image.asset(Resources.iStrings.wallet); //replace with bank
  Image get card => Image.asset(Resources.iStrings.atmcard);
  Image get bitcoin => Image.asset(Resources.iStrings.bitcoin);


  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Padding(padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20,),
          Text('Wallet',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.w900, color: Resources.color.cBlack)),
          Align(alignment: Alignment.center,
              child: Image.asset(Resources.iStrings.moneyStairs)),
          const SizedBox(height: 30),
          Container(
             height: 120,
             decoration: BoxDecoration(
        color: Colors.white,
        borderRadius:const BorderRadius.only(
        topLeft: Radius.circular(8),
        topRight: Radius.circular(8),
        bottomLeft: Radius.circular(8),
        bottomRight: Radius.circular(4)),
    boxShadow:[BoxShadow(color: Colors.black.withOpacity(0.1), blurRadius: 25)]),
             child:Row(
               children: [
                  Image.asset(Resources.iStrings.wallet, ),
                 const SizedBox(width: 7),
                 Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Text('Cash Wallet'),
                     Text('NGN 100,000')
                   ],
                 ),
               ],
             )),
          const SizedBox(height: 30,),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(height: 420,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:const BorderRadius.only(
                      topLeft: Radius.circular(8),
                      topRight: Radius.circular(8),
                      bottomLeft: Radius.circular(8),
                      bottomRight: Radius.circular(4)),
                  boxShadow:[BoxShadow(color: Colors.black.withOpacity(0.1), blurRadius: 25)]),
              child: Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  Stack(
                    children: [
                      Container(
                        width: 70,
                        height: 60,
                        decoration:BoxDecoration(
                            color: Resources.color.cWhite,
                            shape: BoxShape.rectangle,
                            image: DecorationImage(
                                fit: BoxFit.contain, image: AssetImage(Resources.iStrings.wallet)//replace with image of bank
                                 ) ),),
                      Positioned(bottom:0,right:0,child: Container(
                          height: 3,
                          width: 5,
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                          ),
                          child: card))
                    ],
                  ),
                  Text(
                    'Add a Bank Account',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Resources.color.cBlack),),
                  // shape:const RoundedRectangleBorder(
                  //borderRadius: BorderRadius.only(
                  //  topLeft: Radius.circular(8),
                  // topRight: Radius.circular(8),
                  // bottomRight: Radius.circular(8),
                  //bottomLeft: Radius.circular(4)),),
                ],
              )),
              Container(height: 420,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:const BorderRadius.only(
                          topLeft: Radius.circular(8),
                          topRight: Radius.circular(8),
                          bottomLeft: Radius.circular(8),
                          bottomRight: Radius.circular(4)),
                      boxShadow:[BoxShadow(color: Colors.black.withOpacity(0.1), blurRadius: 25)]),
                  child: Stack(
                    alignment: Alignment.center,
                    children: <Widget>[
                  Stack(
                  children: [
                    Container(
                    width: 70,
                    height: 60,
                    decoration:BoxDecoration(
                        color: Resources.color.cWhite,
                        shape: BoxShape.rectangle,
                        image: DecorationImage(
                            fit: BoxFit.contain, image: AssetImage(Resources.iStrings.wallet) ) ),),
                    Positioned(bottom:0,right:0,child: Container(
                    height: 4,
                    width: 4,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,),
                        child: bitcoin)//replace with the dollar coin
                    )
                ],
              ),
                      Text(
                        'Create a New Wallet',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Resources.color.cBlack),),
                      // shape:const RoundedRectangleBorder(
                      //borderRadius: BorderRadius.only(
                      //  topLeft: Radius.circular(8),
                      // topRight: Radius.circular(8),
                      // bottomRight: Radius.circular(8),
                      //bottomLeft: Radius.circular(4)),),
                    ],
                  )),
              ],
          ),
          const SizedBox(height: 20,),
          Align(alignment: Alignment.center,
          child:
          Container(height: 420,
              decoration: BoxDecoration(
                  color: Resources.color.cWhite,
                  borderRadius:const BorderRadius.only(
                      topLeft: Radius.circular(8),
                      topRight: Radius.circular(8),
                      bottomLeft: Radius.circular(8),
                      bottomRight: Radius.circular(4)),
                  boxShadow:[BoxShadow(color: Colors.black.withOpacity(0.1), blurRadius: 25)]),
              child: Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  Stack(
                    children: [
                      Container(
                        width: 70,
                        height: 60,
                        decoration:BoxDecoration(
                            color: Resources.color.cWhite,
                            shape: BoxShape.rectangle,
                            image: DecorationImage(
                              fit: BoxFit.contain, image: AssetImage(Resources.iStrings.wallet) ) ),),
                      Positioned(bottom:0,right:0,child: Container(
                        height: 4,
                        width: 4,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          ),
                        child: bitcoin))
                    ],
                  ),
                  Text(
                    'Add a Crypto Wallet',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Resources.color.cBlack),),
                  // shape:const RoundedRectangleBorder(
                  //borderRadius: BorderRadius.only(
                  //  topLeft: Radius.circular(8),
                  // topRight: Radius.circular(8),
                  // bottomRight: Radius.circular(8),
                  //bottomLeft: Radius.circular(4)),),
                ],
              )),
          )
      ],),)
    );}
}
