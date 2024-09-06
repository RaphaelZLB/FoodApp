import 'package:flutter/material.dart';
import 'package:food_app/Views/Cart.dart';
import 'package:food_app/Views/Profile.dart';
import 'package:food_app/Views/Home.dart';
import 'package:get/get.dart';

class NavigationController extends GetxController{
  final Rx<int> selectedIndex = 0.obs;
  final screens =
  [
    Home(),
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
          Obx(
          () => BottomNavigationBar(
            backgroundColor: Color.fromARGB(255, 164, 0, 22),
            // add color for unselected icon
            currentIndex: controller.selectedIndex.value, // similar to selectedIndex
            onTap: (index) => controller.selectedIndex.value = index, // similar to onDestinationSelected
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.house_outlined),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart_outlined),
                label: 'Cart',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.account_circle_outlined),
                label: 'Profile',
              ),
            ],
            selectedItemColor: Color.fromRGBO(252, 137, 0, 1), // equivalent to indicatorColor
    ),
    ),

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

        // bottomNavigationBar:
        // Obx( //observer observe the obs functions anywhere
        //     () =>
        //     NavigationBar(
        //       indicatorColor: Colors.white,
        //       backgroundColor: Color.fromARGB(255, 164, 0, 22),
        //       height: 80,
        //       selectedIndex: controller.selectedIndex.value,
        //       onDestinationSelected: (index) => controller.selectedIndex.value = index,
        //
        //       destinations: const [
        //         NavigationDestination(icon: Icon(Icons.house_outlined), label: 'Home',),
        //         NavigationDestination(icon: Icon(Icons.shopping_cart_outlined), label: 'Cart'),
        //         NavigationDestination(icon: Icon(Icons.account_circle_outlined), label: 'Profile')
        //     ],
        //   ),),
