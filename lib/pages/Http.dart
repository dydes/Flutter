import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HttpPage extends StatefulWidget {
  HttpPage({Key? key}) : super(key: key);
  _HttpPageState createState() => _HttpPageState();
}

class _HttpPageState extends State<HttpPage> {
  List _list=[];

  void initState(){
    super.initState();
    this.getData1();
  }

  getData1() async{
    var apiUrl = Uri.parse('https://jd.itying.com/api/pcate');
    var response = await http.get(apiUrl);
    if(response.statusCode==200){
      print(json.decode(response.body));
    }else{
      print(response.statusCode);
    }
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');
    setState(() {
      this._list=json.decode(response.body)["result"];
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("请求数据Demo"),
      ),
      body: this._list.length>0?ListView.builder(
        itemCount: this._list.length,
        itemBuilder:( context,index){
          return ListTile(title: Text(this._list[index]["title"]),);
        },
      ):Text(""),
    );
  }
  }