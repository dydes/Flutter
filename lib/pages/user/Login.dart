import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return LoginContent();
  }
}

class LoginContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text("登录"),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              SizedBox(height: 40,),
              Text("登录页面"),
              RaisedButton(
                  child:Text("登录"),
                  onPressed: (){
                    Navigator.of(context).pop();
                  })
            ],
          ),
        )
    );
  }
}
