import 'package:flutter/material.dart';

class RadioDemoPage extends StatefulWidget {
  RadioDemoPage({Key? key}) : super(key: key);
  _RadioDemoPageState createState() => _RadioDemoPageState();
}

class _RadioDemoPageState extends State<RadioDemoPage> {
  int sex=1;
  bool flag=true;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text('单选演示页面'),
        ),
        body:Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Text("男"),
                  Radio(
                    value: 1,
                    onChanged: (v){
                      setState(() {
                        if(v is int){
                          sex=v;
                        };
                      });
                    },
                    groupValue:this.sex ,
                  ),
                  SizedBox(width: 20,),
                  Text("女"),
                  Radio(
                    value: 2,
                    onChanged: (v){
                      setState(() {
                        if(v is int){
                          sex=v;
                        }
                      });
                    },
                    groupValue:this.sex ,//绑定的变量一样就是一个按钮组
                  )
                ],
              ),
              Row(
                children: [
                  Text("${this.sex}"),
                  Text(this.sex==1?"男":"女")
                ],
              ),
              RadioListTile(
                value: 1,
                onChanged: (v){
                  setState(() {
                    if(v is int){
                      sex=v;
                    }
                  });
                },
                groupValue: this.sex,
                title: Text("标题"),
                subtitle: Text("这是二级标题"),
                secondary: Icon(Icons.help),
                selected: this.sex==1,
              ),
              RadioListTile(
                value: 2,
                onChanged: (v){
                  setState(() {
                    if(v is int){
                      sex=v;
                    }
                  });
                },
                groupValue: this.sex,
                title: Text("标题"),
                subtitle: Text("这是二级标题"),
                secondary: Icon(Icons.help),
                selected: this.sex==2,
              ),
              SizedBox(height:40),
              Switch(
                value: this.flag,
                onChanged: (v){
                  setState(() {
                    this.flag=v;
                  });
                },
              )
            ],
          ),
        )
    );
  }
}