import '../controller/browse_controller.dart';
import 'package:get/get.dart';

class BrowseBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BrowseController());
  }
}
