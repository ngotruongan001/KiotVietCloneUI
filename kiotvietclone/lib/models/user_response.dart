
class UserResponse{
  final String? id;
  final String? userName;
  final String? urlWeb;
  final String? password;
  final String? createdAt;

  UserResponse({this.id, this.userName, this.urlWeb, this.password, this.createdAt, });

  factory UserResponse.fromMap(map) {
    return UserResponse(
        id: map['id'],
        userName: map['userName'],
        urlWeb: map['urlWeb'],
        password: map['password'],
        createdAt: map['createdAt']
    );
  }

  @override
  String toString(){
    return "{id: $id, userName: $userName, urlWeb: $urlWeb, password: $password, createdAt: $createdAt}";
  }

}