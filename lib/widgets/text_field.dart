import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  final String title;
  final bool obscureText;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  const AppTextField({Key? key,
    required this.title,
    this.obscureText = false,
    this.controller,
    this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontFamily: 'Poppins'),),

        const SizedBox(height: 15,),

        TextFormField(
          validator: validator,
          controller: controller,
          obscureText: obscureText,
          cursorColor: Colors.green,
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(borderSide: BorderSide.none, borderRadius: BorderRadius.circular(0)),
            border: InputBorder.none,
            focusedBorder: OutlineInputBorder(borderSide: BorderSide.none, borderRadius: BorderRadius.circular(0)),
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