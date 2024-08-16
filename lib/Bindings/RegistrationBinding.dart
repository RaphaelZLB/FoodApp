import 'package:food_app/Controllers/RegistrationController.dart';
import 'package:get/get.dart';

class RegistrationBinding extends Bindings {
  @override
  void dependencies() => Get.lazyPut(() => RegistrationController());
}