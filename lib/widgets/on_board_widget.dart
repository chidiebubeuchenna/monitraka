import 'package:flutter/material.dart';
import 'package:monitraka/res/res.dart';

class BoardItem extends StatelessWidget {
  final String image;
  final String title;
  final String content;

  const BoardItem({
    Key? key,
    required this.image,
    required this.title,
    required this.content,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 70),
        Image.asset(image, height: 325, width: 300),
        const SizedBox(height: 16),
        Text(
          title,
          style: TextStyle(
              color: Resources.color.cGreen,
              fontWeight: FontWeight.w600,
              fontSize: 24),
        ),
        const SizedBox(height: 10),
        SizedBox(
          width: 390,
          child: Text(
            content,
            softWrap: true,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Resources.color.cBlack,
                fontWeight: FontWeight.w300,
                fontSize: 16),
          ),
        ),
        
      ],
    );
  }
}
