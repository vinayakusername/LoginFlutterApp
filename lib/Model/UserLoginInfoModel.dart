

class UserLoginInfo {
 // final String username;
  final String email;

  UserLoginInfo(this.email);


  //A User.fromJson() constructor, for constructing a new User instance from a map structure.
  UserLoginInfo.fromJson(Map<String, dynamic> json)
      : email = json['email'];

  
   //A toJson() method, which converts a User instance into a map.
     
  // Map<String, dynamic> toJson() =>
  //   {
  //     'username': username,
  //     'email': email,
  //   };
}


// UsersLoginList class define to convert the data from map to list.

// class UsersLoginList {
//   final List<UserLoginInfo> users;

//   UsersLoginList({
//     this.users,
//   });

//   factory UsersLoginList.fromJson(List<dynamic> json) {

//     List<UserLoginInfo> users = new List<UserLoginInfo>();
//     users = json.map((i)=>UserLoginInfo.fromJson(i)).toList();
//     return new UsersLoginList(
//        users: users,
//     );
//   }
// }