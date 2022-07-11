import 'dart:io';
import 'package:flutter/material.dart';
import 'package:monitraka/res/res.dart';
import 'package:image_picker/image_picker.dart';
import '../../../../../widgets/buttons.dart';
import '../../../../../widgets/text_field.dart';

profileSettings(BuildContext context) {
  return showModalBottomSheet(
    isScrollControlled: true,
    context: context,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40), topRight: Radius.circular(40)),
    ),
    builder: (context) => const ProfileSettings(),
  );
}

class ProfileSettings extends StatefulWidget {
  const ProfileSettings({Key? key}) : super(key: key);

  @override
  State<ProfileSettings> createState() => _ProfileSettingsState();
}

class _ProfileSettingsState extends State<ProfileSettings> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final ImagePicker _picker = ImagePicker();
  File? image;

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      heightFactor: 0.75,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Profile Settings',
                    style: TextStyle(
                        color: Resources.color.cGreen,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: Icon(Icons.cancel_outlined,
                        color: Resources.color.cGreen),
                  )
                ],
              ),
              const SizedBox(height: 2),
              Text(
                'Traka ID:' 'MT1000',
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 12,
                  color: Resources.color.rgText,
                ),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 66,
                    height: 66,
                    decoration: const BoxDecoration(shape: BoxShape.circle),
                    child: image != null
                        ? Image.file(image!)
                        : Image.asset(Resources.iStrings.profilePic),
                  ),
                  const SizedBox(width: 7),
                  Text(
                    'Change Photo',
                    style: TextStyle(color: Resources.color.rgText),
                  ),
                  IconButton(
                    onPressed: () async {
                      //Code for image selection
                      try {
                        final img =
                            await _picker.pickImage(source: ImageSource.camera);
                        final imageTemp = File(img!.path);
                        setState(() {
                          image = imageTemp;
                        });
                      } catch (e) {
                        print('The error is: $e');
                      }
                    },
                    icon: Icon(Icons.edit, color: Resources.color.rgText),
                  )
                ],
              ),
              const SizedBox(height: 16),
              //Name field
              Text(
                'Full Name',
                style: TextStyle(
                    color: Resources.color.headerText,
                    fontSize: 12,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 15),
              CommonTextField(
                hint: 'Tom Ogbu',
                obscureText: false,
                controller: _nameController,
              ),
              const SizedBox(height: 16),
              //Email field
              Text(
                'Email',
                style: TextStyle(
                    color: Resources.color.headerText,
                    fontSize: 12,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 15),
              CommonTextField(
                hint: 'abcdxyz@gmail.com',
                obscureText: false,
                controller: _emailController,
              ),
              const SizedBox(height: 16),
              //Phone field
              Text(
                'Phone Number',
                style: TextStyle(
                    color: Resources.color.headerText,
                    fontSize: 12,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 15),
              CommonTextField(
                hint: '07046582213',
                obscureText: false,
                controller: _phoneController,
              ),
              const SizedBox(height: 35),
              Button(
                  title: 'Done',
                  textColor: Resources.color.cWhite,
                  bgColor: Resources.color.cGreen,
                  btnAction: () => Navigator.pop(context)),
            ], //child holding specific for the app bar
          ),
        ),
      ),
    );
  }
}
