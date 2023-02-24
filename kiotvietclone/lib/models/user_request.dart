class UserRequest{
  final String? userName;
  final String? urlWeb;
  final String? password;

  UserRequest({this.userName, this.urlWeb, this.password});

  // sending data to our server
  Map<String, dynamic> toMap() {
    return {
      'userName': userName,
      'urlWeb': urlWeb,
      'password': password,
    };
  }

  @override
  String toString(){
    return "$userName - $urlWeb - $password";
  }

}