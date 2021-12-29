import 'package:flutter/material.dart';

class CheckBoxDemoPage extends StatefulWidget {
  CheckBoxDemoPage({Key? key}) : super(key: key);
  _CheckBoxDemoPageState createState() => _CheckBoxDemoPageState();
}

class _CheckBoxDemoPageState extends State<CheckBoxDemoPage> {
  var flag=true;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('多选演示页面'),
      ),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:<Widget> [
          Row(children: <Widget>[
            Checkbox(
              value: this.flag,
              onChanged: (v) {
                setState(() {
                  this.flag=v!;
                });
              },
              activeColor: Colors.red,
            )
          ],),
          Row(
            children: <Widget>[
              Text(this.flag?"选中":"未选中")
            ],
          ),
          SizedBox(height: 40,),
          CheckboxListTile(
            value: this.flag,
            onChanged: (v) {
              setState(() {
                this.flag=v!;
              });
            },
            title: Text("标题"),
            subtitle: Text("二级标题"),
          ),
          Divider(),
          CheckboxListTile(
            value: this.flag,
            onChanged: (v) {
              setState(() {
                this.flag=v!;
              });
            },
            title: Text("标题"),
            subtitle: Text("二级标题"),
            secondary: Icon(Icons.home),
          ),
        ],
      )
    );
  }
}
