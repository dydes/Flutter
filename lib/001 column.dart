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
    return Column(
      mainAxisSize: MainAxisSize.max,
      textDirection: TextDirection.ltr,
      verticalDirection: VerticalDirection.down,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Center(child: Container(
          child: ClipOval(
            child: Image.network("https://s3.bmp.ovh/imgs/2021/12/924624f64c11d1eb.png",
              fit: BoxFit.cover,),
          ),
          height: 300.0,
          width: 300.0,
          decoration: BoxDecoration(//容器
            color: Colors.yellow,//容器背景颜色
            border: Border.all(//边框
                color: Colors.blue,//容器边框
                width: 2.0//边框宽度
            ),
            borderRadius: BorderRadius.circular(150.0),//容器圆角
          ),
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
          //transform: Matrix4.translationValues(0, 0, -200),//容器位移
          //alignment: Alignment.topLeft,//容器内位置
        )),
        Container(
            child: const Text('Hello World!',
              textAlign: TextAlign.left,
              overflow: TextOverflow.fade,
              textScaleFactor: 2,
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.red,
                fontWeight: FontWeight.w800,
                fontStyle: FontStyle.italic,
                decoration: TextDecoration.lineThrough,
                decorationColor: Colors.white,
                decorationStyle: TextDecorationStyle.dashed,
                letterSpacing: 5.0,
              ),
            ),
            height: 100.0,
            width: 300.0,
            alignment: Alignment.center
        ),
        Container(
          child: Image.asset("images/2.0x/1.png"),
          height: 20,
          width: 20,
        ),
      ],
    );

    //
    // child:
    //   Container(
    //
    //     ),

  }
}