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
    return Padding(
        padding: EdgeInsets.fromLTRB(0, 0, 10, 10),
        child: GridView.count(
          crossAxisCount: 2, //控制一行的数量
          childAspectRatio: 1.7,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
              child: Image.network(
                  "https://s3.bmp.ovh/imgs/2021/12/08334c4727e6d33d.png",
                  fit: BoxFit.cover),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
              child: Image.network(
                  "https://s3.bmp.ovh/imgs/2021/12/08334c4727e6d33d.png",
                  fit: BoxFit.cover),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
              child: Image.network(
                  "https://s3.bmp.ovh/imgs/2021/12/08334c4727e6d33d.png",
                  fit: BoxFit.cover),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
              child: Image.network(
                  "https://s3.bmp.ovh/imgs/2021/12/08334c4727e6d33d.png",
                  fit: BoxFit.cover),
            ),
          ],
        ));
  }
}
