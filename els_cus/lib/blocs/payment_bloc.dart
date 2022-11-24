import 'dart:convert';

import 'package:http/http.dart' as http;

class PaymentBloc{
  Future<String> momoPayment() async {
    try {
      var url = Uri.parse("https://momotest.herokuapp.com/create");
      final response = await http.post(
        url,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Accept': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(
          <String, String>{
          },
        ),
      );
      print('Response payment Code: ${response.statusCode.toString()} ');
      if (response.statusCode.toString() == '200') {
        print('Test payment link: ${response.body}');
        return response.body;
      } else {
        return "";
      }

    } finally {}
  }
}