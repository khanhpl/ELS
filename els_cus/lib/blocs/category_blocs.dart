import 'dart:convert';

import '../core/models/category_model.dart';
import 'package:http/http.dart' as http;
import 'package:els_cus_mobile/core/utils/globals.dart' as globals;

class CategoryBloc{
  Future<CategoryModel> getAllCategory() async {
    try {
      var url =
      Uri.parse("https://els12.herokuapp.com/category/categories");
      final response = await http.get(
        url,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization' : globals.curUser!.data.token,
          'Accept': 'application/json; charset=UTF-8',
        },
      );

      if (response.statusCode.toString() == '200') {
        return CategoryModel.fromJson(json.decode(response.body));
      } else {
        throw Exception('Unable to fetch Category from the REST API');
      }
    } finally {}
  }
}