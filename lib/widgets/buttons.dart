import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String title;
  final Color textColor;
  final Color bgColor;
  final Function()? btnAction;

  const Button(
      {Key? key,
      required this.title,
      required this.textColor,
      required this.bgColor,
      required this.btnAction})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: btnAction,
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
        topLeft: Radius.circular(8),
    topRight: Radius.circular(8),
    bottomRight: Radius.circular(8),
    bottomLeft: Radius.circular(4)
          ),
        ),
        elevation: 0,
        primary: bgColor,
        textStyle: TextStyle(
            color: textColor, fontWeight: FontWeight.w600, fontSize: 16),
        minimumSize: const Size(374, 56),
      ),
      child: Text(title),
    );
  }
}
