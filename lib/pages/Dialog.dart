import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';

class DialogPage extends StatefulWidget {
  DialogPage({Key? key}) : super(key: key);
  _DialogPageState createState() => _DialogPageState();
}

class _DialogPageState extends State<DialogPage> {
  List<Map> imgList = [
    {"url": "https://www.hualigs.cn/image/61cc061b32167.jpg"},
    {"url": "https://www.hualigs.cn/image/61cc061b84190.jpg"},
    {"url": "https://www.hualigs.cn/image/61cc061b92b3d.jpg"},
    {"url": "https://www.hualigs.cn/image/61cc061b9056c.jpg"},
  ];
  _alertDialog() async{
  var result=await showDialog(
      context: context,
      builder: (context){
        return AlertDialog(
          title: Text("提示信息"),
          content: Text("您确定要删除吗？"),
          actions: <Widget>[
            ElevatedButton(
              child: Text("取消"),
              onPressed: (){
                print("取消");
                Navigator.pop(context,'Cancel');
            },
            ),
            ElevatedButton(
        child: Text("确定"),
        onPressed: (){
        print("确定");
        Navigator.pop(context,'Ok');
        },)
          ],
        );
      });
  print(result);
  }
  _simpleDialog() async{
    var result=await showDialog(
        context: context,
        builder: (context){
          return SimpleDialog(
            title: Text("选择内容"),
            children: [
              SimpleDialogOption(
                child: Text("OptionA"),
              onPressed: (){
                  print("OptionA");
                  Navigator.pop(context,'A');
              },),
              Divider(),
              SimpleDialogOption(
                child: Text("OptionB"),
                onPressed: (){
                  print("OptionB");
                  Navigator.pop(context,'B');
                },),
              Divider(),
              SimpleDialogOption(
                child: Text("OptionC"),
                onPressed: (){
                  print("OptionC");
                  Navigator.pop(context,'C');
                },)
            ],
          );
    });
    print(result);
  }
  _modelBottomSheet() async{
    var result=await showModalBottomSheet(
      context: context,
      builder: (context){
        return Container(
          height: 200,
          child: Column(
            children: [
              ListTile(
                title: Text("分享 A"),
                onTap: (){
                  print("A");
                  Navigator.pop(context,'A');
                },
              ),
              Divider(),
              ListTile(
                title: Text("分享 B"),
                onTap: (){
                  print("B");
                  Navigator.pop(context,'B');
                },
              ),
              Divider(),
              ListTile(
                title: Text("分享 C"),
                onTap: (){
                  print("C");
                  Navigator.pop(context,'C');
                },
              ),
            ],
          ),
        );
      }
  );
    print(result);
  }
  _toast(){
    Fluttertoast.showToast(
        msg: "提示信息",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
    );
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text('单选演示页面'),
        ),
        body:Column(
          children: <Widget>[
            Container(
              child: AspectRatio(
                aspectRatio: 16 / 9,
                child: Swiper(
                  itemBuilder: (BuildContext context, int index) {
                    return new Image.network(
                      imgList[index]["url"],
                      fit: BoxFit.fill,
                    );
                  },
                  itemCount: imgList.length,
                  pagination: new SwiperPagination(), //显示分页
                  control: new SwiperControl(), //显示左右箭头
                  loop: true,//从头再来循环
                  autoplay: true,//自动轮播
                ),
              ),
            ),
            SizedBox(height: 50,),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ElevatedButton(
                      child:Text("alert弹出框-AlertDialog"),
                      onPressed: _alertDialog),
                  SizedBox(height: 20,),
                  ElevatedButton(
                      child:Text("SimpleDialog"),
                      onPressed: _simpleDialog),
                  SizedBox(height: 20,),
                  ElevatedButton(
                      child:Text("actionSheet底部弹出框-showModelBottomSheet"),
                      onPressed: _modelBottomSheet),
                  SizedBox(height: 20,),
                  ElevatedButton(
                      child:Text("toast"),
                      onPressed: _toast),
                ],
              ),
            )
          ],
        )
    );
  }
}