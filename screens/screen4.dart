import 'package:flutter/material.dart';

class backLogin extends StatefulWidget {
  const backLogin({Key? key}) : super(key: key);

  @override
  State<backLogin> createState() => _backLoginState();
}

class _backLoginState extends State<backLogin> {
  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 50, horizontal: 38),
              ),
              Text(
                'Your new password has been created',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Color.fromRGBO(0, 0, 0, 0.7),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                'Back to log in',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Color.fromRGBO(19, 109, 49, 1),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
