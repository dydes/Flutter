import 'package:flutter/material.dart';

import '../Tabs.dart';

class RegisterThirdPage extends StatefulWidget {
  RegisterThirdPage({Key? key}) : super(key: key);
  _RegisterThirdPageState createState() => _RegisterThirdPageState();
}

class _RegisterThirdPageState extends State<RegisterThirdPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RegisterThirdContent();
  }
}

class RegisterThirdContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text("完成注册"),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              SizedBox(height: 40,),
              Text("完成注册"),
              RaisedButton(
                  child:Text("完成"),
                  onPressed: (){
                    //返回到指定的页面
                    Navigator.of(context).pushAndRemoveUntil(
                      new MaterialPageRoute(builder: (context)=> new Tabs(index:1)),
                        (route)=>route==null
                    );
                  })
            ],
          ),
        )
    );
  }
}