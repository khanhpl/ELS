import '../controller/manage_work_news1_controller.dart';
import 'package:get/get.dart';

class ManageWorkNews1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ManageWorkNews1Controller());
  }
}
