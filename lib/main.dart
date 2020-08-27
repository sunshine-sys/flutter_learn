import 'package:flutter/material.dart';
import './dome/listview_demo.dart';
import './dome/drawer_demo.dart';
import './dome/bottom_navigation_bar_demo.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      theme: ThemeData(
          primarySwatch: Colors.deepOrange,
          highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
          splashColor: Colors.white70),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.grey[100],

        // 导航栏
        appBar: AppBar(
          // 标题
          title: Text('FLUTTER'),

          // 左边按钮
          // leading: IconButton(
          //   icon: Icon(Icons.menu),
          //   tooltip: 'Navigration',
          //   onPressed: () => debugPrint('Navigration button is pressed'),
          // ),

          // 右边按钮
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              tooltip: 'search',
              onPressed: () => debugPrint('search button is pressed'),
            )
          ],
          elevation: 0.0,

          // 做个标签栏
          bottom: TabBar(
            unselectedLabelColor: Colors.black38,
            indicatorColor: Colors.black54,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorWeight: 1.0,
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.local_florist),
                text: 'sssss',
              ),
              Tab(icon: Icon(Icons.local_activity)),
              Tab(icon: Icon(Icons.local_bar)),
            ],
          ),
        ),

        // 页面的内容
        body: TabBarView(
          children: <Widget>[
            ListViewDome(),
            Tab(
              icon: Icon(
                Icons.local_activity,
                size: 120,
                color: Colors.black12,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.local_bar,
                size: 120,
                color: Colors.black12,
              ),
            ),
          ],
        ),

        // 侧边栏
        drawer: DrawerDemo(),

        // 底部的导航栏
        bottomNavigationBar: BottomNavigationBarDemo(),
      ),
    );
  }
}
