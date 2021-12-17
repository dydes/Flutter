import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'pages/Tabs.dart';//得引入抽离的组件才能生效
import 'pages/Form.dart';
import 'pages/Search.dart';

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
        routes: {//全局配置命名路由
          '/form':(context)=>FormPage(),
          '/search':(context)=>SearchPage(),
        },
        theme: ThemeData(
          //改主题
            primarySwatch: Colors.amber));
  }
}



