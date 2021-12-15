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
    return ListView(
      padding: EdgeInsets.all(1),
      children: <Widget>[
        Image.network("https://s3.bmp.ovh/imgs/2021/12/08334c4727e6d33d.png"),
        Container(
          child: Text('标题',
            textAlign: TextAlign.center,
            style:TextStyle(fontSize:28),
          ),
          height: 20,
          padding:EdgeInsets.fromLTRB(2, 5, 5, 2),
        ),
        Image.network("https://s3.bmp.ovh/imgs/2021/12/08334c4727e6d33d.png"),
        Image.network("https://s3.bmp.ovh/imgs/2021/12/08334c4727e6d33d.png"),
        Image.network("https://s3.bmp.ovh/imgs/2021/12/08334c4727e6d33d.png"),
      ],
    );
  }
}