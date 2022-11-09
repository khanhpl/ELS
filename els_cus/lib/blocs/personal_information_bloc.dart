import 'dart:async';
import 'dart:convert';

import 'package:els_cus_mobile/core/models/user_data_model.dart';
import 'package:http/http.dart' as http;
import '../core/utils/globals.dart' as Globals;

class PersonalInfoBloc {
  final StreamController _fullNameController = StreamController();
  final StreamController _emailController = StreamController();
  final StreamController _dobController = StreamController();
  final StreamController _addressController = StreamController();
  final StreamController _phoneController = StreamController();

  Stream get fullNameStream => _fullNameController.stream;
  Stream get emailStream => _emailController.stream;
  Stream get dobStream => _dobController.stream;
  Stream get addressStream => _addressController.stream;
  Stream get phoneStream => _phoneController.stream;

  printAll(String fullname, String email, String dob, String address, String phone){
    print(fullname);
    print(email);
    print(dob);
    print(address);
    print(phone);
  }

  Future<bool> updateInfo(String name, String gender, String dob, String address, String phone, String frontIdImgUrl, String backIdImgUrl, String avatarImgUrl) async {
    try{
      print('test fullname: '+ name);
      print('test gender:'+ gender);
      print('test dob: '+ dob);
      var url =
      Uri.parse("https://els12.herokuapp.com/customer/update");
      final response = await http.put(
        url,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization' : Globals.curUser!.data.token,
          'Accept': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(<String, String>{
          "email": Globals.curUser!.data.email,
          "address": address,
          "dob": dob,
          "fullName": name,
          "gender": gender,
          "phone": phone,
          "frontIdImgUrl": frontIdImgUrl,
          "backIdImgUrl": backIdImgUrl,
          "avatarImgUrl": avatarImgUrl
        }),
      );
      print('Status updateInfo:'+response.statusCode.toString());
      if (response.statusCode.toString() == '200') {
        // Globals.curUser=UserDataModel(email: Globals.curUser!.data.email, role: Globals.curUser!.data.role, token: Globals.curUser!.data.token, address: address, dob: dob, fullName: name, gender: gender, phone: phone);
        return true;
      } else {
        return false;
      }
    }
    finally {}
  }
}