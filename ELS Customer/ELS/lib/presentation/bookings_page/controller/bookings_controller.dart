import '/core/app_export.dart';
import 'package:els/presentation/bookings_page/models/bookings_model.dart';

class BookingsController extends GetxController {
  BookingsController(this.bookingsModelObj);

  Rx<BookingsModel> bookingsModelObj;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
