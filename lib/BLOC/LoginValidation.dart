import 'package:login_project_app/Utility/Serialition.dart';

class LoginValidation
{

   String UserValidation(String inputEmail)
   {
     String userEmail = new Serialition().loadShowData() as String;

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