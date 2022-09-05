import 'package:get/get.dart';
import 'banner01_item_model.dart';
import 'listuserpict5_item_model.dart';

class BrowseModel {
  RxList<Banner01ItemModel> banner01ItemList =
      RxList.filled(2, Banner01ItemModel());

  RxList<Listuserpict5ItemModel> listuserpict5ItemList =
      RxList.filled(3, Listuserpict5ItemModel());
}
