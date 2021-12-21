import 'package:flutter/material.dart';

class AppBarDemoPage extends StatefulWidget {
  AppBarDemoPage({Key? key}) : super(key: key);
  _AppBarDemoPageState createState() => _AppBarDemoPageState();
}

class _AppBarDemoPageState extends State<AppBarDemoPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
        length: 2,
        child: Scaffold(
            appBar: AppBar(
              title: Text('AppBarDemoPage'),
              centerTitle: true,
              actions: <Widget>[
                IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {
                    print('search');
                  },
                ),
                IconButton(
                  icon: Icon(Icons.settings),
                  onPressed: () {
                    print('settings');
                  },
                ),
              ],
              bottom: TabBar(
                labelColor: Colors.blue,
                unselectedLabelColor: Colors.grey,
                tabs: <Widget>[Tab(text: "热门"), Tab(text: "推荐")],
              ),
            ),
            body: TabBarView(
              children: <Widget>[
                ListView(
                  children:<Widget>[ListTile(
                      title: Text('第一个tab'),
                    trailing: Icon(Icons.add),
                  ),
                    ListTile(
                        title: Text('第一个tab'),
                      trailing: Icon(Icons.add),
                    ),
                    ListTile(
                        title: Text('第一个tab'),
                      trailing: Icon(Icons.add),
                    ),]),
                ListView(
                    children:<Widget>[
                      ListTile(
                        leading: Icon(Icons.account_circle),
                        title: Text('第二个tab')
                    ),
                      ListTile(
                          leading: Icon(Icons.account_circle),
                          title: Text('第二个tab')
                      ),
                      ListTile(
                          leading: Icon(Icons.account_circle),
                          title: Text('第二个tab')
                      ),]),
              ],
            )));
  }
}
