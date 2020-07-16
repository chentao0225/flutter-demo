import 'package:flutter/material.dart';

void main() => runApp(MyIndex());

class MyIndex extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(title: 'link app', home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text('link'),
        ),
        body: Container(
          child: ListView(
            children: <Widget>[
              RaisedButton(
                  child: Text("to search and params"),
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) {
                      return SearchPage(msg: "火影");
                    }));
                  })
            ],
          ),
        ));
  }
}

class SearchPage extends StatelessWidget {
  String msg;
  SearchPage({this.msg});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(title: Text("search page")),
        body: Container(
          child: Text("search ${this.msg}"),
        ));
  }
}
