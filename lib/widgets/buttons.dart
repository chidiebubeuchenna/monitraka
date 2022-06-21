import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String title;
  const Button({Key? key, required this.title,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(width: 450, height: 50,
            child: ElevatedButton(
              onPressed: () {  },
            child: Text(title, style: TextStyle(color: Colors.white,fontFamily: 'Poppins', fontWeight: FontWeight.w900),),
          style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.green,),),

        ))
      ],
    );
  }
}

