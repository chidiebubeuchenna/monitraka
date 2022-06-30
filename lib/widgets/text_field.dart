import 'package:flutter/material.dart';
import 'package:monitraka/res/res.dart';
import 'package:provider/provider.dart';

import '../providers/reg_prov.dart';

class AppTextField extends StatelessWidget {
  final String title;
  final String hint;
  final bool obscureText;
  final String? error;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  const AppTextField(
      {Key? key,
      required this.title,
      required this.obscureText,
        this.error,
      this.controller,
      this.validator,
      required this.hint})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final prov = Provider.of<RegAuth>(context);
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
          constraints: const BoxConstraints(maxWidth: 380),
          child: TextFormField(
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
                          ? Icon(Icons.visibility_off,
                              color: Resources.color.cBlack)
                          : Icon(Icons.visibility,
                              color: Resources.color.cBlack))
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
          ),
        )
      ],
    );
  }
}
