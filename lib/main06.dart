import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('flutter flex'),
            ),
            body: HomeContent()));
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
        child: Container(
            child: Flex(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly, //设置主轴的分布
              crossAxisAlignment: CrossAxisAlignment.end, //设置侧轴分布
              direction: Axis.horizontal, //设置主轴为水平方向
              children: <Widget>[
                //固定大小子元素
                Container(width: 100, height: 100, color: Colors.red),
                //弹性子元素
                Expanded(
                    flex: 1,
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.yellow,
                    )),
                Expanded(
                    flex: 2,
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.blue,
                    )),
              ],
            ),
            padding: EdgeInsets.all(20)));
  }
}
