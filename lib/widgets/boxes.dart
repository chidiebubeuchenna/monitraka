import 'package:flutter/material.dart';

class Containers extends StatelessWidget {
  final Color boxColor;
  final Widget boxInfo;
  const Containers({
    Key? key,
    required this.boxColor,
    required this.boxInfo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 127,
      height: 104,
      decoration: BoxDecoration(
        color: boxColor,
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(8),
            topRight: Radius.circular(8),
            bottomRight: Radius.circular(8),
            bottomLeft: Radius.circular(4)),
      ),
      child: boxInfo,
    );
  }
}
