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
    return Container(
        height: 600.0,
        width: 400.0,
        color: Colors.lightBlueAccent,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              IconContainer(
                Icons.home,
                color: Colors.red,
              ),
              IconContainer(
                Icons.search,
                color: Colors.blue,
              ),
              IconContainer(
                Icons.select_all,
                color: Colors.orange,
              )
            ]));
  }
}

//自定义图标组件
class IconContainer extends StatelessWidget {
  double? size = 32.0;
  Color? color = Colors.red;
  IconData icon;
  IconContainer(this.icon, {this.color, this.size});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 100.0,
      width: 100.0,
      color: this.color,
      child: Center(
          child: Icon(
            icon,
            size: this.size,
            color: Colors.white,
          )),
    );
  }
}
