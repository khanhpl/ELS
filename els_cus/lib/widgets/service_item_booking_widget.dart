
import 'package:els_cus_mobile/core/models/service_data_model.dart';
import 'package:flutter/material.dart';

Widget ServiceItemBookingWidget(BuildContext context, ServiceDataModel service){
  var size = MediaQuery.of(context).size;
  return Padding(
    padding: EdgeInsets.only(
      left: size.width * 0.03,
    ),
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
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: size.height * 0.01,
            bottom: size.height * 0.01,
          ),
          child: Text(
            service.price.toString(),
          ),
        ),
      ],
    ),
  );
}
