import 'package:flutter/material.dart';
import '../pages/Form.dart';
import '../pages/Search.dart';
import '../pages/Tabs.dart';//得引入抽离的组件才能生效
import '../pages/Product.dart';
import '../pages/ProductInfo.dart';
import '../pages/user/Login.dart';
import '../pages/user/RegisterFirst.dart';
import '../pages/user/RegisterSecond.dart';
import '../pages/user/RegisterThird.dart';
import '../pages/AppBarDemo.dart';
import '../pages/TabBarController.dart';
import '../pages/user/UserCenter.dart';
import '../pages/Textfield.dart';
import '../pages/CheckBox.dart';

//配置路由
final routes={
  '/':(context,{arguments})=>Tabs(),
  '/form':(context,{arguments})=>FormPage(),
  '/search':(context,{arguments})=>SearchPage(arguments:arguments),
  '/product':(context,{arguments})=>ProductPage(),
  '/productinfo':(context,{arguments})=>ProductInfoPage(arguments:arguments),
  '/login':(context)=>LoginPage(),
  '/registerFirst':(context)=>RegisterFirstPage(),
  '/registerSecond':(context)=>RegisterSecondPage(),
  '/registerThird':(context)=>RegisterThirdPage(),
  '/appBarDemo':(context)=>AppBarDemoPage(),
  '/tabBarController':(context)=>TabBarControllerPage(),
  '/userCenter':(context)=>UserCenterPage(),
  '/textField':(context)=>TextFieldDemoPage(),
  '/checkBox':(context)=>CheckBoxDemoPage(),
};

//固定写法
var onGenerateRoute=(RouteSettings settings){
  final String? name = settings.name;
  final Function pageContentBuilder=routes[name]!;
  if(pageContentBuilder !=null){
    if(settings.arguments !=null) {
      final Route route = MaterialPageRoute(
          builder: (context) =>
              pageContentBuilder(context, arguments: settings.arguments));
      return route;
    }else{
      final Route route=MaterialPageRoute(
          builder: (context)=>
              pageContentBuilder(context));
      return route;
    }
  }
};