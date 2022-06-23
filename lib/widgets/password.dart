import 'package:flutter/material.dart';

class PasswordField extends StatefulWidget {
  final String title;
  final String ttitle;
  final bool obscureText = true;
  final TextEditingController? controller;
  final String? Function(String?)? validator;


  const PasswordField({Key? key,
    required this.title,
    required this.ttitle,
    this.controller,
    this.validator,

  }) : super(key: key);

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool passwordVisible = false;


  //void _togglePasswordView() {setState(() {
    //passwordVisible = !passwordVisible;
  //});}
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Password', style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontFamily: 'Poppins'),),

        const SizedBox(height: 15,),

        TextFormField(
          obscureText: !passwordVisible,
          cursorColor: Colors.green,
          decoration: InputDecoration(
            hintText: 'Enter your password',
            suffixIcon: IconButton(
              icon: Icon(passwordVisible
                  ? Icons.visibility
                  : Icons.visibility_off,
                  color: Theme.of(context).primaryColorDark),
              onPressed: () => setState(() {passwordVisible = !passwordVisible;}),),
            enabledBorder: OutlineInputBorder(borderSide: BorderSide.none, borderRadius: BorderRadius.circular(10)),
            border: InputBorder.none,
            focusedBorder: OutlineInputBorder(borderSide: BorderSide.none, borderRadius: BorderRadius.circular(10)),
            errorStyle: const TextStyle(color: Colors.red),
            filled: true,
            fillColor: Colors.green.shade100,
            labelStyle: const TextStyle(color: Colors.green,),
          ),
        )
      ],
    );
  }
}
