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
  List<Widget> getListData(){
    List <Widget> list=[];
    for(var i=1;i<21;i++){
      list.add(Container(
        alignment: Alignment.center,
        child:Text('这是$i条数据',
          style: TextStyle(color:Colors.white,fontSize: 20),),
        color: Colors.blue,
      ));
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.count(
      crossAxisSpacing: 10.0,//左右间距
      mainAxisSpacing: 10.0,//上下间距
      padding: EdgeInsets.all(10),// 外边框间距
      crossAxisCount: 3,//控制一行的数量
      childAspectRatio: 0.7,//宽度和高度的比例
      children: getListData(),
    );
  }
}
