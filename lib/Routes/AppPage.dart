import 'package:food_app/Bindings/RegistrationBinding.dart';
import 'package:food_app/Routes/AppRoute.dart';
import 'package:food_app/Views/Main.dart';
import 'package:food_app/Views/Login.dart';
import 'package:food_app/Views/Registration.dart';
import 'package:get/get.dart';
import '../Bindings/MainBinding.dart';
import '../Bindings/LoginBinding.dart';
import '../Bindings/ProfileBinding.dart';
import '../Views/Profile.dart';

class AppPage {
  static final List<GetPage> pages = [
    GetPage(name: AppRoute.register, page: () => Registration(), binding: RegistrationBinding()),
    //
    GetPage(name: AppRoute.login, page: () => Login(), binding: LoginBinding()),
    //
    GetPage(name: AppRoute.main, page: () => Main(), binding: MainBinding()),
    //
    GetPage(name: AppRoute.profile, page: () => Profile(), binding: ProfileBinding()),
    //
    // GetPage(name: AppRoute.cart, page: () => (), binding: Binding()),
    //
    // GetPage(name: AppRoute.favourite, page: () => (), binding: Binding()),


  ];
}
