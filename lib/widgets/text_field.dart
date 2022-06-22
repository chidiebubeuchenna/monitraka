import 'package:flutter/material.dart';
import 'package:monitraka/res/res.dart';

class AppTextField extends StatelessWidget {
  final String title;
  final String hint;
  final bool obscureText;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  const AppTextField(
      {Key? key,
      required this.title,
      required this.obscureText,
      this.controller,
      this.validator,
      required this.hint})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
              color: Resources.color.headerText,
              fontWeight: FontWeight.w600,
              fontSize: 14),
        ),
        const SizedBox(height: 15),
        ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 374),
          child: TextFormField(
            validator: validator,
            controller: controller,
            obscureText: obscureText,
            decoration: InputDecoration(
              hintText: hint,
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
        )
      ],
    );
  }
}
