import 'package:food_app/Bindings/RegistrationBinding.dart';
import 'package:food_app/Routes/AppRoute.dart';
import 'package:food_app/Views/Login.dart';
import 'package:food_app/Views/Registration.dart';
import 'package:get/get.dart';
import '../Bindings/HomeBinding.dart';
import '../Bindings/LoginBinding.dart';
import '../Bindings/NavigationBinding.dart';
import '../Bindings/ProfileBinding.dart';
import '../Views/Cart.dart';
import '../Views/Profile.dart';
import '../Views/Home.dart';
import '../Views/NavigationMenu.dart';

class AppPage {
  static final List<GetPage> pages = [
    GetPage(name: AppRoute.register, page: () => Registration(), binding: RegistrationBinding()),
    //
    GetPage(name: AppRoute.login,  page: () => Login(), binding: LoginBinding()),
    //
    GetPage(name: AppRoute.navigation,  page: () => NavigationMenu(), binding: NavigationBinding()),
    //
    GetPage(name: AppRoute.home,   page: () => Home(), binding: HomeBinding()),
    //
    GetPage(name: AppRoute.cart,   page: () => Cart() ),
    //
    GetPage(name: AppRoute.profile,page: () => Profile(), binding: ProfileBinding()),

  ];
}
