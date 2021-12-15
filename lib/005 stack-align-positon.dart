import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'res/listData.dart';

void main() {
  runApp(MyApp());
}

//自定义组件
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(title: const Text('HuiTong Demo')),
          body: HomeContent(),
        ),
        theme: ThemeData(
          //改主题
            primarySwatch: Colors.amber));
  }
}

//抽离出组件
class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Container(
        height: 400,
        width: 300,
        color: Colors.red,
        child: Stack(
          children: <Widget>[
            Align(
              alignment: Alignment(1,1),
              child: Icon(Icons.home,size: 40,color: Colors.white,),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Icon(Icons.search,size: 40,color: Colors.white,),
            ),
            Positioned(
              left: 0,
              child: Icon(Icons.select_all,size: 40,color: Colors.white,),
            ),
          ],
        ),
      ),
    );
  }
}

