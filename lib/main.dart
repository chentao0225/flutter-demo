import 'package:flutter/material.dart';
import 'package:flutter_demo/main01.dart';

main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: Text("flutter todolist")), body: HomeContent()),
    );
  }
}

class HomeContent extends StatelessWidget {
  List list = new List();
  HomeContent({Key key}) : super(key: key) {
    for (var i = 1; i <= 10; i++) {
      list.add("这是第$i条数据");
    }
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Container(
          child: ListView.builder(
              itemCount: this.list.length,
              itemBuilder: (context, index) {
                return ListTile(
                    leading: Icon(Icons.home),
                    title: Text("${list[index]}"),
                    trailing: Icon(Icons.arrow_right));
              }),
          padding: EdgeInsets.all(20)),
    );
  }
}
