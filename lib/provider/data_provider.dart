import 'package:flutter/material.dart';
import 'package:test_apiii/model/data_model.dart';
import 'package:test_apiii/services/api_call.dart';

class Data extends ChangeNotifier {
  late DataModel dataModel;

  fetchData(context) async {
    dataModel = await getData(context);

    notifyListeners();
  }
}
