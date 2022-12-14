import 'dart:async';
import 'dart:convert';

import 'package:els_sitter/core/models/sitter_service_request_model.dart';
import 'package:els_sitter/core/models/certificateModel.dart';
import 'package:els_sitter/core/models/user_id_image_model.dart';
import 'package:http/http.dart' as http;

import '../core/validators/validations.dart';

class SignupBloc {
  final StreamController _fullNameController = StreamController();
  final StreamController _phoneController = StreamController();
  final StreamController _emailController = StreamController();
  final StreamController _dobController = StreamController();
  final StreamController _idNumberController = StreamController();
  final StreamController _addressController = StreamController();
  final StreamController _genderController = StreamController();
  final StreamController _idImageController = StreamController();
  final StreamController _descriptionController = StreamController();

  Stream get fullName => _fullNameController.stream;

  Stream get phone => _phoneController.stream;

  Stream get email => _emailController.stream;

  Stream get dob => _dobController.stream;

  Stream get id => _idNumberController.stream;

  Stream get address => _addressController.stream;

  Stream get gender => _genderController.stream;

  Stream get idImage => _idImageController.stream;

  Stream get description => _descriptionController.stream;

  bool isValidInput(
      String fullname,
      String email,
      String phone,
      String dob,
      String id,
      String address,
      String gender,
      UserIDImageModel model,
      String description) {
    bool isValid = false;
    bool fullnameValid = false;
    bool phoneValid = false;
    bool dobValid = false;
    bool idValid = false;
    bool addressValid = false;
    bool genderValid = false;
    bool userValid = false;
    bool idImageValid = false;
    bool descriptionValid = false;

    if (fullname.isEmpty) {
      _fullNameController.sink.addError("Họ và tên không thể để trống");
      fullnameValid = false;
    } else {
      _fullNameController.sink.add("OK");
      fullnameValid = true;
    }

    if (phone.isEmpty) {
      _phoneController.sink.addError("Số điện thoại không thể để trống");
      phoneValid = false;
    } else {
      if (!Validations.isValidPhone(phone)) {
        _phoneController.sink.addError("Số điện thoại không hợp lệ");
        phoneValid = false;
      } else {
        _phoneController.sink.add("OK");
        phoneValid = true;
      }
    }

    if (address.isEmpty) {
      _addressController.sink.addError("Địa chỉ không thể để trống");
      addressValid = false;
    } else {
      _addressController.sink.add("OK");
      addressValid = true;
    }

    if (id.isEmpty) {
      _idNumberController.sink.addError("Số CMND/CCCD không thể để trống");
      idValid = false;
    } else {
      if (!Validations.isValidId(id)) {
        _idNumberController.sink.addError("Số CCCD/CMND không hợp lệ");
        idValid = false;
      } else {
        _idNumberController.sink.add("OK");
        idValid = true;
      }
    }

    if (email.isEmpty) {
      _emailController.sink.addError("Email không thể để trống");
      userValid = false;
    } else {
      if (!Validations.isValidEmail(email)) {
        _emailController.sink.addError("Email không hợp lệ!");
        userValid = false;
      } else {
        _emailController.sink.add("OK");
        userValid = true;
      }
    }

    if (dob == "Chọn ngày") {
      _dobController.sink.addError("Ngày sinh không thể để trống");
      dobValid = false;
    } else {
      _dobController.sink.add("OK");
      dobValid = true;
    }

    if (!Validations.isValidGender(gender)) {
      _genderController.sink.addError("Giới tính chỉ là Nam hoặc Nữ");
      genderValid = false;
    } else {
      _genderController.sink.add("OK");
      genderValid = true;
    }

    if (model.avatarImgUrl.isEmpty ||
        model.backIdImgUrl.isEmpty ||
        model.fontIdImgUrl.isEmpty) {
      _idImageController.sink.addError("Ba hình ảnh phải được tải lên đầy đủ");
      idImageValid = false;
    } else {
      _idImageController.add("Ok");
      idImageValid = true;
    }
    if (description.isEmpty) {
      _descriptionController.addError("Hãy thêm mô tả về bản thân bạn");
      descriptionValid = false;
    } else {
      _descriptionController.add("OK");
      descriptionValid = true;
    }

    if (userValid &&
        fullnameValid &&
        phoneValid &&
        genderValid &&
        dobValid &&
        addressValid &&
        idValid &&
        idImageValid &&
        descriptionValid) {
      isValid = true;
    }
    return isValid;
  }

  Future<bool> register(
      String fullname,
      String phone,
      String email,
      String gender,
      String dob,
      String id,
      String address,
      List<SitterServiceRequestModel> listSitterService,
      UserIDImageModel userIDImage,
      List<CertificateModel> listCert,
      String description) async {
    try {
      var url = Uri.parse("https://els12.herokuapp.com/candidate/add");
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
            "frontIdImgUrl": userIDImage.fontIdImgUrl,
            "backIdImgUrl": userIDImage.backIdImgUrl,
            "avatarImgUrl": userIDImage.avatarImgUrl,
            'email': email,
            'addSitterServiceRequestDTOList': listSitterService,
            "idNumber": id,
            "description": description,
            'certificateDTOS': listCert,
          },
        ),
      );
      if (response.statusCode.toString() == '200') {
        if (json.decode(response.body)['errorCode'] == "ADD_CANDIDATE_FAIL") {
          print(
              'Error code regisger: ${json.decode(response.body)['errorCode']}');
          return false;
        } else {
          return true;
        }
      } else {
        return false;
      }
    } finally {}
  }
}
