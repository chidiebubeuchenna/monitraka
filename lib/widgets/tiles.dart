import 'package:flutter/material.dart';

import '../res/res.dart';

Widget profileTile(IconData tileIcon, String title, void Function() nav) {
  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      border: Border.all(color: Resources.color.cGreen),
      borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(8),
          topRight: Radius.circular(8),
          bottomRight: Radius.circular(8),
          bottomLeft: Radius.circular(4)),
    ),
    child: ListTile(
      leading: Icon(tileIcon, color: Resources.color.cYellow),
      title: Text(
        title,
        style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: Resources.color.cBlack),
      ),
      onTap: nav,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(8),
            topRight: Radius.circular(8),
            bottomRight: Radius.circular(8),
            bottomLeft: Radius.circular(4)),
      ),
    ),
  );
}


Widget logoutTile(IconData tileIcon, String title, void Function() nav) {
  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      border: Border.all(color: Resources.color.cGreen),
      borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(8),
          topRight: Radius.circular(8),
          bottomRight: Radius.circular(8),
          bottomLeft: Radius.circular(4)),
    ),
    child: ListTile(
      leading: Icon(tileIcon, color: Resources.color.redText),
      title: Text(
        title,
        style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: Resources.color.cBlack),
      ),
      onTap: nav,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(8),
            topRight: Radius.circular(8),
            bottomRight: Radius.circular(8),
            bottomLeft: Radius.circular(4)),
      ),
    ),
  );
}

Widget contactTile(IconData tileIcon, String title, void Function() nav) {
  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      border: Border.all(color: Resources.color.cGreen),
      borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(8),
          topRight: Radius.circular(8),
          bottomRight: Radius.circular(8),
          bottomLeft: Radius.circular(4)),
    ),
    child: ListTile(
      leading: Icon(tileIcon, color: Resources.color.cBlack),
      title: Text(
        title,
        style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: Resources.color.cBlack),
      ),
      onTap: nav,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(8),
            topRight: Radius.circular(8),
            bottomRight: Radius.circular(8),
            bottomLeft: Radius.circular(4)),
      ),
    ),
  );
}
