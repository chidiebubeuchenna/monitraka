import 'dart:io';

class User {
  String name;
  String email;
  String id;
  String phoneNo;
  File? profilePic;

  User({
    required this.name,
    required this.email,
    required this.id,
    required this.phoneNo,
    required this.profilePic,
  });
}
