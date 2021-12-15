import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());

}

//自定义组件
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        home:Scaffold(
          appBar: AppBar(
              title:const Text('HuiTong Demo')
          ),
          body:HomeContent(),
        ),
        theme:ThemeData(//改主题
            primarySwatch: Colors.amber
        )
    );
  }

}
//抽离出组件
class HomeContent extends StatelessWidget{

  //自定义方法
  List<Widget> _getData(){
    List<Widget> list = [];
    for(var i=1;i<21;i++){
      list.add(ListTile(
        title: Text("我是$i列表"),
      ));
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: _getData(),
    );
  }
}