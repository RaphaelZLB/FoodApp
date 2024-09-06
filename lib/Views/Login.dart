import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Controllers/LoginController.dart';
import 'package:food_app/Routes/AppRoute.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  final LoginController controller = Get.find<LoginController>();

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      controller.login();
      Get.offNamed(AppRoute.navigation);
    } else {
      print('Form is invalid. Please correct the errors.');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                'LogIn Page',
                style: TextStyle(color: Colors.teal, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Center(
            child: Form(
              key: _formKey,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      focusedBorder:
                      OutlineInputBorder(borderSide: BorderSide(color: Colors.teal)),
                      labelText: 'Email',
                      labelStyle: TextStyle(color: Colors.teal, fontSize: 18),
                      hintText: 'Your email...',
                      hintStyle: TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
                      prefixIcon: Icon(Icons.email_outlined),
                    ),
                    controller: controller.email,
                    keyboardType: TextInputType.emailAddress,
                    maxLines: 1,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your email';
                      }
                      if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                        return 'Please enter a valid email address';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 30),
                  TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(borderSide: BorderSide(color: Colors.teal)),
                      focusedBorder:
                      OutlineInputBorder(borderSide: BorderSide(color: Colors.teal)),
                      labelText: 'Password',
                      labelStyle: TextStyle(color: Colors.teal, fontSize: 18),
                      hintText: 'Your password...',
                      hintStyle: TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
                      prefixIcon: Icon(Icons.lock_outline),
                    ),
                    controller: controller.password,
                    keyboardType: TextInputType.text,
                    obscureText: true,
                    maxLines: 1,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your password';
                      }
                      if (value.length < 4) {
                        return 'Password must be at least 4 characters long';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 80),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: _submitForm,
                          child: const Text("Login"),
                        ),
                        const Text("or"),
                        MaterialButton(
                          onPressed: () {
                            print("clicked");
                            Get.offNamed(AppRoute.register);
                          },
                          child: const Text(
                            "Go Register",
                            style: TextStyle(color: Colors.deepPurple),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}


// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import '../Controllers/LoginController.dart';
// import 'package:food_app/Routes/AppRoute.dart';
//
// class Login extends GetView<LoginController> {
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//           title: const Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Center(child:
//               Text('LogIn Page', style: TextStyle(color: Colors.teal,fontWeight: FontWeight.bold),),
//               ),],)  ),
//       body:SingleChildScrollView(
//         child: Center(
//           child: Form(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 TextFormField(
//                   decoration: InputDecoration(
//                       border: OutlineInputBorder(),
//                       focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.teal)),
//                       labelText: 'Email',
//                       labelStyle: TextStyle(color: Colors.teal,fontSize: 18),
//                       hintText: 'Your email...',
//                       hintStyle: TextStyle(fontSize: 15,fontWeight: FontWeight.w300),
//                       prefixIcon: Icon(Icons.email_outlined)
//                   ),
//                   controller: controller.email,
//                   keyboardType: TextInputType.emailAddress,
//                   maxLines: 1,
//                 ),
//
//                 SizedBox(height: 30),
//
//                 TextField(
//                   decoration: InputDecoration(
//                       border: OutlineInputBorder(borderSide: BorderSide( color: Colors.teal)),
//                       focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.teal)),
//                       labelText: 'Password',
//                       labelStyle: TextStyle(color: Colors.teal,fontSize: 18),
//                       hintText: 'Your password...',
//                       hintStyle: TextStyle(fontSize: 15,fontWeight: FontWeight.w300),
//                       prefixIcon: Icon(Icons.lock_outline)
//                   ),
//                   controller: controller.password,
//                   keyboardType: TextInputType.text,
//                   obscureText:  true,
//                   maxLines: 1,
//                 ),
//
//                 SizedBox(height: 80),
//
//                 Container(
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.end,
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       ElevatedButton(
//                         onPressed: (){
//                           controller.login();
//                           Get.offNamed(AppRoute.navigation  );
//
//                         }
//                         ,child: Text("Login"),
//                       ),
//
//                       Text("or"),
//
//                       MaterialButton(
//                         onPressed: (){
//                           print("clicked");
//                           Get.offNamed(AppRoute.register);
//                         },
//                         child: Text("Go Register",style: TextStyle(color: Colors.deepPurple),),
//                       ),
//                     ],
//                   ),
//                 ),
//                 // ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }