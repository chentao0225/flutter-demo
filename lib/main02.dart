import 'package:flutter/material.dart';

main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: Text("flutter img")), body: HomeContent()),
    );
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Container(
        child: Image.network(
          //在线引入
          "https://dss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=412796477,2371228780&fm=111&gp=0.jpg",
          fit: BoxFit.fill, //fill 直接拉伸填充 cover 会进行裁剪
        ),
        // child: Image.asset("assets/images/rock.png"), //本地引入需在pubspec.yaml配置路径
        padding: EdgeInsets.all(20),
        width: 300,
        height: 400,
      ),
    );
  }
}
