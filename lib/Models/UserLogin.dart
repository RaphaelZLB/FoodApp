import 'dart:convert';

class UserLogin {
  final String email;
  final String password;


  UserLogin({
    required this.email,
    required this.password,
  });

  Map<String,dynamic> ToMap() { //return users info as one block
    return{
      'email':email,'password':password
    };
  }

  String toJson() => json.encode(ToMap());

}