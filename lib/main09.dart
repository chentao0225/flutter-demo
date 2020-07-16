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
            appBar: AppBar(title: Text("flutter wrap")), body: HomeContent()));
  }
}

class HomeContent extends StatelessWidget {
  List list = List<Widget>();
  HomeContent({Key key}) {
    for (var i = 0; i < 20; i++) {
      list.add(RaisedButton(
          child: Text('按钮$i'), color: Colors.blueAccent, onPressed: () {}));
    }
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      color: Colors.lightBlue,
      width: double.infinity,
      height: double.infinity,
      child: Wrap(
        direction: Axis.horizontal,
        children: this.list,
        spacing: 10,
        runSpacing: 20,
        alignment: WrapAlignment.center, //wrap主轴分布
        runAlignment: WrapAlignment.spaceBetween, //wrap侧轴分布
      ),
    );
  }
}
