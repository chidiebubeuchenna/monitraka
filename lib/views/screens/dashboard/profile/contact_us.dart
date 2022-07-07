import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../res/res.dart';

class ContactUs extends StatefulWidget {
  static const id = '/ContactUs';
  const ContactUs({Key? key}) : super(key: key);

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SingleChildScrollView(child: SafeArea(child:
    Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(children: [
      Padding(
        padding: const EdgeInsets.all(16.0), child: (
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text('Contact Us',
                    style: TextStyle(
                        color: Resources.color.cGreen,
                        fontSize: 24,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.close,
                        color: Resources.color.cGreen,)

                  ),
                ],
              ),
            ],
          )
      ),
      ),
      Padding(padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'You can reach us via our social media pages, customer care line or email.',
              style: TextStyle(fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Resources.color.rgText),)
          ],),
      ),
      const SizedBox(height: 30),
      Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 250, left: 16),
            child: Text(
              'Phone Number',
              style: TextStyle(
                  color: Resources.color.headerText,
                  fontWeight: FontWeight.w600,
                  fontSize: 14),
            ),
          ),
          const SizedBox(height: 15),
          TextFormField(
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.only(left: 20),
              hintText: '07055952078',
              filled: true,
              fillColor: Resources.color.fillColor,
              //suffixIcon:IconButton(onPressed: () {Clipboard.setData(ClipboardData(text: "your text"));},icon: Icon(Icons.file_copy_rounded, color: Resources.color.bBlack,),
              hintStyle: TextStyle(
                  color: Resources.color.hintText,
                  fontSize: 12,
                  fontWeight: FontWeight.w600),
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(12),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Resources.color.cGreen),
                borderRadius: BorderRadius.circular(12),

              ),

            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(right: 250, left: 16),
            child: Text(
              'Email Address',
              style: TextStyle(
                  color: Resources.color.headerText,
                  fontWeight: FontWeight.w600,
                  fontSize: 14),
            ),
          ),
          const SizedBox(height: 15),
          TextFormField(
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.only(left: 20),
              hintText: 'monitraka@gmail.com',
              //suffixIcon:IconButton(onPressed: () {Clipboard.setData(ClipboardData(text: "your text"));},icon: Icon(Icons.file_copy_rounded, color: Resources.color.bBlack,),
              filled: true,
              fillColor: Resources.color.fillColor,
              hintStyle: TextStyle(
                  color: Resources.color.hintText,
                  fontSize: 12,
                  fontWeight: FontWeight.w600),
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(12),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Resources.color.cGreen),
                borderRadius: BorderRadius.circular(12),

              ),

            ),
          ),
          const SizedBox(height: 30),
          profileTile(Icons.password, 'Twitter', () {} ),
          const SizedBox(height: 30),
          profileTile(Icons.facebook, 'Instagram', () {}),
          const SizedBox(height: 30),
          profileTile(Icons.facebook, 'Facebook', () {}),
          const SizedBox(height: 30),
          profileTile(Icons.facebook, 'Linkedln', () {}),
        ],
      ),



      ],),
    )),),);
  }
}