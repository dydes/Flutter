import 'package:flutter/material.dart';

class TextFieldDemoPage extends StatefulWidget {
  TextFieldDemoPage({Key? key}) : super(key: key);
  _TextFieldDemoPageState createState() => _TextFieldDemoPageState();
}

class _TextFieldDemoPageState extends State<TextFieldDemoPage> {

  var username = new TextEditingController();
  @override
  void initState(){
    super.initState();
    username.text='初始值';
  }
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('表单演示页面'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        //child: TextDemo()
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                hintText: "请输入用户名"
              ),
              controller: username,
              onChanged: (value){
                setState(() {
                  username.text=value;
                });
              },
            ),
            SizedBox(height: 20,),
            Container(
              width: double.infinity,
                height: 40,
              child: RaisedButton(
                child: Text("登录"),
                onPressed: (){
                  print(this.username.text);
                },
                color: Colors.blue,
                textColor: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class TextDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Column(
        children: <Widget>[
          TextField(),
          SizedBox(height: 30,),
          TextField(
            decoration: InputDecoration(
                hintText: "请输入搜索内容",
                border: OutlineInputBorder()
            ),
          ),
          TextField(
            maxLines: 2,
            decoration: InputDecoration(
                hintText: "请输入搜索内容",
                border: OutlineInputBorder(),
                labelText: "用户名"
            ),
          ),
          SizedBox(height: 30,),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
                icon: Icon(Icons.lock),
                hintText: "请输入密码",
                border: OutlineInputBorder()
            ),
          ),
        ],
      ),
    );
  }
}