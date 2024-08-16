import 'dart:convert';
import 'dart:ffi';

class Food{

  final String name;
  final Double price;
  final String coverPhoto;

  Food({
    required this.name,
    required this.price,
    required this.coverPhoto,
  });

  Map<String,dynamic> ToMap(){
    return{
      'name':name,
      'price':price,
      'coverPhoto':coverPhoto,
    };
  }

  String toJson () => json.encode(ToMap()); //transform to json

  factory Food.fromjson(Map<String,dynamic> json){  //transform from json to Food objeect
    return Food(
        name: json['name'],
        price: json['price'],
        coverPhoto: json['coverPhoto']);
  }
}