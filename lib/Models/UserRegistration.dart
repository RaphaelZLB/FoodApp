import 'dart:convert';

class UserRegistration {
  final String name;
  final String email;
  final String password;
  final String phone_number;
  final String address;
  final String role;
  final String? remember_token;


  UserRegistration({
    required this.name,
    required this.email,
    required this.phone_number,
    required this.password,
    required this.address,
    required this.role,
    this.remember_token,
  });

  Map<String,dynamic> ToMap() { //return users info as one block
    return{
      'name':name,'email':email,'password':password,'phone':phone_number,'role':role,'remember_token':remember_token,'address':address,
    };
  }

  String toJson() => json.encode(ToMap());

}