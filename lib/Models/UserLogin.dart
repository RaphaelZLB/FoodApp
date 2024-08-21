import 'dart:convert';

class UserLogin {
  final String email;
  final String password;
  final String userName;


  UserLogin({
    required this.email,
    required this.userName,
    required this.password,
  });

  Map<String,dynamic> ToMap() { //return users info as one block
    return{
      'email':email,'password':password,'userName':userName,
    };
  }

  String toJson() => json.encode(ToMap());

}