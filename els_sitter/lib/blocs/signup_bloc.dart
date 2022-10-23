import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;

class SignupBloc{
  final StreamController _fullNameController = StreamController();
  final StreamController _phoneController = StreamController();
  final StreamController _emailController = StreamController();
  final StreamController _dobController = StreamController();
  final StreamController _idNumberController = StreamController();
  final StreamController _addressController = StreamController();
  final StreamController _skillController = StreamController(); // chưa dùng tạm thời để rỗng
  final StreamController _expController = StreamController();
  final StreamController _genderController = StreamController();

  Stream get fullName => _fullNameController.stream;
  Stream get phone => _phoneController.stream;
  Stream get email => _emailController.stream;
  Stream get dob => _dobController.stream;
  Stream get id => _idNumberController.stream;
  Stream get address => _addressController.stream;
  Stream get gender => _genderController.stream;

  Future<bool> register(String fullname, String phone, String email, String gender, String dob, String id, String address) async {
    try {
      print('test fullname: '+ fullname);
      print('test email:'+ email);
      var url =
      Uri.parse("https://els12.herokuapp.com/sitter");
      final response = await http.post(
        url,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(
          <String, String>{
            'fullName': fullname,
            'dob': dob,
            'gender': gender,
            'phone': phone,
            'address': address,
            'email': email,
            'idNumber': id
          },
        ),
      );
      if (response.statusCode.toString() == '200') {

        return true;
      } else {
        return false;
      }
    } finally {}
  }
}