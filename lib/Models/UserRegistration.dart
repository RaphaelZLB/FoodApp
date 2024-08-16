import 'dart:convert';

class UserRegistration {
  final String name;
  final String email;
  final String password;
  final String phone;


  UserRegistration({
    required this.name,
    required this.email,
    required this.phone,
    required this.password,
  });

  Map<String,dynamic> ToMap() { //return users info as one block
    return{
      'name':name,'email':email,'password':password,'phone':phone
    };
  }

  String toJson() => json.encode(ToMap());

}