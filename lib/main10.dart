import 'package:flutter/material.dart';

main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text("flutter StatefulWidget")),
            body: HomeContent()));
  }
}

class HomeContent extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HomeContentState();
  }
}

class _HomeContentState extends State<HomeContent> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
        child: Container(
            child: Column(
      children: <Widget>[
        Text("点击次数：${this.count}"),
        RaisedButton(
            child: Text("增加"),
            onPressed: () {
              setState(() {
                this.count++;
              });
            })
      ],
    )));
  }
}
