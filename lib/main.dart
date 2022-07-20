import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_apiii/view/home.dart';

import 'provider/data_provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [ChangeNotifierProvider<Data>(create: (_) => Data())],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Home());
  }
}
