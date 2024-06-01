import 'package:flutter/cupertino.dart';

class LoginController{

  TextEditingController userNameController = TextEditingController();


  clearText(){
    userNameController.clear();
  }

}