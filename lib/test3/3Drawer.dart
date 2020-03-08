

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  static const String _title='Flutter Code Sample';
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}):super(key: key);
  @override
  _DrawerState createState() {
    // TODO: implement createState
    return _DrawerState();
  }
}

class _DrawerState extends State<MyStatefulWidget>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Drawer粒子'),
      ),
      drawer: _drawer,
    );
  }

  get _drawer=>Drawer(
    child: ListView(
       padding: EdgeInsets.zero,
      children: <Widget>[
        UserAccountsDrawerHeader(
          accountName: Text('liuye'),
          accountEmail: Text('liuy@pzdf.com'),
          currentAccountPicture: CircleAvatar(
            child: Text('X'),
          ),
        ),
        ListTile(
          leading: Icon(Icons.local_post_office),
          title: Text('邮件'),
        ),
        ListTile(
          leading: Icon(Icons.settings),
          title: Text('设置'),
        )
      ],
    ),
  );

}