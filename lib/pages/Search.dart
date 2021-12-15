import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text("搜索页"),
        ),
        body: Container(
            height: 600.0,
            width: 400.0,
            color: Colors.white,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  IconContainer(
                    Icons.home,
                    color: Colors.red,
                  ),
                  IconContainer(
                    Icons.search,
                    color: Colors.blue,
                  ),
                  IconContainer(
                    Icons.select_all,
                    color: Colors.orange,
                  )
                ])));
  }
}

//自定义图标组件
class IconContainer extends StatelessWidget {
  double? size = 32.0;
  Color? color = Colors.red;
  IconData icon;
  IconContainer(this.icon, {this.color, this.size});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 100.0,
      width: 100.0,
      color: this.color,
      child: Center(
          child: Icon(
        icon,
        size: this.size,
        color: Colors.white,
      )),
    );
  }
}
