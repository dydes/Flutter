import 'package:flutter/material.dart';

class RegisterSecondPage extends StatefulWidget {
  RegisterSecondPage({Key? key}) : super(key: key);
  _RegisterSecondPageState createState() => _RegisterSecondPageState();
}

class _RegisterSecondPageState extends State<RegisterSecondPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RegisterSecondContent();
  }
}

class RegisterSecondContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text("注册-输入验证码"),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              SizedBox(height: 40,),
              Text("这是注册的第二步，输入验证码后请点击下一步"),
              RaisedButton(
                  child:Text("下一步"),
                  onPressed: (){
                    Navigator.of(context).pushReplacementNamed('/registerThird');//替换路由，跳转下个页面的时候把当前页面替换为下个一页面，这样返回就返回到了上个页面
                  })
            ],
          ),
        )
    );
  }
}