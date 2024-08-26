import 'package:flutter/material.dart';
import 'package:food_app/Views/Cart.dart';
import 'package:food_app/Views/Favourite.dart';
import 'package:food_app/Views/Profile.dart';
import 'package:food_app/Views/Home.dart';
import 'package:get/get.dart';

class NavigationController extends GetxController{
  final Rx<int> selectedIndex = 0.obs;
  final screens =
  [
    Home(),
    Favourite(),
    Cart(),
    Profile()
  ];
}

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());

      return Scaffold(

        bottomNavigationBar:
        Obx( //observer observe the obs functions anywhere
            () =>
            NavigationBar(
              backgroundColor: Color.fromARGB(1, 116, 0, 15),
              height: 80,
              selectedIndex: controller.selectedIndex.value,
              onDestinationSelected: (index) => controller.selectedIndex.value = index,

              destinations: const [
                NavigationDestination(icon: Icon(Icons.house_outlined), label: 'Home',),
                NavigationDestination(icon: Icon(Icons.favorite_border_rounded), label: 'Favourites'),
                NavigationDestination(icon: Icon(Icons.shopping_cart_outlined), label: 'Cart'),
                NavigationDestination(icon: Icon(Icons.account_circle_outlined), label: 'Profile')
            ],
          ),),
        // ),
        body: Obx(
              ()=> controller.screens[controller.selectedIndex.value],),

      );
    }
}

        // ListView.builder(
        //   itemCount: controller.foods.length,
        //   itemBuilder: (BuildContext context, int index){
        //     var foods = controller.foods[index];
        //   },
        // )
