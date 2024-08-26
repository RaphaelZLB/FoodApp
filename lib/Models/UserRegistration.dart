import 'dart:convert';

class UserRegistration {
  final String name;
  final String email;
  final String password;
  final String phone;
  final String remember_token;


  UserRegistration({
    required this.name,
    required this.email,
    required this.phone,
    required this.password,
    required this.remember_token,
  });

  Map<String,dynamic> ToMap() { //return users info as one block
    return{
      'name':name,'email':email,'password':password,'phone':phone,'token':remember_token
    };
  }

  String toJson() => json.encode(ToMap());

}