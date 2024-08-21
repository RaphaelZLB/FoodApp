import 'package:flutter/material.dart';
import 'package:food_app/Controllers/NavigationController.dart';
import 'package:get/get.dart';

class Main extends GetView<NavigationController> {
  @override
  Widget build(BuildContext context) {
    final navController = Get.put(NavigationController());

      return Scaffold(

        bottomNavigationBar:
        // Obx( //observer observe the obs functions anywhere
        //     () =>
            NavigationBar(
            height: 80,
            elevation: 0,
            selectedIndex: navController.selectedIndex.value,
            onDestinationSelected: (index) => navController.selectedIndex.value = index,

            destinations:[
              NavigationDestination(icon: Icon(Icons.house_outlined), label: 'Home',),
              NavigationDestination(icon: Icon(Icons.favorite_border_rounded), label: 'Favourites'),
              NavigationDestination(icon: Icon(Icons.shopping_cart_outlined), label: 'Cart'),
              NavigationDestination(icon: Icon(Icons.account_circle_outlined), label: 'Profile')
            ],
          ),
        // ),
        body: Obx(() => navController.screens[navController.selectedIndex.value]) ,
      );
    }
  }
        // ListView.builder(
        //   itemCount: controller.foods.length,
        //   itemBuilder: (BuildContext context, int index){
        //     var foods = controller.foods[index];
        //   },
        // )
