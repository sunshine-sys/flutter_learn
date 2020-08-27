import 'package:flutter/material.dart';

class DrawerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.all(0),
        children: <Widget>[
          // DrawerHeader(
          //   child: Text('header'.toUpperCase()),
          //   decoration: BoxDecoration(
          //     color: Colors.grey[100],
          //   ),
          // ),
          UserAccountsDrawerHeader(
            accountName:
                Text('Crazy', style: TextStyle(fontWeight: FontWeight.bold)),
            accountEmail: Text('crazy@163.com'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://dss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=2034740944,4251903193&fm=26&gp=0.jpg'),
            ),
            decoration: BoxDecoration(
              color: Colors.yellow[400],
              image: DecorationImage(
                image: NetworkImage(
                    'https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=2546072546,3177643641&fm=26&gp=0.jpg'),
                fit: BoxFit.cover,
                //   colorFilter: ColorFilter.mode(
                //       Colors.black87.withOpacity(0.6), BlendMode.dstOut),
              ),
            ),
          ),
          ListTile(
            title: Text(
              'Messagge',
              textAlign: TextAlign.right,
            ),
            trailing: Icon(
              Icons.message,
              color: Colors.black12,
              size: 22.0,
            ),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            title: Text(
              'set',
              textAlign: TextAlign.right,
            ),
            trailing: Icon(
              Icons.settings,
              color: Colors.black12,
              size: 22.0,
            ),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            title: Text(
              'favorite',
              textAlign: TextAlign.right,
            ),
            trailing: Icon(
              Icons.favorite,
              color: Colors.black12,
              size: 22.0,
            ),
            onTap: () => Navigator.pop(context),
          ),
        ],
      ),
    );
  }
}
