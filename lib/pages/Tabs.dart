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
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            Row(
              children: [
                Expanded(
                  child: UserAccountsDrawerHeader(
                    accountName: Text("黄大仙"),
                    accountEmail: Text("huangdaxian@huitongjy.com"),
                    currentAccountPicture: CircleAvatar(
                      backgroundImage: NetworkImage("https://s3.bmp.ovh/imgs/2021/12/08334c4727e6d33d.png"),
                    ),
                    otherAccountsPictures: [
                      //Image.network("image: image")//放在头像右边
                    ],
                  ),)
              ],
            ),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.home),
              ),
              title: Text("我的空间"),
            ),
            Divider(),//分割线
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.people),
              ),
              title: Text("用户中心"),
              onTap: (){
                Navigator.of(context).pop();
                Navigator.pushNamed(context, '/userCenter');
              },
            ),
            Divider(),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.settings),
              ),
              title: Text("设置"),
            ),
          ],
        )
      ),
      endDrawer: Drawer(
        child: Text('左侧侧边栏'),
      ),
    );
  }
}
