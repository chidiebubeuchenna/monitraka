import 'package:flutter/material.dart';

abstract class BaseColors {
  //Common colors
  Color get cGreen;
  Color get cWhite;

  Color get primaryText; //Headers i.e. Login
  Color get secondaryText; //Contents or sub headings

  //text_field color
  Color get headerText; //Text above the text fields i.e. E - mail
  Color get hintText; //Label text color
  Color get fillColor;

  //Button color
  // // Background colors for buttons
  Color get bgGreen;
  Color get bgWhite;
  Color get bgNeutral;
  // // Colors for button texts
  Color get fwGreen;
  Color get fwWhite;
  Color get fwBlack;
}
