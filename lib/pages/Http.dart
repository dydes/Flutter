import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class HttpPage extends StatefulWidget {
  HttpPage({Key? key}) : super(key: key);
  _HttpPageState createState() => _HttpPageState();
}

class _HttpPageState extends State<HttpPage> {
  List _list=[];

  void getHttp() async {//需要填写请求地址，headers，data
    var dio = Dio();
    dio.interceptors.add(LogInterceptor(responseBody: true));
    dio.options.baseUrl = 'https://emp.willclass.com/api/v100/oms/orderInfo/page';
    dio.options.headers = {
      "Accept": "application/json",
      "Content-Type": "application/json",
      "User-Agent": "HT100Billion",
      "HT-app": 6,
      "HT-Platform-Type":"android",
      "HT-a":"HUQD4RRBySZrlprhZhggbwy5qLfeBsqZftDsfjHb7YK3flEvfvn26UI/d6nSWgLVatxPl2T2yVcIH3crLtDuGlK6wjncA4sP|x6zHjM2Vyag=",
      "Cookie": " _r=ihJwwY0cYz5rlprhZhggbwy5qLfeBsqZftDsfjHb7YK3flEvfvn26au8c1HnNa22|LgRELsPpx0g=; _a=HUQD4RRBySZrlprhZhggbwy5qLfeBsqZftDsfjHb7YK3flEvfvn26UI/d6nSWgLVatxPl2T2yVcIH3crLtDuGlK6wjncA4sP|x6zHjM2Vyag=",
    };
    var response = await dio.post(
      '',
      data: {
        "operatorId": 50000000,
        "operatorName": "丁毅",
        "uniteType": 8
      },
      options: Options(
        contentType: Headers.jsonContentType,
      ),
    );
    Map<String, dynamic> resCall = response.data;
    print(resCall['data']['records']);

setState(() {//请求返回后，刷新list数据
  _list=resCall['data']['records'];
});
  }

  @override
  initState(){
    getHttp();//调用
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
          return ListTile(title: Text(this._list[index]['schoolName']),);//展示
        },
      ):Text("jjj"),
    );
  }
  }