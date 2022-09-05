import '/core/app_export.dart';
import 'package:els/presentation/browse_screen/models/browse_model.dart';
import 'package:flutter/material.dart';

class BrowseController extends GetxController {
  TextEditingController searchController = TextEditingController();

  TextEditingController groupTwentyThreeController = TextEditingController();

  TextEditingController groupTwentyTwoController = TextEditingController();

  Rx<BrowseModel> browseModelObj = BrowseModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
    groupTwentyThreeController.dispose();
    groupTwentyTwoController.dispose();
  }
}
