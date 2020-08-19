import 'package:flutter/material.dart';
import './dome/listview_demo.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      theme: ThemeData(primarySwatch: Colors.yellow),
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
              leading: IconButton(
                icon: Icon(Icons.menu),
                tooltip: 'Navigration',
                onPressed: () => debugPrint('Navigration button is pressed'),
              ),

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
                  Tab(icon: Icon(Icons.local_florist)),
                  Tab(icon: Icon(Icons.local_activity)),
                  Tab(icon: Icon(Icons.local_bar)),
                ],
              ),
            ),
            body: TabBarView(
              children: <Widget>[
                Tab(
                    icon: Icon(
                  Icons.local_florist,
                  size: 120,
                  color: Colors.black12,
                )),
                Tab(
                    icon: Icon(
                  Icons.local_activity,
                  size: 120,
                  color: Colors.black12,
                )),
                Tab(
                    icon: Icon(
                  Icons.local_bar,
                  size: 120,
                  color: Colors.black12,
                )),
              ],
            )));
  }
}
