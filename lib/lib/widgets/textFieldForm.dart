import 'package:flutter/material.dart';

class textForm extends StatelessWidget {
  final String label;
  final bool obsuretext;

  const textForm({Key? key, required this.label, required this.obsuretext})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 374,
      height: 52,
      child: TextFormField(
        decoration: InputDecoration(
          border: InputBorder.none,
          fillColor: Color.fromRGBO(19, 109, 49, 0.22),
          filled: true,
          hintText: label,
        ),
        obscureText: obsuretext,
      ),
    );
  }
}
