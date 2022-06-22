import 'package:flutter/material.dart';
import 'package:monitraka/res/colors/base_colors.dart';

class textButton extends StatelessWidget {
  final String label;
  const textButton({Key? key, required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        primary: Color.fromRGBO(19, 109, 49, 1),
      ),
      onPressed: () {},
      child: Text(
        label,
        style: TextStyle(
            decoration: TextDecoration.underline,
            fontSize: 14,
            fontWeight: FontWeight.w600),
      ),
    );
  }
}
