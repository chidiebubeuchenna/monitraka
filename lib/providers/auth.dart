import 'package:flutter/material.dart';

class Auth extends ChangeNotifier {
  bool _visible = false;
  bool _checkBox = false;
  bool _modalCheckBox = false;
  String _name = '';
  String _email = '';
  String _phone = '';

  bool get visible => _visible;
  bool get checkBox => _checkBox;
  bool get modalCheckBox => _modalCheckBox;
  String get name => _name;
  String get email => _email;
  String get phone => _phone;

  void show() {
    _visible = !_visible;
    notifyListeners();
  }

  void box() {
    _checkBox = !_checkBox;
    notifyListeners();
  }

  void modalBox() {
    _modalCheckBox = !_modalCheckBox;
    notifyListeners();
  }

  void userName(String value, String email, String phone) {
    _name = value;
    _email = value;
    _phone = value;
    notifyListeners();
  }
}
