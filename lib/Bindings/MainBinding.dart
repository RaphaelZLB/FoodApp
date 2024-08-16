import 'package:get/get.dart';
import '../Controllers/MainController.dart';

class MainBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => MainController());
  }
}
