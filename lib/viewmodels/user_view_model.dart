import 'package:monitraka/models/user_model.dart';

class UserViewModel {
  User user = User(name: '', email: '', id: '', phoneNo: '');

  // final userInfo = Provider.of(context);
  showProfile(var name, var id) {
    user.name = name;
    user.id = id;
    return {user.name, user.id};
  }
}
