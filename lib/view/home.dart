import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/data_provider.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    final data = Provider.of<Data>(context, listen: false);
    data.fetchData(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final data = Provider.of<Data>(context);
    return Scaffold(
      body: data.dataModel.id == null
          ? Center(
              child: CircularProgressIndicator(),
            )
          : Center(
              child: Container(child: Text(data.dataModel.userId.toString()))),
    );
  }
  // Future<DataModel> getData(context) async {
  //   late DataModel dataModel;

  //   try {
  //     final response = await http
  //         .get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));

  //     if (response.statusCode == 200) {
  //       final data = json.decode(response.body);
  //       dataModel = DataModel.fromJson(data);
  //     } else {
  //       print("Something went wrong");
  //     }
  //   } catch (e) {
  //     print(e.toString());
  //   }

  //   return dataModel;
  // }
}
