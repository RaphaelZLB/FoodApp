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

}