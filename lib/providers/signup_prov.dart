import 'package:flutter/material.dart';

class SignupProv extends ChangeNotifier {
  String _name = '';
  String _email = '';
  String _phone = '';

  String get name => _name;
  String get email => _email;
  String get phone => _phone;

  void userName(String value, String email, String phone) {
    _name = value;
    _email = value;
    _phone = value;
    notifyListeners();
  }
}
