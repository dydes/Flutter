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
      padding: EdgeInsets.all(10.0),
      children: <Widget>[
        ListTile(
          leading: Image.network("https://s3.bmp.ovh/imgs/2021/12/08334c4727e6d33d.png"),//asset("images/2.0x/1.png"),
          title:Text('新闻标题',
            style: TextStyle(
                fontSize: 24
            ),),
          subtitle: Text('新闻内容新闻内容新闻内容新闻内容新闻内容新闻内容新闻内容'),
        ),
        ListTile(
          leading: Image.asset("images/2.0x/1.png"),
          title:Text('新闻标题',
            style: TextStyle(
                fontSize: 24
            ),),
          subtitle: Text('新闻内容新闻内容新闻内容新闻内容新闻内容新闻内容新闻内容'),
        ),
        const ListTile(
          leading: Icon(Icons.settings,//在开头加东西
            color: Colors.blueAccent,
            size: 40.0,),
          title:Text('新闻标题',
            style: TextStyle(
                fontSize: 24
            ),),
          subtitle: Text('新闻内容新闻内容新闻内容新闻内容新闻内容新闻内容新闻内容'),
        ),
        ListTile(
          leading: Icon(Icons.settings),
          title:Text('新闻标题',
            style: TextStyle(
                fontSize: 24
            ),),
          subtitle: Text('新闻内容新闻内容新闻内容新闻内容新闻内容新闻内容新闻内容'),
          trailing: Icon(Icons.settings,//在结尾加东西
            color: Colors.blueAccent,
            size: 40.0,),
        ),
      ],
    );

  }
}