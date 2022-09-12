
import 'package:els_cus_mobile/core/utils/color_constant.dart';
import 'package:els_cus_mobile/core/utils/image_constant.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          width: size.width,
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      height: size.height,
                      width: size.width,
                      decoration: BoxDecoration(
                        color: ColorConstant.purple900,
                      ),
                      child: Stack(
                        alignment: Alignment.topLeft,
                        children: [
                          Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                              padding:const EdgeInsets.fromLTRB(
                                61.0,
                                20.0,
                                61.0,
                                20.0,
                              ),
                              child: Text(
                                "ElderlySitter",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: ColorConstant.whiteA700,
                                  fontSize: 30,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w700,
                                  height: 1.00,
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(
                                50,
                                328,
                                50,
                                328,
                              ),
                              child: Image.asset(ImageConstant.imgLocation,
                                width: size.width*0.25,
                                height: size.height*0.11,
                              ),
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
      ),
    );
  }
}
