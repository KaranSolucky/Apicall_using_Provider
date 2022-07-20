import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../model/data_model.dart';

Future<DataModel> getData(context) async {
  late DataModel dataModel;

  try {
    final response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      dataModel = DataModel.fromJson(data);
    } else {
      print("Something went wrong");
    }
  } catch (e) {
    print(e.toString());
  }

  return dataModel;
}
