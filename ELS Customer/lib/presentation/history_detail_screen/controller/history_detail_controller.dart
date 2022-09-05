import '/core/app_export.dart';
import 'package:els/presentation/history_detail_screen/models/history_detail_model.dart';
import 'package:flutter/material.dart';

class HistoryDetailController extends GetxController {
  TextEditingController fieldrowwrappController2 = TextEditingController();

  TextEditingController fieldrowwrappOneController = TextEditingController();

  Rx<HistoryDetailModel> historyDetailModelObj = HistoryDetailModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    fieldrowwrappController2.dispose();
    fieldrowwrappOneController.dispose();
  }
}
