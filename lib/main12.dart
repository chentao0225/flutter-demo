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
                  child: Text("to search"),
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) {
                      return SearchPage();
                    }));
                  })
            ],
          ),
        ));
  }
}

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(title: Text("search page")),
        body: Container(
          child: Text("search page content"),
        ));
  }
}
