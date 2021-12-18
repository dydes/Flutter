//抽离的组件得引入下面的包
import 'package:flutter/material.dart';
import 'tabs/Home.dart';
import 'tabs/Category.dart';
import 'tabs/Setting.dart';

class Tabs extends StatefulWidget{
  final index;
  Tabs({Key? key,this.index=0}):super(key:key);
  _TabsState createState() => _TabsState(this.index);
}

class _TabsState extends State<Tabs> {
  var _currentIndex;
  _TabsState(index){
    this._currentIndex=index;
  }
  List _pageList=[
    HomePage(),
    CategorgPage(),
    SettingPage(),
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: const Text('HuiTong Demo')),
      body: this._pageList[this._currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: this._currentIndex, //默认选中第几个，从0开始
        onTap: (int index) { //选中后的事件
          setState(() {
            this._currentIndex = index; //点击选中对应的tab
            print(index);
          });
        },
        iconSize: 30,
        //fixedColor: Colors.blue,//选中的颜色
        type: BottomNavigationBarType.fixed,//底部一行挤下多个tab，>=3个时
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("首页"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            title: Text("分类"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            title: Text("设置"),
          ),
        ],
      ),
    );
  }
}
