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
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height:180,
      child:ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            width: 180,
            color: Colors.red,
          ),
          Container(
              width: 180,
              color: Colors.blue,
              child:ListView(
                children:<Widget> [
                  Image.network("https://s3.bmp.ovh/imgs/2021/12/08334c4727e6d33d.png"),
                  Text('标题')
                ],
              )
          ),
          Container(
            width: 180,
            color: Colors.deepOrange,
          ),
          Container(
            width: 180,
            color: Colors.green,
          ),
        ],
      ),);

  }
}