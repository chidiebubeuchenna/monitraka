import 'package:flutter/material.dart';

import '../res/res.dart';

DropdownMenuItem<int> socialItems(String item, val) {
  return DropdownMenuItem<int>(
    value: val,
    child: Text(
      item,
      style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: Resources.color.hintText),
    ),
  );
}

DropdownButtonFormField dropDown(val, List<DropdownMenuItem> items) {
  return DropdownButtonFormField(
    hint: Text(
      'Select',
      style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: Resources.color.hintText),
    ),
    value: val,
    items: items,
    onChanged: (value) {},
    decoration: InputDecoration(
      contentPadding: const EdgeInsets.only(left: 20),
      filled: true,
      fillColor: Resources.color.fillColor,
      border: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.circular(12),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Resources.color.cGreen),
        borderRadius: BorderRadius.circular(12),
      ),
    ),
  );
}
