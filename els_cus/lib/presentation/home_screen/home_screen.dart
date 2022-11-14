import 'package:els_cus_mobile/blocs/sitter_blocs.dart';
import 'package:els_cus_mobile/blocs/sitter_blocs.dart';
import 'package:els_cus_mobile/blocs/service_blocs.dart';
import 'package:els_cus_mobile/core/models/category_model.dart';
import 'package:els_cus_mobile/core/utils/color_constant.dart';
import 'package:els_cus_mobile/core/utils/image_constant.dart';
import 'package:els_cus_mobile/presentation/home_screen/widgets/banner_item_widget.dart';
import 'package:els_cus_mobile/widgets/sitter_item_widget.dart';
import 'package:els_cus_mobile/widgets/category_item_home_widget.dart';
import 'package:flutter/material.dart';
import '../../core/models/service_model.dart';
import '../../widgets/custom_search_view.dart';
import '../../widgets/service_item_home_widget.dart';
import 'package:els_cus_mobile/blocs/category_blocs.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    // final Future<List<SitterDataModel>> sitterList = SitterBlocs().getAllSitter();
    // final Future<ServiceModel> serviceList = ServiceBlocs().getAllService();
    final Future<CategoryModel> categoryList = CategoryBloc().getAllCategory();

    return Scaffold(
      backgroundColor: ColorConstant.whiteA700,
      body: Container(
        margin: const EdgeInsets.only(left: 8),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(height: size.height * 0.08),
            Container(
              width: size.width,
              margin: EdgeInsets.only(
                left: size.width * 0.03,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisSize: MainAxisSize.max,
                children: [
                  CustomSearchView(
                    width: size.width * 0.8,
                    focusNode: FocusNode(),
                    // controller: searchController,
                    hintText: "Tìm kiếm",
                    prefix: Container(
                      margin: EdgeInsets.only(
                        left: size.width * 0.03,
                        top: size.height * 0.01,
                        right: size.width * 0.03,
                        bottom: size.height * 0.01,
                      ),
                      child: Image.asset(ImageConstant.imgSearch),
                    ),
                    prefixConstraints: const BoxConstraints(
                      minWidth: 11,
                      minHeight: 13,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: size.height * 0.01,
                      bottom: size.height * 0.01,
                      right: size.width * 0.03,
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
                        height: size.height * 0.5,
                        width: size.width,
                        child: ListView.builder(
                          padding: EdgeInsets.only(
                            left: size.width * 0.03,
                            right: size.width * 0.03,
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
                          margin: EdgeInsets.only(
                            top: size.height * 0.03,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  left: size.width * 0.03,
                                  right: size.width * 0.03,
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
                                      padding: EdgeInsets.only(
                                          left: size.width * 0.61,
                                          top: size.height * 0.01,
                                          bottom: size.height * 0.01,
                                          right: size.width * 0.03),
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
                                            padding: EdgeInsets.only(
                                              left: 3,
                                              top: size.height * 0.003,
                                              bottom: size.height * 0.01,
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
                              Padding(
                                padding:
                                    EdgeInsets.only(left: size.width * 0.03),
                                child: SizedBox(
                                  width: double.infinity,
                                  height: size.height * 0.1,
                                  child: FutureBuilder<CategoryModel>(
                                    builder: (context, snapshot) {
                                      if (snapshot.hasError)
                                        print(snapshot.error);
                                      if (snapshot.hasData) {
                                        return ListView.separated(
                                          physics:
                                              const BouncingScrollPhysics(),
                                          shrinkWrap: true,
                                          scrollDirection: Axis.horizontal,
                                          itemCount: snapshot.data!.data.length,
                                          separatorBuilder: (context, index) {
                                            return SizedBox(
                                              width: size.width * 0.05,
                                            );
                                          },
                                          itemBuilder: (BuildContext context,
                                              int index) {
                                            return CategoryItemHomeWidget(
                                                category:
                                                    snapshot.data!.data[index]);
                                          },
                                        );
                                      } else {
                                        return const CircularProgressIndicator();
                                      }
                                    },
                                    future: categoryList,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          margin: EdgeInsets.only(
                            left: size.width * 0.03,
                            top: size.height * 0.03,
                            right: size.width * 0.03,
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
                                padding: EdgeInsets.only(
                                  left: size.width * 0.03,
                                  top: size.height * 0.02,
                                  bottom: size.width * 0.03,
                                ),
                                child: Image.asset(
                                  ImageConstant.imgCheckmark32X32,
                                  width: 32,
                                  height: 32,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                  left: size.width * 0.03,
                                  top: size.height * 0.015,
                                  bottom: size.width * 0.015,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width: size.width * 0.75,
                                      child: Text(
                                        "Gặp gỡ nhân viên xuất sắc của chúng tôi",
                                        maxLines: null,
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          color: ColorConstant.whiteA700,
                                          fontSize: 15,
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.center,
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                          top: size.height * 0.01,
                                          bottom: size.height * 0.01,
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
                          margin: EdgeInsets.only(
                            left: size.width * 0.03,
                            top: size.height * 0.03,
                            right: size.width * 0.03,
                          ),
                          decoration: BoxDecoration(
                            color: ColorConstant.gray50,
                            borderRadius: BorderRadius.circular(
                              5,
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
                                padding: EdgeInsets.only(
                                  left: size.width * 0.02,
                                  top: size.height * 0.01,
                                  bottom: size.width * 0.02,
                                ),
                                child: Image.asset(
                                  ImageConstant.imgStar1,
                                  width: 22,
                                  height: 22,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: size.width * 0.02,
                                  top: size.height * 0.01,
                                  bottom: size.height * 0.01,
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
                                height: size.height * 0.04,
                                width: 1,
                                margin: EdgeInsets.only(
                                  left: size.width * 0.02,
                                ),
                                decoration: BoxDecoration(
                                  color: ColorConstant.bluegray50,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: size.width * 0.12,
                                  top: size.height * 0.01,
                                  bottom: size.height * 0.01,
                                ),
                                child: Image.asset(
                                  ImageConstant.imgFilter12X14,
                                  height: 12,
                                  width: 14,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: size.width * 0.02,
                                  top: size.height * 0.01,
                                  bottom: size.height * 0.01,
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
                        width: size.width,
                        margin: const EdgeInsets.only(top: 15),
                        child: Stack(
                          alignment: Alignment.bottomLeft,
                          children: [
                            Align(
                              alignment: Alignment.topCenter,
                              child: Container(
                                margin: EdgeInsets.only(
                                  left: size.width * 0.03,
                                  right: size.width * 0.03,
                                  bottom: 0,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    // Align(
                                    //   alignment: Alignment.centerLeft,
                                    //   child: ListView.separated(
                                    //     physics: const NeverScrollableScrollPhysics(),
                                    //     shrinkWrap: true,
                                    //     separatorBuilder: (context, index) {
                                    //       return Container(
                                    //         height: 1,
                                    //         width: size.width,
                                    //         decoration: BoxDecoration(
                                    //           color: ColorConstant.bluegray50,
                                    //         ),
                                    //       );
                                    //     },
                                    //     itemCount: 3,
                                    //     itemBuilder: (context, index) {
                                    //       return const ListuserpictItemWidget();
                                    //     },
                                    //   ),
                                    // ),

                                    // FutureBuilder<List<SitterDataModel>>(
                                    //   builder: (context, snapshot) {
                                    //     if (snapshot.hasError) print(snapshot.error);
                                    //     if (snapshot.hasData) {
                                    //       return ListView.separated(
                                    //         physics: const NeverScrollableScrollPhysics(),
                                    //         shrinkWrap: true,
                                    //         scrollDirection: Axis.vertical,
                                    //         itemCount: snapshot.data!.length,
                                    //             separatorBuilder: (context, index) {
                                    //               return Container(
                                    //                 height: 1,
                                    //                 width: size.width,
                                    //                 decoration: BoxDecoration(
                                    //                   color: ColorConstant.bluegray50,
                                    //                 ),
                                    //               );
                                    //             },
                                    //         itemBuilder: (BuildContext context, int index) {
                                    //           return SitterItemWidget(
                                    //               sitter: snapshot.data![index]);
                                    //         },
                                    //       );
                                    //     } else {
                                    //       return const CircularProgressIndicator();
                                    //     }
                                    //   },
                                    //   future: sitterList,
                                    // ),
                                    Container(
                                      height: 1,
                                      width: size.width,
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
                      SizedBox(height: size.height * 0.1),
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
