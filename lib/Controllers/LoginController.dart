import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../Models/UserLogin.dart';
import '../Network/DioClient.dart';
import '../Routes/AppRoute.dart';
import '../Core/ShowSuccessMessage.dart';

class LoginController extends GetxController {

  TextEditingController userName = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

late SharedPreferences prefs; //initialize later.

  @override
  void onInit() async {
    // TODO: implement onInit
    super.onInit();
    load_shared_preferences();
  }

  void load_shared_preferences() async {
    prefs = await SharedPreferences.getInstance();
  }

  void login() async
  {
    UserLogin user = UserLogin( email: email.value.text, password: password.value.text,name: userName.value.text);
    String request_body = user.toJson(); //transform the user as a json file

    var post = await DioClient().getInstance().post("/login",data: request_body);
    if(post.statusCode==200){
      ShowSuccessMessage(Get.context!,"Welcome","You logged in successfuly.",(){
        print(post.data);
        prefs.setString("token", post.data['token']);
        Get.offNamed(AppRoute.home);
      });
    }
  }
}