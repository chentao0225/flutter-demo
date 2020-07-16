import 'package:flutter/material.dart';

void main() => runApp(MyIndex());

class MyIndex extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'link app',
      // home: HomePage(),
      initialRoute: '/',
      //命名路由
      routes: {
        "/": (context) => HomePage(),
        "/search": (context) => SearchPage(),
        "/about": (context) => AboutPage(),
      },
    );
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
                    Navigator.pushNamed(context, "/search", arguments: "火影");
                  }),
              RaisedButton(
                  child: Text("to about"),
                  onPressed: () {
                    Navigator.pushNamed(context, "/about");
                  }),
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
          child: Text("search ${ModalRoute.of(context).settings.arguments}"),
        ));
  }
}

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(title: Text("about page")),
        body: Container(child: Text("about page content")));
  }
}
