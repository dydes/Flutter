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
          body: HomePage(),
        ),
        theme: ThemeData(
          //改主题
            primarySwatch: Colors.amber));
  }
}

//有状态组件
class HomePage extends StatefulWidget{
  HomePage({Key? key}):super(key:key);
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{
  int countNum=0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        SizedBox(height: 200,),
        Chip(
          label: Text("${this.countNum}"),
        ),
        RaisedButton(
          child: Text("按钮"),
          onPressed: (){
            setState(() {
              this.countNum++;
            });
          },
        )
      ],
    );
  }

}

// //抽离出组件
// class HomeContent extends StatelessWidget {//无状态组件无法改变页面数据
//   int countNum=1;
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Column(
//       children: <Widget>[
//         SizedBox(height: 200,),
//         Text("${this.countNum}"),
//         SizedBox(height: 20,),
//         RaisedButton(
//           child: Text("按钮"),
//           onPressed: (){
//             this.countNum++;
//             print(this.countNum);
//           },
//         )
//       ],
//     );
//   }
// }

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

