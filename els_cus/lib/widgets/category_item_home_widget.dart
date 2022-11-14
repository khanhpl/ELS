import 'package:els_cus_mobile/core/models/category_data_model.dart';
import 'package:els_cus_mobile/widgets/service_item_by_category.dart';
import 'package:els_cus_mobile/widgets/service_item_home_widget.dart';
import 'package:flutter/material.dart';

import '../core/models/service_data_model.dart';

class CategoryItemHomeWidget extends StatelessWidget {
  CategoryDataModel category;

  CategoryItemHomeWidget({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ServiceItemByCate(category: category),
            ));
      },
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Container(
          alignment: Alignment.center,
          height: size.height * 0.1,
          width: size.width * 0.4,
          padding: EdgeInsets.only(
            left: size.width * 0.03,
            right: size.width * 0.03,
          ),
          decoration: BoxDecoration(
            color: Colors.grey[400],
            borderRadius: const BorderRadius.all(Radius.circular(10)),
          ),
          child: Text(
            category.name,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
