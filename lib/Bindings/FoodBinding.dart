import 'package:get/get.dart';
import '../Controllers/FoodController.dart';

class FoodBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => FoodController());
  }
}