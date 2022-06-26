import 'package:flutter/material.dart';

class RegAuth extends ChangeNotifier {
  bool _visible = true;
  bool _checkBox = false;

  bool get visible => _visible;
  bool get checkBox => _checkBox;

  show() {
    _visible = !_visible;
    notifyListeners();
  }

  box() {
    _checkBox = !_checkBox;
    notifyListeners();
  }
}
