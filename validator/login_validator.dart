
import 'package:flutter/material.dart';
import 'package:monitraka/validator/validation_item.dart';

import '../views/screens/register/letsgo_screen.dart';

class LoginValidator with ChangeNotifier{
  ValidationItem _email = ValidationItem(null, 'Please enter valid email');
  ValidationItem _password = ValidationItem(null, 'Password cannot be empty');


  //Getters
   ValidationItem get email => _email;
   ValidationItem get password => _password;
  bool get isvalid {if(_email.value != null && _password.value != null){return true;} else {return false;}
  }

  BuildContext? get context => null;



   //setters
   void changeemail(String value){
    if (value.isNotEmpty) {_email=ValidationItem(value, null);} else {_email = ValidationItem(null, 'Please enter a valid email');
   }
     notifyListeners();

}
  void changepassword(String value){
    if (value.isNotEmpty) {_password=ValidationItem(value, null);} else {_password = ValidationItem(null, 'Password cannot be empty');
    }
    notifyListeners();}

   submitData() => Navigator.pushNamed(context!, LetsGoScreen.id);
}
