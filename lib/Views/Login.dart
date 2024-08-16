import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Controllers/LoginController.dart';
import 'package:food_app/Routes/AppRoute.dart';

class Login extends GetView<LoginController> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(child:
              Text('LogIn Page', style: TextStyle(color: Colors.teal,fontWeight: FontWeight.bold),),
              ),],)  ),
      body:SingleChildScrollView(
        child: Center(
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.teal)),
                      labelText: 'Email',
                      labelStyle: TextStyle(color: Colors.teal,fontSize: 18),
                      hintText: 'Your email...',
                      hintStyle: TextStyle(fontSize: 15,fontWeight: FontWeight.w300),
                      prefixIcon: Icon(Icons.email_outlined)
                  ),
                  controller: controller.email,
                  keyboardType: TextInputType.emailAddress,
                  maxLines: 1,
                ),

                SizedBox(height: 30),

                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(borderSide: BorderSide( color: Colors.teal)),
                      focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.teal)),
                      labelText: 'Password',
                      labelStyle: TextStyle(color: Colors.teal,fontSize: 18),
                      hintText: 'Your password...',
                      hintStyle: TextStyle(fontSize: 15,fontWeight: FontWeight.w300),
                      prefixIcon: Icon(Icons.lock_outline)
                  ),
                  controller: controller.password,
                  keyboardType: TextInputType.text,
                  obscureText:  true,
                  maxLines: 1,
                ),

                SizedBox(height: 80),

                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: (){
                          controller.login();
                        }
                        ,child: Text("Login"),
                      ),

                      Text("or"),

                      MaterialButton(
                        onPressed: (){
                          print("clicked");
                          Get.toNamed(AppRoute.register);
                        },
                        child: Text("Go Register",style: TextStyle(color: Colors.deepPurple),),
                      ),
                    ],
                  ),
                ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}