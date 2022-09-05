import 'package:get/get.dart';
import 'sliderhologram_item_model.dart';
import 'listexpires_one_item_model.dart';

class PaymentMethodModel {
  RxList<SliderhologramItemModel> sliderhologramItemList =
      RxList.filled(1, SliderhologramItemModel());

  RxList<ListexpiresOneItemModel> listexpiresOneItemList =
      RxList.filled(2, ListexpiresOneItemModel());
}
