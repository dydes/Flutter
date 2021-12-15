import 'package:flutter/material.dart';
import '../Form.dart';

class CategorgPage extends StatefulWidget{
  CategorgPage({Key? key}):super(key:key);
  _CategorgPageState createState() => _CategorgPageState();
}

class _CategorgPageState extends State<CategorgPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CategoryContent();
  }
}

class CategoryContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
        padding: EdgeInsets.fromLTRB(0, 0, 10, 10),
        child: GridView.count(
          crossAxisCount: 2, //控制一行的数量
          childAspectRatio: 1.7,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
              child: Image.network(
                  "https://s3.bmp.ovh/imgs/2021/12/08334c4727e6d33d.png",
                  fit: BoxFit.cover),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
              child: Image.network(
                  "https://s3.bmp.ovh/imgs/2021/12/08334c4727e6d33d.png",
                  fit: BoxFit.cover),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
              child: Image.network(
                  "https://s3.bmp.ovh/imgs/2021/12/08334c4727e6d33d.png",
                  fit: BoxFit.cover),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
              child: Image.network(
                  "https://s3.bmp.ovh/imgs/2021/12/08334c4727e6d33d.png",
                  fit: BoxFit.cover),
            ),
          ],
        ));
  }
}