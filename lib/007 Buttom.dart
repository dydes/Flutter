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
    return Container(
        height: 600,
        width: 400,
        color: Colors.pink,
        padding: EdgeInsets.all(10),
        child: Wrap(
          spacing: 10,
          runSpacing: 10,
          alignment: WrapAlignment.spaceEvenly,
          runAlignment: WrapAlignment.center,
          children: <Widget>[
            MyButtom("第1集"),
            MyButtom("第1集11集1集111"),
            MyButtom("第1集"),
            MyButtom("第1集111"),
            MyButtom("第1集"),
            MyButtom("第1集"),
          ],
        )
    );
  }
}

class MyButtom extends StatelessWidget{
  final String text;
  const MyButtom(this.text,{Key? key}):super(key:key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RaisedButton(
      child: Text(this.text),
      textColor: Colors.blue,
      onPressed: (){
      },
    );
  }
}
