import 'dart:async';
import 'dart:convert';

import 'package:els_sitter/core/models/sitter_service_request_model.dart';
import 'package:els_sitter/core/models/certificateModel.dart';
import 'package:els_sitter/core/models/user_id_image_model.dart';
import 'package:http/http.dart' as http;

import '../core/validators/validations.dart';

class SignupBloc{
  final StreamController _fullNameController = StreamController();
  final StreamController _phoneController = StreamController();
  final StreamController _emailController = StreamController();
  final StreamController _dobController = StreamController();
  final StreamController _idNumberController = StreamController();
  final StreamController _addressController = StreamController();
  final StreamController _skillController = StreamController(); // chưa dùng tạm thời để rỗng
  final StreamController _expController = StreamController(); // chưa dùng tạm thời để rỗng
  final StreamController _genderController = StreamController();

  Stream get fullName => _fullNameController.stream;
  Stream get phone => _phoneController.stream;
  Stream get email => _emailController.stream;
  Stream get dob => _dobController.stream;
  Stream get id => _idNumberController.stream;
  Stream get address => _addressController.stream;
  Stream get gender => _genderController.stream;

  bool isValidInput(String fullname, String email, String phone, String dob, String id, String address, String gender){
    bool isValid = false;
    bool fullnameValid = false;
    bool phoneValid = false;
    bool dobValid = false;
    bool idValid = false;
    bool addressValid = false;
    bool genderValid = false;
    bool userValid = false;
    bool passValid = false;
    bool rePassValid = false;

    if(fullname.isEmpty){
      _fullNameController.sink.addError("Họ và tên không thể để trống");
      fullnameValid = false;
    }else{
      _fullNameController.sink.add("OK");
      fullnameValid = true;
    }

    if(phone.isEmpty){
      _phoneController.sink.addError("Số điện thoại không thể để trống");
      phoneValid = false;
    }else{
      _phoneController.sink.add("OK");
      phoneValid = true;
    }

    if(!Validations.isValidEmail(email)){

      _emailController.sink.addError("Email không hợp lệ!");
      userValid = false;
    }else{
      _emailController.sink.add("OK");
      userValid = true;
    }

    if(userValid && fullnameValid && phoneValid && genderValid && dobValid && idValid && addressValid){
      isValid = true;
    }
    return isValid;
  }

  Future<bool> register(String fullname, String phone, String email, String gender, String dob, String id, String address, List<SitterServiceRequestModel> listSitterService, UserIDImageModel userIDImage, List<CertificateModel> listCert) async {
    try {
      print('test fullname: '+ fullname);
      print('test email:'+ email);
      print('test dob:' + dob);
      print('test phone:' + phone);
      print('test id:' + id);
      print('test address:' + address);
      print('test listSitterService' + listSitterService.length.toString());
      print('test userIDImage '+ userIDImage.avatarImgUrl);
      print('test gender:' + gender);
      print('test cert' + listCert.length.toString());
      var url =
      Uri.parse("https://els12.herokuapp.com/candidate");
      final response = await http.post(
        url,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Accept': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(
          <String, dynamic>{
            'fullName': fullname,
            'dob': dob,
            'gender': gender,
            'phone': phone,
            'address': address,
            'email': email,
            'sitterServiceRequestDTOS': listSitterService,
            'userImgDTO': userIDImage,
            'idNumber': id,
            'certificateDTOS': listCert,
          },
        ),
      );
      print('statusCode: ' + response.statusCode.toString());
      if (response.statusCode.toString() == '200') {

        return true;
      } else {
        return false;
      }
    } finally {}
  }
}