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
        appBar: AppBar(
          title: Text("Flutter demo1"),
        ),
        body: HomeContent(),
      ),
    );
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Container(
        child: Text(
          'left center right nihaoleft centerleft center right left center right nihaoleft centernihaoleft center',
          textAlign: TextAlign.left, //left、right、top、bottom
          overflow: TextOverflow.ellipsis, //溢出效果
          maxLines: 2, //设置最大行数
          textScaleFactor: 1, //设置文字的显示倍率
          style: TextStyle(
              color: Color.fromARGB(255, 100, 255, 0),
              fontSize: 30,
              fontWeight: FontWeight.w900,
              fontStyle: FontStyle.italic,
              decoration: TextDecoration.underline,
              decorationColor: Colors.white,
              decorationStyle: TextDecorationStyle.dashed),
        ),
        width: 300,
        height: 300,
        decoration: BoxDecoration(
            color: Colors.blueAccent,
            border: Border.all(color: Colors.red, width: 2),
            borderRadius: BorderRadius.all(Radius.circular(10))),
        padding: EdgeInsets.all(20),
        // margin: EdgeInsets.fromLTRB(30, 0, 0, 0),
        // transform: Matrix4.rotationY(1),
        // alignment: Alignment.bottomRight,
      ),
    );
  }
}
