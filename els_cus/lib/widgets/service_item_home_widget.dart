import 'package:flutter/material.dart';

import '../core/models/service_data_model.dart';
import '../core/utils/color_constant.dart';

class ServiceItemHomeWidget extends StatelessWidget{
  ServiceDataModel service;
  ServiceItemHomeWidget({super.key, required this.service});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(
        top: size.height*0.01,
        bottom: size.height*0.005,
        left: size.width*0.03,
        ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            width: 60,
            height: 60,
            padding: EdgeInsets.only(
              left: size.width*0.03,
              top: size.height*0.01,
              right: size.width*0.03,
              bottom: size.height*0.01,
              ),
            decoration: BoxDecoration(
              color: ColorConstant.gray400,
              borderRadius: BorderRadius.circular(
              40,
              ),
            ),
          ),
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
              Padding(
                padding: EdgeInsets.only(
                right: size.width*0.02,
                ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                  bottom: 1,
                  ),
                  child: Text(
                    service.name,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: ColorConstant.black900,
                      fontSize: 25,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w500,
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
    );
    //   Container(
    //   alignment: Alignment.center,
    //   height: size.height*0.1,
    //   width: size.width*0.4,
    //   padding: EdgeInsets.only(
    //     left: size.width*0.03,
    //     right: size.width*0.03,
    //   ),
    //   decoration: BoxDecoration(
    //     color: Colors.grey[400],
    //     borderRadius: const BorderRadius.all(Radius.circular(10)),
    //
    //   ),
    //   child: Text(
    //     service.name,
    //      style: const TextStyle(
    //       color: Colors.white,
    //     ),
    //   ),
    // );
  }

}

