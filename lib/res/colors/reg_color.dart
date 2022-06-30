import 'package:flutter/material.dart';
import 'package:monitraka/res/colors/base_colors.dart';

class RegColor extends BaseColors {
  //Common
  @override
  Color get cGreen => const Color(0xFF136D31);
  @override
  Color get cWhite => const Color(0xFFFFFFFF);
  @override
  Color get cBlack => const Color(0xFF000000);

  Color get rgText => const Color(0x99000000); //Black @ 60%
  Color get redText => const Color(0xFFEF2626);
  
  @override
  Color get cYellow => const Color(0xffffc727);//Yellow for icons
  @override
  Color get cPink => const Color(0x33ff0083); //Pink @ 20%
  @override
  Color get cBlue => const Color(0x66407BFF); //Blue @ 40%
  @override
  Color get bBlack => const Color(0x33000000); //Black @ 20%
  //TextField
  @override
  Color get headerText => const Color(0xB3000000); //Black @ 70%
  @override
  Color get hintText => const Color(0x80000000); //Black @ 50%
  @override
  Color get fillColor => const Color(0x40136D31); // Green @ 25%
  //Button
  @override
  Color get bgNeutral => const Color(0x4DB7B7B7); //Neutral @ 40%
  @override
  Color get fwBlack => const Color(0xFF292D32);
}
