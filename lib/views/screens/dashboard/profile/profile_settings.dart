import 'package:flutter/material.dart';
import 'package:monitraka/res/res.dart';
import 'package:monitraka/views/screens/dashboard/profile_screen.dart';

import '../../../widgets/buttons.dart';
import '../../../widgets/text_field.dart';

class ProfileSettings extends StatefulWidget {

  static const id = '/ProfileSettings';
  const ProfileSettings({Key? key, }) : super(key: key);

  @override
  State<ProfileSettings> createState() => _ProfileSettingsState();
}

class _ProfileSettingsState extends State<ProfileSettings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        children: [
          Padding(
              padding: const EdgeInsets.all(5),
              child: (Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Profile Settings', style: TextStyle(color:Resources.color.cGreen, fontSize: 24, fontWeight: FontWeight.bold),),
                IconButton(
                    onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.close, color: Resources.color.cGreen,))],))),
          const SizedBox(height: 2,),
          Column(
            children: [Padding(padding: const EdgeInsets.only(right: 270),
              child: Text(
                'Traka ID:' 'MT1000', style: TextStyle(fontWeight: FontWeight.normal, fontSize: 12, color: Resources.color.rgText,), )),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 130, right: 5),
                      child: Container(width: 66,height: 66,
                          decoration: BoxDecoration(shape: BoxShape.circle, image: DecorationImage(fit: BoxFit.cover, image: AssetImage(Resources.iStrings.profilePic)),),
                        ),
                    ),

                    const SizedBox(width: 10,),
                    Text('Change Photo', style: TextStyle(color: Resources.color.rgText),),
                    IconButton(onPressed: (){}, icon: Icon(Icons.edit, color: Resources.color.rgText,))],
                ),
              ),
              Column(

              )],),
          const SizedBox(height: 16,),
          const AppTextField(
            title: "Full Name",
            hint: 'Tom Ogbu',
            obscureText: false,),
          const SizedBox(height: 16),
          const AppTextField(
            title: "Email",
            hint: 'abcdxyz@gmail.com',
            obscureText: false,),
          const SizedBox(height: 16),
          const AppTextField(
            title: "Phone number",
            hint: '07046582213',
            obscureText: false,),
          const SizedBox(height: 35),
          Button(
              title: 'Done',
              textColor: Resources.color.cWhite,
              bgColor: Resources.color.cGreen,
              btnAction: () =>
                  Navigator.pushNamed(context, ProfileScreen.id)),
          ], //child holding specific for the app bar
      ),)),),
    );
  }
}