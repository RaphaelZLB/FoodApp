import 'package:flutter/cupertino.dart';
import 'package:food_app/Network/DioClient.dart';
import 'package:food_app/Core/ShowSuccessMessage.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../Models/UserRegistration.dart';
import '../Routes/AppRoute.dart';

class RegistrationController extends GetxController {

  TextEditingController email = TextEditingController();
  TextEditingController name = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController password = TextEditingController();

  late SharedPreferences prefs;  //initialize later.

  @override
  void onInit() async{
    // TODO: implement onInit
    super.onInit();
    prefs = await SharedPreferences.getInstance();
  }

  void register() async
  {
    UserRegistration user = UserRegistration (name: name.value.text, email: email.value.text, phone: phone.value.text, password: password.value.text);
    String request_body = user.toJson(); //transform the user as a json file

    var post= await DioClient().getInstance().post("/register",data: request_body);
    if(post.statusCode==200){
      ShowSuccessMessage(Get.context!, 'Success.', 'User Registered Successfully.', (){
        print(post.data);
        prefs.setString('token', post.data['token']);
        Get.offNamed(AppRoute.home);
      });
    }
  }
}