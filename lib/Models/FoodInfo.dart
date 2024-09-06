import 'dart:convert';
import 'dart:ffi';

class FoodInfo{

  final String name;
  final Double price;
  // final String cover_photo;
  // final String rating;
  // final String business's name;


  FoodInfo({
    required this.name,
    required this.price,
    // required this.cover_photo,
  });

  Map<String,dynamic> ToMap(){
    return{
      'name':name,
      'price':price,
      // 'cover_photo':cover_photo,
    };
  }

  String toJson () => json.encode(ToMap()); //transform to json

  factory FoodInfo.fromjson(Map<String,dynamic> json){  //transform from json to Food objeect
    return FoodInfo(
        name: json['name'] as String  ,
        price: json['price'] as Double,
        // cover_photo: json['coverPhoto'] as String
    );
  }

  static List<FoodInfo> foodsFromSnapshot(List snapshot) {
    return snapshot.map((data) {
      return FoodInfo.fromjson(data);
    }).toList();
  }

}