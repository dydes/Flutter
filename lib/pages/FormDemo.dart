import 'package:flutter/material.dart';

class FormDemoPage extends StatefulWidget {
  FormDemoPage({Key? key}) : super(key: key);
  _FormDemoPageState createState() => _FormDemoPageState();
}

class _FormDemoPageState extends State<FormDemoPage> {
  String? username;
  int sex=1;
  String info='';

  List hobby=[
    {
      "checked":true,
      "title":"吃饭"
    },{
      "checked":false,
      "title":"睡觉"
    },{
      "checked":true,
      "title":"写代码"
    }
  ];

  List <Widget> _getHobby(){
    List <Widget> tempList=[];
    for(var i=0;i<this.hobby.length;i++){
      tempList.add(
        Row(
          children: [
            Text(this.hobby[i]["title"]+":"),
            Checkbox(
                value: this.hobby[i]["checked"],
                onChanged: (value){
                  setState(() {
                    this.hobby[i]["checked"]=value;
                  });
                }
            )
          ],
        )
          );
    }
    return tempList;
  }


  void _sexChanged(value){
    setState(() {
      this.sex=value;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text('学员登记'),
        ),
        body:Padding(
        padding: EdgeInsets.all(20),
    child:Column(
      children: <Widget>[
        TextField(
          decoration: InputDecoration(
            hintText: "输入用户信息"
          ),
          onChanged: (value){
            setState(() {
              this.username=value;
            });
          },
        ),
        SizedBox(height: 5,),
        Divider(),
        SizedBox(height: 5,),
        Row(
          children: <Widget>[
            Text("男"),
            Radio(
              value:1,
              onChanged:_sexChanged,
      groupValue: this.sex,
            ),
            SizedBox(width: 20,),
            Text("女"),
            Radio(
              value:2,
              onChanged:_sexChanged,
              groupValue: this.sex,
            ),
          ],
        ),
        SizedBox(height: 5,),
        Divider(),
        SizedBox(height: 5,),
        Column(
          children: _getHobby(),
        ),
        SizedBox(height: 5,),
        Divider(),
        SizedBox(height: 5,),
        TextField(
          maxLines: 4,
          decoration: InputDecoration(
            hintText: "描述信息",
            border: OutlineInputBorder()
          ),
          onChanged: (value){
            setState(() {
              this.info=value;
            });
          },
        ),
        SizedBox(height: 5,),
        Divider(),
        SizedBox(height: 5,),
        Container(
          width: double.infinity,
          height: 40,
          child: RaisedButton(
            child: Text("提交信息"),
            onPressed: (){
              print(this.sex);
              print(this.username);
              print(this.hobby);
              print(this.info);
            },
            color: Colors.blue,
            textColor: Colors.white,
          ),
        )
      ],
    )
    ),
    );
  }
}