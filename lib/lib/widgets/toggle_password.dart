import 'package:flutter/material.dart';

class text_form extends StatefulWidget {
  final String label;

  const text_form({Key? key, required this.label}) : super(key: key);

  @override
  State<text_form> createState() => _text_formState();
}

class _text_formState extends State<text_form> {
  bool _isHidden = true;

  void _togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 374,
      height: 52,
      child: TextFormField(
        obscureText: _isHidden,
        decoration: InputDecoration(
          border: InputBorder.none,
          fillColor: Color.fromRGBO(19, 109, 49, 0.22),
          filled: true,
          hintText: widget.label,
          suffixIcon: IconButton(
            onPressed: () => _togglePasswordView(),
            icon: Icon(_isHidden ? Icons.visibility : Icons.visibility_off),
          ),
        ),
      ),
    );
  }
}
