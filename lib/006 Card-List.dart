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
      children: listData.map((value){
        return Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              AspectRatio(
                  aspectRatio: 16/9,
                  child: Image.network(value["imageUrl"],fit: BoxFit.cover,)
              ),
              ListTile(
                leading: ClipOval(
                  child: Image.network(value["imageUrl"],fit: BoxFit.cover,height: 60,width: 60,),
                ),
                title: Text(value["title"],style: TextStyle(fontSize: 28),),
                subtitle: Text(value["description"],maxLines: 1,overflow: TextOverflow.ellipsis,),
              )
            ],
          ),
        );
      }).toList(),
    );
  }
}

