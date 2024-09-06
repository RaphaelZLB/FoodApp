import 'package:flutter/material.dart';
import 'package:food_app/Routes/AppPage.dart';
import 'package:food_app/Routes/AppRoute.dart';
import 'package:food_app/Views/Home.dart';
import 'package:food_app/Views/Login.dart';
import 'package:food_app/Views/NavigationMenu.dart';
import 'package:food_app/Views/Registration.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // navigatorKey: ,
      debugShowCheckedModeBanner: false,
      title: ('Food App'),
      getPages: AppPage.pages,
      initialRoute: AppRoute.navigation,
      theme: ThemeData.light(),
      home: NavigationMenu(),
    );
  }
}