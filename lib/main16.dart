import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class UserInfo with ChangeNotifier {
  String username;
  String nickname;
  int age;
  UserInfo(this.username, this.nickname, this.age);
  setUsername(String name) {
    this.username = name;
  }
}

main(List<String> args) {
  runApp(ChangeNotifierProvider<UserInfo>.value(
    value: UserInfo("小陈", "sun", 22),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("provider"),
            ),
            body: Text("你的用户名是：${Provider.of<UserInfo>(context).nickname}")));
  }
}
