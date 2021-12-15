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
    var tempList=listData.map((value){
      return Container(
        child: Column(
          children:<Widget>[
            Image.network(value['imageUrl']),
            SizedBox(height: 5),
            Text(value['title'],textAlign: TextAlign.center,style: TextStyle(fontSize: 20),),
          ],
        ),
        decoration: BoxDecoration(
            border: Border.all(
                color: Color.fromRGBO(233, 233, 233, 0.9)
            )
        ),
      );
    });
    return tempList.toList();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.count(
      crossAxisSpacing: 10.0,//左右间距
      mainAxisSpacing: 5.0,//上下间距
      padding: EdgeInsets.all(5),// 外边框间距
      crossAxisCount: 2,//控制一行的数量
      //childAspectRatio: 0.7,//宽度和高度的比例
      children: getListData(),
    );
  }
}
