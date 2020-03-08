//BottomNavigationBar是底部的导航栏，用于在3到5个的少量视图中进行选择。一般情况下，导航栏的选项卡由文本标签、图标或两者结合的形式组成。
//底部导航栏通常与javaScaffold结合使用，它会作为Scaffold.bottomNavigationBar参数。

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(BottomNaviagtionApp());

class BottomNaviagtionApp extends StatelessWidget {
  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();//注释1处的createState方法会为此Widget创建可变状态
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const List<Widget> _widget = <Widget>[
    Text(
      'Index 0:首页',
    ),
    Text(
      'Index 1:通讯录',
    ),
    Text(
      'Index 2:设置',
    )
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('BottomNavigationBar示例'),
      ),
      body: Center(
        child: _widget.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('首页'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.contacts),
            title: Text('通讯录'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.build),
            title: Text('设置'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber,
        onTap: _onItemTapped ,//注释2处的onTap属性会在点击其中一个选项卡时调用，它的值由_onItemTapped方法定义，在这个方法中设置当前的索引赋值给_selectedIndex，这样通过_selectedIndex的值就可以切换选项卡了。
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
