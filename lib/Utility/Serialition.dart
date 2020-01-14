import 'dart:async' show Future;
import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;
import 'package:login_project_app/Model/UserLoginInfo.dart';


class Serialition{

Future<String> loadShowData() async {
String data = await rootBundle.loadString("JsonFiles/userLoginInfo.json");

String jsonString= data.toString();

Map userMap = jsonDecode(jsonString);
var user = UserLoginInfo.fromJson(userMap);

//print('Howdy, ${user.username}!');
//print('We sent the verification link to ${user.email}.');

return user.email;
}

}