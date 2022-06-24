import 'package:flutter/material.dart';
import '../res/res.dart';

AppBar appBar(Function() navBack) {
  return AppBar(
    leading: IconButton(
      onPressed: navBack,
      icon: Icon(Icons.arrow_back, color: Resources.color.cBlack),
    ),
    backgroundColor: Resources.color.cWhite,
    elevation: 0,
  );
}

AppBar specialAppBar(Function() navBack) {
  return AppBar(
    actions: [
      IconButton(
        onPressed: navBack,
        icon: Icon(Icons.cancel_outlined, color: Resources.color.cGreen),
      ),
    ],
    backgroundColor: Resources.color.cWhite,
    elevation: 0,
  );
}
