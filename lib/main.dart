import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'routers/Routes.dart';
import 'dart:io';

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}

void main() {
  HttpOverrides.global = MyHttpOverrides();
  runApp(MyApp());
}

//自定义组件
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,//去掉debug图标
        initialRoute: '/',
        onGenerateRoute:onGenerateRoute,
        theme: ThemeData(
            //改主题
            primarySwatch: Colors.amber));
  }
}



