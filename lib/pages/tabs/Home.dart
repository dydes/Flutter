import 'package:flutter/material.dart';
import 'package:huitong/res/listData.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return HomeContent();
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build`
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Text("搜索"),
          onPressed: () {
            Navigator.pushNamed(context, '/search', arguments: {"id": 123});
          },
        ),
        body: ListView(
          children: listData.map((value) {
            return Card(
              margin: EdgeInsets.all(10),
              child: Column(
                children: <Widget>[
                  AspectRatio(
                      aspectRatio: 16 / 9,
                      child: Image.network(
                        value["imageUrl"],
                        fit: BoxFit.cover,
                      )),
                  ListTile(
                      leading: ClipOval(
                        child: InkWell(
                          child: Image.network(
                            value["imageUrl"],
                            fit: BoxFit.cover,
                            height: 60,
                            width: 60,
                          ),
                          onTap: () {
                            Navigator.pushNamed(context,'/tabBarController');
                          },
                        )
                      ),
                      title: Text(
                        value["title"],
                        style: TextStyle(fontSize: 28),
                      ),
                      subtitle: Text(
                        value["description"],
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      trailing: IconButton(
                        icon: Icon(Icons.add_shopping_cart),
                        onPressed: () {
                          Navigator.pushNamed(context, '/dialog');
                        },
                        splashColor: Colors.orange,
                      ))
                ],
              ),
            );
          }).toList(),
        ));
  }
}
