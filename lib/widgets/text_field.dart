import 'package:flutter/material.dart';
import 'package:monitraka/res/res.dart';
import 'package:provider/provider.dart';

import '../providers/reg_prov.dart';

TextStyle titleStyle = TextStyle(
  color: Resources.color.headerText,
  fontWeight: FontWeight.w600,
  fontSize: 14,
);

class CommonTextField extends StatelessWidget {
  final String hint;
  final bool obscureText;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  const CommonTextField({
    Key? key,
    required this.obscureText,
    required this.controller,
    this.validator,
    required this.hint,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final prov = Provider.of<RegAuth>(context);
    return TextFormField(
      validator: validator,
      controller: controller,
      obscureText: prov.visible,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.only(left: 20),
        hintText: hint,
        filled: true,
        fillColor: Resources.color.fillColor,
        suffixIcon: obscureText
            ? IconButton(
                onPressed: () => prov.show(),
                icon: prov.visible
                    ? Icon(Icons.visibility_off, color: Resources.color.cBlack)
                    : Icon(Icons.visibility, color: Resources.color.cBlack))
            : null,
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
    );
  }
}

class SpecialField extends StatelessWidget {
  const SpecialField({Key? key, required this.hint, required this.icon})
      : super(key: key);
  final String hint;
  final Widget? icon;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        prefixIcon: icon,
        contentPadding: const EdgeInsets.only(left: 20),
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
    );
  }
}
