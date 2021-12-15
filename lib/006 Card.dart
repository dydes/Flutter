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
    return ListView(
      children: <Widget>[
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              AspectRatio(
                  aspectRatio: 16/9,
                  child: Image.network("https://s3.bmp.ovh/imgs/2021/12/eb9793345f318496.png",fit: BoxFit.cover,)
              ),
              ListTile(
                leading: ClipOval(
                  child: Image.network("https://s3.bmp.ovh/imgs/2021/12/08334c4727e6d33d.png",fit: BoxFit.cover,height: 60,width: 60,),
                ),
                title: Text("张三",style: TextStyle(fontSize: 28),),
                subtitle: Text("工程师"),
              )
            ],
          ),
        ),
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              AspectRatio(
                  aspectRatio: 16/9,
                  child: Image.network("https://s3.bmp.ovh/imgs/2021/12/aab5c898cd4d13c2.png",fit: BoxFit.cover,)
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage("https://s3.bmp.ovh/imgs/2021/12/08334c4727e6d33d.png"),
                ),
                title: Text("张三",style: TextStyle(fontSize: 28),),
                subtitle: Text("工程师"),
              )
            ],
          ),
        )
      ],
    );
  }
}

