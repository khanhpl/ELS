

import 'package:els_sitter/core/models/service_data_model.dart';
import 'package:flutter/material.dart';

Widget ServiceItemBookingWidget(BuildContext context, ServiceDataModel service){
  var size = MediaQuery.of(context).size;
  return Padding(
    padding: EdgeInsets.only(
      left: size.width * 0.03,
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.only(
            right: size.width*0.03
          ),
          child: Container(
            width: size.width*0.1,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: (service.url == '')?SizedBox():Image.network(service.url),
          ),
        ),
        SizedBox(
          width: size.width*0.4,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: size.height * 0.01,
                ),
                child: Text(
                  service.name,
                  maxLines: 2,
                  style: TextStyle(
                    fontSize: 14
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: size.height * 0.01,
                  bottom: size.height * 0.01,
                ),
                child: Text(
                  '${service.price.ceil().toString()}VNĐ/${service.duration}phút',
                  style: TextStyle(
                      fontSize: 12
                  ),
                ),
              ),

            ],
          ),
        ),
      ],
    ),
  );
}
