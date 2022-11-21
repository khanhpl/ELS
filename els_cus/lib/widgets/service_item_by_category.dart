import 'package:els_cus_mobile/core/models/service_data_model.dart';
import 'package:els_cus_mobile/widgets/service_detail_by_category.dart';
import 'package:flutter/material.dart';

import '../core/utils/color_constant.dart';

class ServiceItemByCategory extends StatelessWidget {
  ServiceDataModel service;

  ServiceItemByCategory({super.key, required this.service});

  filterPrice(String money) {
    var parts = money.split(".");
    var prefix = parts[0].trim();
    return prefix;
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.all(size.width * 0.03),
      decoration: BoxDecoration(
        border: Border.all(
            color: ColorConstant.BG, width: 5.0, style: BorderStyle.solid),
        borderRadius: BorderRadius.circular(15),
        color: ColorConstant.BG,
      ),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    ServiceDetailByCategory(service: service)),
          );
        },
        child: Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.only(
              top: size.height * 0.01,
              bottom: size.height * 0.005,
              left: size.width * 0.03,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  margin: EdgeInsets.only(
                    left: size.width * 0.03,
                    top: size.height * 0.01,
                    bottom: size.height * 0.01,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          right: size.width * 0.02,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            SizedBox(
                              width: size.width * 0.8,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  bottom: 1,
                                ),
                                child: Text(
                                  service.name,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: ColorConstant.black900,
                                    fontSize: 18,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: size.height * 0.008,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            SizedBox(
                              width: size.width * 0.8,
                              child: Text(
                                'Giá tiền: ${filterPrice(service.price.toString())} VNĐ',
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: ColorConstant.gray700,
                                  fontSize: 16,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            Container(
                              height: 2,
                              width: 2,
                              margin: const EdgeInsets.only(
                                left: 10,
                                top: 6,
                                bottom: 6,
                              ),
                              decoration: BoxDecoration(
                                color: ColorConstant.bluegray400,
                                borderRadius: BorderRadius.circular(
                                  1,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: size.height * 0.008,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            SizedBox(
                              width: size.width * 0.8,
                              child: Text(
                                'Mô tả: ${service.description}',
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: ColorConstant.gray700,
                                  fontSize: 16,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w400,
                                  height: 1.00,
                                ),
                              ),
                            ),
                          ],
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
    );
  }
}
