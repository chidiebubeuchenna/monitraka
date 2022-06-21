import 'package:flutter/material.dart';
import 'package:monitraka/res/colors/base_colors.dart';

class RegColor extends BaseColors {
  //Common
  @override
  Color get cGreen => const Color(0xFF136D31);
  @override
  Color get cWhite => const Color(0xFFFFFFFF);
  //Texts
  @override
  Color get primaryText => cGreen;
  @override
  Color get secondaryText => const Color(0xFF000000);
  Color get rgText =>
      const Color(0x99000000); //Black @ 60% for sub text in registration pages
  Color get redText => const Color(0xFFEF2626);
  //TextField
  @override
  Color get headerText => const Color(0xB3000000); //Black @ 70%
  @override
  Color get hintText => const Color(0x80000000); //Black @ 50%
  @override
  Color get fillColor => const Color(0x40136D31); // Green @ 25%
  //Button
  @override
  Color get bgGreen => cGreen;
  @override
  Color get bgWhite => cWhite;
  @override
  Color get bgNeutral => const Color(0x4DB7B7B7); //Neutral @ 40%
  @override
  Color get fwGreen => cGreen;
  @override
  Color get fwWhite => cWhite;
  @override
  Color get fwBlack => const Color(0xFF292D32);
}
