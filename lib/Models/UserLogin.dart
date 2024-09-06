import 'dart:convert';

class UserLogin {
  final String email;
  final String password;
  final String name;


  UserLogin({
    required this.email,
    required this.name,
    required this.password,
  });

  Map<String,dynamic> ToMap() { //return users info as one block
    return{
      'email':email,'password':password,'userName':name,
    };
  }

  String toJson() => json.encode(ToMap());

  factory UserLogin.fromjson(Map<String,dynamic> json){  //transform from json to objeect
    return UserLogin(
        name: json['name'] as String  ,
        email: json['email'] as String,
        password: json['password']
    );
  }

}