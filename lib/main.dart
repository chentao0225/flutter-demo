import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';

main(List<String> args) {
  //路由初始化
  Router router = Router();
  Routes.configureRoutes(router);
  Application.router = router;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      onGenerateRoute: Application.router.generator,
    );
  }
}

class Application {
  static Router router;
}

class Routes {
  static String page_a = '/';
  static String page_b = '/b';

  static configureRoutes(Router router) {
    router.define(page_a, handler: aHandler);
    router.define(page_b, handler: bHandler);
    router.notFoundHandler = emptyHandler;
  }
}

var emptyHandler = new Handler(handlerFunc: (BuildContext context, params) {
  return PageEmpty();
});

class PageEmpty extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Text("not Found page"),
      color: Colors.white,
    );
  }
}

var aHandler = new Handler(handlerFunc: (BuildContext context, params) {
  return PageA();
});

class PageA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: FlatButton(
          onPressed: () {
            Application.router.navigateTo(context, '/b');
          },
          child: Text("pageA to pageB")),
      color: Colors.white,
    );
  }
}

var bHandler = new Handler(handlerFunc: (BuildContext context, params) {
  return PageB();
});

class PageB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: FlatButton(
        child: Text("pageB to pageA"),
        onPressed: () {
          Application.router.navigateTo(context, '/');
        },
      ),
      color: Colors.white,
    );
  }
}
