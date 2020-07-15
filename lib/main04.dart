import "package:flutter/material.dart";
import 'package:flutter_demo/main01.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text('flutter list horizontal')),
            body: HomeContent()));
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(width: 180, color: Colors.lightBlue),
          Container(width: 180, color: Colors.lightGreen),
          Container(width: 180, color: Colors.amber),
          Container(width: 180, color: Colors.yellow),
          Container(width: 180, color: Colors.blue),
        ],
      ),
      padding: EdgeInsets.all(20),
    ));
  }
}
