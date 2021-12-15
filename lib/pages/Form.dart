import 'package:flutter/material.dart';

class FormPage extends StatelessWidget{

  String title='表单';
  FormPage({this.title="表单"});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Text('返回'),
        onPressed: (){
          Navigator.of(context).pop();//返回上一级页面
        },
      ),
      appBar: AppBar(
        title: Text(this.title),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text("我是表单页面"),
          ),
          ListTile(
            title: Text("我是表单页面"),
          ),
          ListTile(
            title: Text("我是表单页面"),
          ),
        ],
      ),
    );
  }
}