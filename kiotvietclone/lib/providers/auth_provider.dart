import 'package:flutter/foundation.dart';
import 'package:kiotvietclone/data/respository.dart';
import 'package:kiotvietclone/models/user_request.dart';
import 'package:kiotvietclone/models/user_response.dart';

class AuthProvider with ChangeNotifier, DiagnosticableTreeMixin {
  bool _isLogin = true;
  var user = null;
  List<UserResponse> listUsers = [];
  bool get isLogin => _isLogin;

  Future<void> getUsers() async {
    await Reposity.getUsers(saveUsers);
  }

  Future<bool> onPressedlogin({
    required String url,
    required String userName,
    required String password,
  }) async {
    print("Login");
    if(url.isEmpty || userName.isEmpty || password.isEmpty || password.length < 6) return false;
    for(var i in listUsers){
      if(i.urlWeb == url && i.userName == userName && i.password == password){
        onLoginSuccess(i);
        return true;
      }
    }
    notifyListeners();
    return false;
  }

  Future<bool> onPressedRegister({
    required String url,
    required String userName,
    required String password,
  }) async {
    if(url.isEmpty || userName.isEmpty || password.isEmpty || password.length < 6) return false;
    for(var i in listUsers){
      if(i.urlWeb == url){
        return false;
      }
      if(i.userName == userName){
        return false;
      }
    }
    UserRequest userReq = UserRequest(
      urlWeb: url,
      userName: userName,
      password: password,
    );
    var isRegister =   await Reposity.register(userReq: userReq);
    if(isRegister){
      await getUsers();
      onPressedlogin(
        url: url,
        password: password,
        userName: userName,
      );
      return true;

    }
    notifyListeners();
    return false;

  }

  void saveUsers(List<UserResponse> users) {
    listUsers = users;
    print(listUsers);
  }

  void onLoginSuccess(UserResponse _user){
    _isLogin = true;
    user = _user;
    notifyListeners();
  }

}
