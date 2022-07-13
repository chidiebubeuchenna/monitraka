import 'package:flutter/material.dart';
import 'package:monitraka/widgets/text_field.dart';
import '../../../../../res/res.dart';
import '../../../../../widgets/tiles.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();

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
                    'Contact Us',
                    style: TextStyle(
                        color: Resources.color.cGreen,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.cancel_outlined,
                        color: Resources.color.cGreen),
                  ),
                ],
              ),
              Text(
                'You can reach us via our social media pages,'
                'customer care line or email.',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Resources.color.rgText),
              ),
              const SizedBox(height: 30),
              Text(
                'Phone Number',
                style: TextStyle(
                    color: Resources.color.headerText,
                    fontWeight: FontWeight.w600,
                    fontSize: 14),
              ),
              const SizedBox(height: 15),
              CommonTextField(
                  // obscureText: false,
                  controller: _phoneController,
                  hint: '07055952078'),
              const SizedBox(height: 20),
              Text(
                'Email Address',
                style: TextStyle(
                    color: Resources.color.headerText,
                    fontWeight: FontWeight.w600,
                    fontSize: 14),
              ),
              const SizedBox(height: 15),
              CommonTextField(
                  // obscureText: false,
                  controller: _emailController,
                  hint: 'monitraka@gmail.com'),
              const SizedBox(height: 30),
              profileTile(Icons.facebook, 'Twitter', () {}),
              const SizedBox(height: 30),
              profileTile(Icons.facebook, 'Instagram', () {}),
              const SizedBox(height: 30),
              profileTile(Icons.facebook, 'Facebook', () {}),
              const SizedBox(height: 30),
              profileTile(Icons.facebook, 'Linkedln', () {}),
            ],
          ),
        ),
      ),
    );
  }
}

contactUsModal(BuildContext context) {
  return showModalBottomSheet(
    isScrollControlled: true,
    context: context,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40), topRight: Radius.circular(40)),
    ),
    builder: (context) => const ContactUs(),
  );
}
