import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/Network/DioClient.dart';
import 'package:food_app/Models/FoodInfo.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FoodController extends GetxController {

TextEditingController name = TextEditingController();
TextEditingController price = TextEditingController();
TextEditingController cover_photo = TextEditingController();


  late SharedPreferences prefs;
  final foods = <FoodInfo>[].obs;

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

  void getFood() async {
    //DioClient().getInstance().get('');

    final request = await dio.get('/feeds/list',queryParameters: {
      "limit": "3",
      "start": "0",
      "tag": "list.recipe.popular",
    });
      if (request.statusCode == 200) {
        ///list of food in database
        var requestData = request.data as List;
        foods.value = requestData.map((data) => FoodInfo.fromjson(data)).toList();

        print("Fetching Food list: ${foods.length} items.");
      }
      else {
        // Handle error case
        print("Failed to fetch food list. Status code: ${request.statusCode}");
      }
  }

}
