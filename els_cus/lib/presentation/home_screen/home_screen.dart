import 'package:els_cus_mobile/core/utils/color_constant.dart';
import 'package:els_cus_mobile/core/utils/image_constant.dart';
import 'package:els_cus_mobile/presentation/home_screen/widgets/banner_item_widget.dart';
import 'package:els_cus_mobile/presentation/home_screen/widgets/listuserpict_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../widgets/custom_search_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: ColorConstant.whiteA700,
      body: Container(
        margin: const EdgeInsets.only(left: 8),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(height: size.height*0.08),
            Container(
              width: size.width,
              margin: const EdgeInsets.only(
                left: 10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisSize: MainAxisSize.max,
                children: [
                  CustomSearchView(
                    width: 319,
                    focusNode: FocusNode(),
                    // controller: searchController,
                    hintText: "Tìm kiếm",
                    prefix: Container(
                      margin: const EdgeInsets.only(
                        left: 7,
                        top: 11,
                        right: 9,
                        bottom: 11,
                      ),
                      child: Image.asset(ImageConstant.imgSearch),
                    ),
                    prefixConstraints: const BoxConstraints(
                      minWidth: 11,
                      minHeight: 13,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 8,
                      bottom: 5,
                    ),
                    child: Image.asset(
                      ImageConstant.imgCar,
                      width: 23,
                      height: 23,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.centerLeft,
                child: SingleChildScrollView(
                  padding: const EdgeInsets.only(
                    top: 8,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 448,
                        width: 326,
                        child: ListView.builder(
                          padding: const EdgeInsets.only(
                            left: 16,
                            right: 16,
                          ),
                          scrollDirection: Axis.horizontal,
                          physics: const BouncingScrollPhysics(),
                          itemCount: 2,
                          itemBuilder: (context, index) {
                            return const BannerItemWidget();
                          },
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          margin: const EdgeInsets.only(
                            top: 16,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 16,
                                  top: 15,
                                  right: 16,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      "Dịch vụ",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        color: ColorConstant.black900,
                                        fontSize: 17,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w700,
                                        height: 1.00,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        left: 210,
                                        top: 1,
                                        bottom: 4,
                                      ),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Text(
                                            "Tất cả",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              color: ColorConstant.bluegray400,
                                              fontSize: 13,
                                              fontFamily: 'Roboto',
                                              fontWeight: FontWeight.w100,
                                              height: 1.00,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              left: 3,
                                              top: 3,
                                              bottom: 2,
                                            ),
                                            child: Image.asset(
                                              ImageConstant.imgArrowright,
                                              width: 4,
                                              height: 8,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                padding: const EdgeInsets.only(
                                  left: 16,
                                  top: 11,
                                  right: 16,
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Container(
                                          alignment: Alignment.center,
                                          height: 72,
                                          width: 138,
                                          decoration: BoxDecoration(
                                              color: Colors.grey[400],
                                              borderRadius: const BorderRadius.all(Radius.circular(10)),
                                          ),
                                          child: const Text(
                                            "Chăm sóc cá nhân",
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(width: 50),
                                        Container(
                                          alignment: Alignment.center,
                                          height: 72,
                                          width: 138,
                                          decoration: BoxDecoration(
                                            color: Colors.grey[400],
                                            borderRadius: const BorderRadius.all(Radius.circular(10)),),
                                          child: const Text(
                                            "Chăm sóc y tế",
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(width: 50),
                                        Container(
                                          alignment: Alignment.center,
                                          height: 72,
                                          width: 138,
                                          decoration: BoxDecoration(
                                            color: Colors.grey[400],
                                            borderRadius: const BorderRadius.all(Radius.circular(10)),),
                                          child: const Text(
                                            "Trò chuyện cùng",
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          margin: const EdgeInsets.only(
                            left: 16,
                            top: 16,
                            right: 12,
                          ),
                          decoration: BoxDecoration(
                            color: ColorConstant.purple900,
                            borderRadius: BorderRadius.circular(
                              9,
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 16,
                                  top: 31,
                                  bottom: 31,
                                ),
                                child: Image.asset(ImageConstant.imgCheckmark32X32,
                                width: 32,
                                height: 32,
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(
                                  left: 13,
                                  top: 20,
                                  bottom: 11,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width: 258,
                                      child: Text(
                                        "Gặp gỡ nhân viên xuất sắc của chúng tôi",
                                        maxLines: null,
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          color: ColorConstant.whiteA700,
                                          fontSize: 16,
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w700,
                                          height: 1.38,
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.center,
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                          left: 1,
                                          top: 11,
                                          right: 2,
                                        ),
                                        child: Text(
                                          "Khả năng và kinh nghiệm đã được chứng minh",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                            color: ColorConstant.whiteA700,
                                            fontSize: 12,
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.w400,
                                            height: 1.00,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          margin: const EdgeInsets.only(
                            left: 16,
                            top: 17,
                            right: 12,
                          ),
                          decoration: BoxDecoration(
                            color: ColorConstant.gray50,
                            borderRadius: BorderRadius.circular(
                              0,
                            ),
                            border: Border.all(
                              color: ColorConstant.bluegray50,
                              width: 1,
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 6,
                                  top: 12,
                                  bottom: 11,
                                ),
                                child: Image.asset(ImageConstant.imgStar1,
                                  width: 22,
                                  height: 22,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 8,
                                  top: 16,
                                  bottom: 12,
                                ),
                                child: Text(
                                  "Được đánh giá cao",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: ColorConstant.gray700,
                                    fontSize: 15,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w400,
                                    height: 1.00,
                                  ),
                                ),
                              ),
                              Container(
                                height: 44,
                                width: 1,
                                margin: const EdgeInsets.only(
                                  left: 9,
                                ),
                                decoration: BoxDecoration(
                                  color: ColorConstant.bluegray50,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 45,
                                  top: 16,
                                  bottom: 16,
                                ),
                                child: Image.asset(ImageConstant.imgFilter12X14,
                                height: 12, width: 14,),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 9,
                                  top: 15,
                                  bottom: 12,
                                ),
                                child: Text(
                                  "Bộ lọc",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: ColorConstant.gray700,
                                    fontSize: 15,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w400,
                                    height: 1.00,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 326,
                        width: 375,
                        margin: const EdgeInsets.only(top: 15),
                        child: Stack(
                          alignment: Alignment.bottomLeft,
                          children: [
                            Align(
                              alignment: Alignment.topCenter,
                              child: Container(
                                margin: const EdgeInsets.only(
                                  left: 16,
                                  right: 16,
                                  bottom: 0,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: ListView.separated(
                                        physics: const NeverScrollableScrollPhysics(),
                                        shrinkWrap: true,
                                        separatorBuilder: (context, index) {
                                          return Container(
                                            height: 1,
                                            width: 247,
                                            decoration: BoxDecoration(
                                              color: ColorConstant.bluegray50,
                                            ),
                                          );
                                        },
                                        itemCount: 3,
                                        itemBuilder: (context, index) {
                                          return const ListuserpictItemWidget();
                                        },
                                      ),
                                    ),
                                    Container(
                                      height: 1,
                                      width: 247,
                                      margin: const EdgeInsets.only(
                                        left: 10,
                                        top: 8,
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
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
