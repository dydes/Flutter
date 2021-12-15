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
    return IconContainer(Icons.search,color: Colors.white,);
  }
}

//自定义图标组件
class IconContainer extends StatelessWidget{
  double? size=32.0;
  Color? color=Colors.red;
  IconData icon;
  IconContainer(this.icon,{this.color,this.size});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 100.0,
      width: 100.0,
      color: Colors.red,
      child: Center(
          child: Icon(icon,size: this.size,color: this.color,)
      ),
    );
  }
}