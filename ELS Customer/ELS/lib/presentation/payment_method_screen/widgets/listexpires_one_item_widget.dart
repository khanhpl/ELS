import '../controller/payment_method_controller.dart';
import '../models/listexpires_one_item_model.dart';
import 'package:els/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListexpiresOneItemWidget extends StatelessWidget {
  ListexpiresOneItemWidget(this.listexpiresOneItemModelObj);

  ListexpiresOneItemModel listexpiresOneItemModelObj;

  var controller = Get.find<PaymentMethodController>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.center,
        child: Container(
          margin: getMargin(
            top: 1,
            right: 16,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: getPadding(
                      top: 1,
                    ),
                    child: Text(
                      "lbl_h_t_h_n".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtRobotoRomanRegular17Black900.copyWith(
                        height: 1.00,
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      bottom: 1,
                    ),
                    child: Text(
                      "lbl_22_24".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style:
                          AppStyle.txtRobotoRomanRegular17Bluegray400.copyWith(
                        height: 1.00,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                height: getVerticalSize(
                  1.00,
                ),
                width: getHorizontalSize(
                  163.00,
                ),
                margin: getMargin(
                  top: 12,
                ),
                decoration: BoxDecoration(
                  color: ColorConstant.bluegray50,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
