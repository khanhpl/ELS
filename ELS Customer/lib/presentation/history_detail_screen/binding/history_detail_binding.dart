import '../controller/history_detail_controller.dart';
import 'package:get/get.dart';

class HistoryDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HistoryDetailController());
  }
}
