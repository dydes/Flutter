import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class getPostPage extends StatefulWidget {
  getPostPage({Key? key}) : super(key: key);
  _getPostPageState createState() => _getPostPageState();
}

class _getPostPageState extends State<getPostPage> {
  String _msg = "";
  String _msg1 = "";
  List _list = [];

  @override
  void initState() {
    super.initState();
    String userInfo1 = '{"username":"zhangsan","age":"20"}';
    Map u = json.decode(userInfo1); //把json转化为map类型

    Map userInfo = { //把map转化为json字符串
      "username": "张三",
      "age": 20
    };
    print(u["username"]);
    print(json.encode(userInfo));
  }
  //请求数据
  getData() async {
    var apiUrl = Uri.parse('https://jd.itying.com/api/httpGet');
    var response = await http.get(apiUrl);
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');
    setState(() {
      this._msg = json.decode(response.body)["msg"];
    });
  }

//提交数据
  postData() async {
    var apiUrl = Uri.parse('https://jd.itying.com/api/httpPost');
    var response = await http.post(
        apiUrl, body: {"username": "张三", "age": "20"});
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');
    setState(() {
      this._msg1 = json.decode(response.body)["msg"];
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("按钮"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(this._msg),
            ElevatedButton(
                child: Text("get请求"),
                onPressed: getData),
            SizedBox(height: 20,),
            Text(this._msg1),
            ElevatedButton(
                child: Text("post请求"),
                onPressed: postData),
            SizedBox(height: 20,),
            ElevatedButton(
                child: Text("get请求数据"),
                onPressed:(){
                  Navigator.pushNamed(context, '/http');
                }),
          ],
        ),
      ),
    );
  }
}