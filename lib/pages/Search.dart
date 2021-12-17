import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  final arguments;
  SearchPage({this.arguments});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text("搜索页"),
        ),
        body: Text("页面内容${arguments !=null ? arguments['id']:'0'}")
    );
  }
}
