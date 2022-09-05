import '/core/app_export.dart';
import 'package:els/presentation/search_two_screen/models/search_two_model.dart';
import 'package:flutter/material.dart';

class SearchTwoController extends GetxController {
  TextEditingController locationController1 = TextEditingController();

  TextEditingController categoryController1 = TextEditingController();

  TextEditingController genderController1 = TextEditingController();

  Rx<SearchTwoModel> searchTwoModelObj = SearchTwoModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    locationController1.dispose();
    categoryController1.dispose();
    genderController1.dispose();
  }
}
