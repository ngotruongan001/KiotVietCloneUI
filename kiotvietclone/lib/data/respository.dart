import 'package:dio/dio.dart';
import 'package:kiotvietclone/models/user_request.dart';
import 'package:kiotvietclone/models/user_response.dart';
import 'package:http/http.dart' as http;
final dio = Dio();

class Reposity {
  static Future<bool> register({required UserRequest userReq}) async {
    try{
      var url = Uri.parse('https://63f6d7b359c944921f7a1e6b.mockapi.io/user');
      var response = await http.post(url, body: {
        "userName": userReq.userName,
        "urlWeb": userReq.urlWeb,
        "password": userReq.password,
      });
      print('Response status: ${response.statusCode}');
      print('Response body: ${response.body}');
      return true;
    }catch(e){
      return false;
    }

  }

  static Future<void> getUsers(
      Function(List<UserResponse>) funcSaveUsers) async {
    List<UserResponse> listUser = [];
    Response response;
    response =
        await dio.get('https://63f6d7b359c944921f7a1e6b.mockapi.io/user');
    for (var i in response.data) {
      var user = UserResponse.fromMap(i);
      listUser.add(user);
    }
    funcSaveUsers(listUser);
  }
}
