import 'package:flutter/material.dart';
import 'package:food_app/Controllers/RegistrationController.dart';
import 'package:food_app/Routes/AppRoute.dart';
import 'package:get/get.dart';

class Registration extends StatefulWidget {
  @override
  _RegistrationState createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  // Create a global key to uniquely identify the Form widget
  final _formKey = GlobalKey<FormState>();
  final RegistrationController controller = Get.find<RegistrationController>();

  // Function to handle form submission and get to the next page
  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      // If the form is valid, proceed with submission logic
      controller.register();
      Get.offNamed(AppRoute.home);
    } else {
      print('Form is invalid. Please correct the errors.');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'SignUp',
            style: TextStyle(color: Colors.teal, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Center(
            child: Form(
              key: _formKey,
              autovalidateMode: AutovalidateMode.onUserInteraction, //validate the feild on interaction
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.teal)),
                      labelText: 'Name',
                      labelStyle: TextStyle(color: Colors.teal, fontSize: 14),
                      hintText: 'Name...',
                      hintStyle: TextStyle(
                          fontSize: 15, fontWeight: FontWeight.w300),
                    ),
                    controller: controller.name,
                    keyboardType: TextInputType.name,
                    maxLines: 1,
                    validator: (value) {
                      if (value!.length < 4) {
                        return 'Name must be at least 4 characters long';
                      }
                      return null;
                    },
                  ),

                  const SizedBox(height: 30),

                  TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.teal)),
                      labelText: 'Email',
                      labelStyle: TextStyle(color: Colors.teal, fontSize: 14),
                      hintText: 'Your email...',
                      hintStyle: TextStyle(
                          fontSize: 15, fontWeight: FontWeight.w300),
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
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.teal)),
                      labelText: 'Password',
                      labelStyle: TextStyle(color: Colors.teal, fontSize: 14),
                      hintText: 'Your password...',
                      hintStyle: TextStyle(
                          fontSize: 15, fontWeight: FontWeight.w300),
                    ),
                    controller: controller.password,
                    keyboardType: TextInputType.text,
                    obscureText: true,
                    maxLines: 1,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your password';
                      }
                      if (value.length < 6) {
                        return 'Password must be at least 6 characters long';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 30),
                  TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.teal)),
                      labelText: 'Phone Number',
                      labelStyle: TextStyle(color: Colors.teal, fontSize: 14),
                      hintText: 'Your phone number...',
                      hintStyle: TextStyle(
                          fontSize: 15, fontWeight: FontWeight.w300),
                    ),
                    controller: controller.phone,
                    keyboardType: TextInputType.phone,
                    maxLines: 1,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your phone number';
                      }
                      if (value.length < 4) {
                        return 'Password must be at least 4 characters long';
                      }
                      if (!RegExp(r'^\d{10,}$').hasMatch(value)) {
                        return 'Please enter a valid phone number';
                      }
                      return null;
                    },
                  ),

                  const SizedBox(height: 50),

                  ElevatedButton(
                    onPressed: _submitForm,
                    child: const Text("SignUp", style: TextStyle(color: Colors.teal)),
                  ),
                  const Text("or"),
                  MaterialButton(
                    onPressed: () {
                      Get.offNamed(AppRoute.login);
                    },
                    child: const Text("Go Login", style: TextStyle(color: Colors.teal)),
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


// class Registration extends GetView<RegistrationController> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//           title: const Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Center(
//                 child: Text(
//                   'SignUp',
//                   style:
//                   TextStyle(color: Colors.teal, fontWeight: FontWeight.bold),
//                 ),
//               ),
//             ],
//           )),
//
//       body:SingleChildScrollView(
//         child: Padding(
//           padding: EdgeInsets.all(25.0),
//           child: Center(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 TextField(
//                   decoration: InputDecoration(
//                       border: OutlineInputBorder(),
//                       focusedBorder: OutlineInputBorder(
//                           borderSide: BorderSide(color: Colors.teal)),
//                       labelText: 'Name',
//                       labelStyle:
//                       TextStyle(color: Colors.teal, fontSize: 14),
//                       hintText: 'Name...',
//                       hintStyle: TextStyle(
//                           fontSize: 15, fontWeight: FontWeight.w300)),
//                   controller: controller.name,
//                   keyboardType: TextInputType.name,
//                   maxLines: 1,
//                 ),
//
//                 SizedBox(height: 30),
//
//                 TextField(
//                   decoration: InputDecoration(
//                       border: OutlineInputBorder(),
//                       focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.teal)),
//                       labelText: 'Email',
//                       labelStyle:TextStyle(color: Colors.teal, fontSize: 14),
//                       hintText: 'Your email...',
//                       hintStyle: TextStyle(
//                           fontSize: 15, fontWeight: FontWeight.w300)),
//                   controller: controller.email,
//                   keyboardType: TextInputType.emailAddress,
//                   maxLines: 1,
//                 ),
//
//                 SizedBox(height: 30),
//
//                 TextField(
//                   decoration: InputDecoration(
//                       border: OutlineInputBorder(borderSide: BorderSide(color: Colors.teal)),
//                       focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.teal)),
//                       labelText: 'Password',
//                       labelStyle: TextStyle(color: Colors.teal, fontSize: 14),
//                       hintText: 'Your password...',
//                       hintStyle: TextStyle(
//                           fontSize: 15, fontWeight: FontWeight.w300)),
//                   controller: controller.password,
//                   keyboardType: TextInputType.text,
//                   obscureText: true,
//                   maxLines: 1,
//                 ),
//
//                 SizedBox(height: 30),
//
//                 TextField(
//                   decoration: InputDecoration(
//                       border: OutlineInputBorder(),
//                       focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.teal)),
//                       labelText: 'Phone Number',
//                       labelStyle: TextStyle(color: Colors.teal, fontSize: 14),
//                       hintText: 'Your phone number...',
//                       hintStyle: TextStyle(
//                           fontSize: 15, fontWeight: FontWeight.w300)),
//                   controller: controller.phone,
//                   keyboardType: TextInputType.phone,
//                   maxLines: 1,
//                 ),
//
//                 SizedBox(height: 50),
//
//                 Container(child: Column(
//                   children: [
//                     Center(
//                       child: ElevatedButton(
//                         onPressed: (){
//                           controller.register();
//                           Get.offNamed(AppRoute.navigation);
//                         }
//                         ,child: Text("SignUp",style: TextStyle(color: Colors.teal),),
//                       ),
//                     ),
//
//                     Text("or"),
//
//                     Center(
//                       child: MaterialButton(
//                         onPressed: (){
//                           Get.offNamed(AppRoute.login);
//                         }
//                         ,child: Text("Go Login",style:TextStyle(color: Colors.teal ),),
//                       ),
//                     ),
//                   ],
//                 ),
//                 )
//                 // ElevatedButton(onPressed: () {}, child: Text('register')),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// // HIDE PASSWORD TOGGLE BUTTON
// //         children: [
// //           TextField(
// //             decoration: InputDecoration(
// //                 border: OutlineInputBorder(),
// //                 labelText: 'Email',
// //                 hintText: 'email',
// //                 suffixIcon: IconButton(
// //                     icon: Icon(Icons.email_outlined),
// //                     onPressed: () => setState((){
// //                         _secureText = !_secureText;
// //                       }
// //                       ),
// //                   ),
// //
// //                 alignLabelWithHint: ,
// //             ),
// //             TextInputType(),
// //           )
// //         ],
// //       ),
// //       ),
// //     );
// //   }
// // }