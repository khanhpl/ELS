import '/core/app_export.dart';
import 'package:els/presentation/verification_code_screen/models/verification_code_model.dart';

class VerificationCodeController extends GetxController {
  Rx<VerificationCodeModel> verificationCodeModelObj =
      VerificationCodeModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
