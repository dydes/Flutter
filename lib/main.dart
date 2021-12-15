import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'pages/Tabs.dart';//得引入抽离的组件才能生效

void main() {
  runApp(MyApp());
}

//自定义组件
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        home: Tabs(),
        theme: ThemeData(
            //改主题
            primarySwatch: Colors.amber));
  }
}



