import 'package:flutter/material.dart';
import 'package:monitraka/res/res.dart';

TextStyle titleStyle = TextStyle(
  color: Resources.color.headerText,
  fontWeight: FontWeight.w600,
  fontSize: 14,
);

class CommonTextField extends StatefulWidget {
  final String hint;
  bool obscureText = false;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  CommonTextField({
    Key? key,
    required this.controller,
    this.validator,
    required this.hint,
  }) : super(key: key);

  @override
  State<CommonTextField> createState() => _CommonTextFieldState();
}

class _CommonTextFieldState extends State<CommonTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: widget.validator,
      controller: widget.controller,
      obscureText: widget.obscureText,
      cursorColor: Resources.color.headerText,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.only(left: 20),
        hintText: widget.hint,
        filled: true,
        fillColor: Resources.color.fillColor,
        suffixIcon: widget.obscureText
            ? IconButton(
                onPressed: () {
                  setState(() {
                    widget.obscureText = !widget.obscureText;
                  });
                },
                icon: widget.obscureText
                    ? Icon(Icons.visibility_off, color: Resources.color.cBlack)
                    : Icon(Icons.visibility, color: Resources.color.cBlack))
            : null,
        hintStyle: TextStyle(
            color: Resources.color.hintText,
            fontSize: 12,
            fontWeight: FontWeight.w600),
        border: const OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(8),
            topRight: Radius.circular(8),
            bottomRight: Radius.circular(8),
            bottomLeft: Radius.circular(4),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Resources.color.cGreen),
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(8),
            topRight: Radius.circular(8),
            bottomRight: Radius.circular(8),
            bottomLeft: Radius.circular(4),
          ),
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
        border: const OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(8),
            topRight: Radius.circular(8),
            bottomRight: Radius.circular(8),
            bottomLeft: Radius.circular(4),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Resources.color.cGreen),
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(8),
            topRight: Radius.circular(8),
            bottomRight: Radius.circular(8),
            bottomLeft: Radius.circular(4),
          ),
        ),
      ),
    );
  }
}
