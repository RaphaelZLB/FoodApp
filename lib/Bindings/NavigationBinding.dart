import 'package:get/get.dart';
import 'package:food_app/Views/NavigationMenu.dart';

class NavigationBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => NavigationController());
  }
}
