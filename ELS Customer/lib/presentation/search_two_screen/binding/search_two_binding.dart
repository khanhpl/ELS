import '../controller/search_two_controller.dart';
import 'package:get/get.dart';

class SearchTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SearchTwoController());
  }
}
