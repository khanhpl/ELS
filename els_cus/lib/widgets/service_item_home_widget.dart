import 'package:flutter/material.dart';

import '../core/models/service_data_model.dart';

class ServiceItemHomeWidget extends StatelessWidget{
  ServiceDataModel service;
  ServiceItemHomeWidget({super.key, required this.service});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.center,
      height: size.height*0.1,
      width: size.width*0.4,
      decoration: BoxDecoration(
        color: Colors.grey[400],
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Text(
        service.name,
         style: const TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }

}

