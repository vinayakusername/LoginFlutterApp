import 'package:login_project_app/Utility/Serialition.dart';

class LoginValidation
{
   //This userValidation() is used to validate the user from database and it takes one parameter "inputEmail" 
   // as a input of type String from user through User Interface. 
   String UserValidation(String inputEmail)
   {
     // "userEmail" this variable of type string will hold the value, return by database through
     // method "loadShowData()" and that value is typed cast in string. 
     String userEmail = new Serialition().loadShowData() as String;

     // "if" block will check the validation and then return output as "User Exists" if condition
     // becomes true. otherwise "else" will execute and return "User Doesn't Exits".
     if(inputEmail == userEmail)
     {
       return "User Exits !!!";
     }
     else
     {
       return "User Doesn't Exits !!!!";
     }
   }  
}