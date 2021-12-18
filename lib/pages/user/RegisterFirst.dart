import 'package:flutter/material.dart';

class RegisterFirstPage extends StatefulWidget {
  RegisterFirstPage({Key? key}) : super(key: key);
  _RegisterFirstPageState createState() => _RegisterFirstPageState();
}

class _RegisterFirstPageState extends State<RegisterFirstPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RegisterFirstContent();
  }
}

class RegisterFirstContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text("注册-输入手机号"),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              SizedBox(height: 40,),
              Text("这是注册的第一步，输入手机号后请点击下一步"),
              RaisedButton(
                  child:Text("下一步"),
                  onPressed: (){
                    Navigator.of(context).pushReplacementNamed('/registerSecond');//替换路由，跳转下个页面的时候把当前页面替换为下个一页面，这样返回就返回到了上个页面
                  })
            ],
          ),
        )
    );
  }
}