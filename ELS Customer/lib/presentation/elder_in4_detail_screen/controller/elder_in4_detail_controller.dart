import '/core/app_export.dart';
import 'package:els/presentation/elder_in4_detail_screen/models/elder_in4_detail_model.dart';
import 'package:flutter/material.dart';

class ElderIn4DetailController extends GetxController {
  TextEditingController fieldrowwrappController1 = TextEditingController();

  TextEditingController fieldrowwrappTwoController = TextEditingController();

  TextEditingController fieldrowwrappThreeController = TextEditingController();

  Rx<ElderIn4DetailModel> elderIn4DetailModelObj = ElderIn4DetailModel().obs;

  SelectionPopupModel? selectedDropDownValue;

  SelectionPopupModel? selectedDropDownValue1;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    fieldrowwrappController1.dispose();
    fieldrowwrappTwoController.dispose();
    fieldrowwrappThreeController.dispose();
  }

  onSelected(dynamic value) {
    selectedDropDownValue = value as SelectionPopupModel;
    elderIn4DetailModelObj.value.dropdownItemList.forEach((element) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    });
    elderIn4DetailModelObj.value.dropdownItemList.refresh();
  }

  onSelected1(dynamic value) {
    selectedDropDownValue1 = value as SelectionPopupModel;
    elderIn4DetailModelObj.value.dropdownItemList1.forEach((element) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    });
    elderIn4DetailModelObj.value.dropdownItemList1.refresh();
  }
}
