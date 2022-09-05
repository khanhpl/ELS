import '/core/app_export.dart';
import 'package:els/presentation/favorites_screen/models/favorites_model.dart';

class FavoritesController extends GetxController {
  Rx<FavoritesModel> favoritesModelObj = FavoritesModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
