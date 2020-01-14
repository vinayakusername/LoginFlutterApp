import 'dart:async' show Future;
import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;
import 'package:login_project_app/Model/UserLoginInfoModel.dart';



class Serialition{
// Future is used to load the data from json file asynchronously.
Future<String> loadShowData() async {
  //This statement is used to serialize the json into string.
String data = await rootBundle.loadString("JsonFiles/userLoginInfo.json");

String jsonString= data.toString();
//This statement is used to decode the json data into map variable.
Map userMap = jsonDecode(jsonString);
var user = UserLoginInfo.fromJson(userMap);

//print('Howdy, ${user.username}!');
//print('We sent the verification link to ${user.email}.');

return user.email;
}

}