import 'package:flutter/material.dart';

class elevateButton extends StatelessWidget {
  final String label;
  const elevateButton({Key? key, required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      width: 374,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Color.fromRGBO(19, 109, 49, 1),
        ),
        onPressed: () {},
        child: Text(label),
      ),
    );
  }
}
