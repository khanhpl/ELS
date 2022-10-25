library els_cus_mobile.globlas;

import 'dart:io';

import 'package:els_sitter/core/models/user_model.dart';



UserModel? curUser ;
bool isIDFrontCheck = false;
bool isIDBackCheck = false;
bool isIDFaceCheck = false;
File idFrontFile = File('');
File idBackFile = File('');
File idFaceFile = File('');