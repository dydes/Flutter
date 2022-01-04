import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';

class SwiperPage extends StatefulWidget {
  SwiperPage({Key? key}) : super(key: key);
  _SwiperPageState createState() => _SwiperPageState();
}

class _SwiperPageState extends State<SwiperPage> {
  List<Map> imgList = [
    {"url": "https://www.hualigs.cn/image/61cc061b32167.jpg"},
    {"url": "https://www.hualigs.cn/image/61cc061b84190.jpg"},
    {"url": "https://www.hualigs.cn/image/61cc061b92b3d.jpg"},
    {"url": "https://www.hualigs.cn/image/61cc061b9056c.jpg"},
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text('轮播图演示页面'),
        ),
        body: Column(
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
            )
          ],
        ));
  }
}
