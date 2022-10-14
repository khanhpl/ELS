
import 'package:els_cus_mobile/core/utils/color_constant.dart';
import 'package:els_cus_mobile/presentation/schedule_screen/widget/listuserpict_item_widget.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class UpcommingWidget extends StatefulWidget {
  const UpcommingWidget({super.key});

  @override
  State<UpcommingWidget> createState() => _UpcommingWidgetState();
}

class _UpcommingWidgetState extends State<UpcommingWidget> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Material(
        child: Container(
          color: Colors.transparent,
          child: SingleChildScrollView(
            child: Stack(
              alignment: Alignment.bottomLeft,
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    width: size.width,
                    margin: EdgeInsets.only(
                      left: size.width*0.03,
                      right: size.width*0.03,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
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
                              return ListuserpictItemWidget();
                            },
                          ),
                        ),
                        Container(
                          height: 1,
                          width: size.width,
                          margin: EdgeInsets.only(
                            top: size.width*0.03,
                          ),
                          decoration: BoxDecoration(
                            color: ColorConstant.bluegray50,
                          ),
                        ),
                      ],
                    ),
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
