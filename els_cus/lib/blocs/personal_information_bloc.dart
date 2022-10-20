import 'dart:async';

class PersonalInfoBloc {
  final StreamController _fullNameController = StreamController();
  final StreamController _emailController = StreamController();
  final StreamController _dobController = StreamController();
  final StreamController _districtController = StreamController();
  final StreamController _cityController = StreamController();
  final StreamController _addressController = StreamController();
  final StreamController _phoneController = StreamController();

  Stream get fullNameStream => _fullNameController.stream;
  Stream get emailStream => _emailController.stream;
  Stream get dobStream => _dobController.stream;
  Stream get districtStream => _districtController.stream;
  Stream get cityStream => _cityController.stream;
  Stream get addressStream => _addressController.stream;
  Stream get phoneStream => _phoneController.stream;

  printAll(){

  }
}