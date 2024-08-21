import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Views/Profile.dart';

class NavigationController extends GetxController{

  final Rx<int> selectedIndex = 0.obs;

  final screens =
  [
    Container(color: Colors.grey),
    Container(color: Colors.red),
    Container(color: Colors.yellow),
    Get.put(Profile())
  ];
  }