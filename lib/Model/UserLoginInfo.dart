

class UserLoginInfo {
  final String username;
  final String email;

  UserLoginInfo(this.username, this.email);

  UserLoginInfo.fromJson(Map<String, dynamic> json)
      : username = json['name'],
        email = json['email'];

  Map<String, dynamic> toJson() =>
    {
      'username': username,
      'email': email,
    };
}