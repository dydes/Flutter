import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'res/listData.dart';

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
    var tempList=listData.map((value){
      return ListTile(
        leading: Image.network(value["imageUrl"]),
        title:Text(value["title"]),
        subtitle:Text(value["author"]) ,
      );
    });
    return tempList.toList();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: _getData(),
    );
  }
}