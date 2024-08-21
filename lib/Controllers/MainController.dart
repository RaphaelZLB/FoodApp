import 'package:food_app/Network/DioClient.dart';
import 'package:food_app/Models/Food.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MainController extends GetxController {
  late SharedPreferences prefs;

  final foods = <Food>[].obs;

  void getFood() async {
    var request = await DioClient().getInstance().get('/food');
    if (request.statusCode == 200) {
      var requestData = request.data as List;
      foods.value = requestData.map((cart) => Food.fromjson(cart)).toList();
      print("Fetching Food list: ${foods.length} items.");
    }
  }

  @override
  void onInit() async {
    // TODO: implement onInit
    super.onInit();
    load_shared_preferences();
    getFood();
  }

  void load_shared_preferences() async {
    prefs = await SharedPreferences.getInstance();
  }

}
