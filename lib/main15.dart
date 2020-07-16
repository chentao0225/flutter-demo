import 'package:flutter/material.dart';

main(List<String> args) {
  runApp(MyIndex());
}

class MyIndex extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(home: HomeContent());
  }
}

class HomeContent extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HomeContent();
  }
}

class _HomeContent extends State<HomeContent> {
  String msg = "";
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text("表单"),
        ),
        body: Container(
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                    hintText: "请输入用户名", icon: Icon(Icons.person)),
                onChanged: (value) {
                  setState(() {
                    this.msg = value;
                  });
                },
              ),
              Text("data:" + msg)
            ],
          ),
          padding: EdgeInsets.all(20),
        ));
  }
}
