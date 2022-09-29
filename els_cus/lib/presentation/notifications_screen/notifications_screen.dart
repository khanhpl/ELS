import 'package:els_cus_mobile/core/utils/color_constant.dart';
import 'package:els_cus_mobile/core/utils/image_constant.dart';
import '../notifications_screen/widgets/listbarbaramichell_item_widget.dart';
import 'package:flutter/material.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: SizedBox(
          width: size.width,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: ColorConstant.whiteA700,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                          left: size.width*0.03,
                          top: size.height*0.01,
                          bottom: size.height*0.01,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(ImageConstant.imgFilter,
                              width: size.height*0.015,
                              height: size.height*0.015,
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                top: size.height*0.02,
                              ),
                              child: Text(
                                "Thông báo",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: ColorConstant.black900,
                                  fontSize: 34,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w700,
                                  height: 1.00,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      // Padding(
                      //   padding: EdgeInsets.only(
                      //     top: 19,
                      //     right: 16,
                      //     bottom: 72,
                      //   ),
                      //   child: Image.asset(ImageConstant.imgIconmore,
                      //     width: size.height*0.015,
                      //     height: size.height*0.015,
                      //   ),
                      // ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: size.width*0.03,
                      top: size.height*0.01,
                      right: size.width*0.03,
                    ),
                    child: ListView.separated(
                      physics: BouncingScrollPhysics(),
                      shrinkWrap: true,
                      separatorBuilder: (context, index) {
                        return Container(
                          height: 1,
                          width: size.width,
                          decoration: BoxDecoration(
                            color: ColorConstant.bluegray50,
                          ),
                        );
                      },
                      itemCount: 6,
                      itemBuilder: (context, index) {
                        return ListbarbaramichellItemWidget();
                      },
                    ),
                  ),
                ),
                Container(
                  height: 1,
                  width: size.width,
                  margin: EdgeInsets.only(
                    left: size.width*0.03,
                    top: size.height*0.01,
                    right: size.width*0.03,
                  ),
                  decoration: BoxDecoration(
                    color: ColorConstant.bluegray50,
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
