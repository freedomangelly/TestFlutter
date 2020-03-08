

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()=>runApp(MyScaffoldApp());
//Scaffold同样属于Material组件，它实现了Material Design的基本布局结构，因此它经常会作为MaterialApp的子Widget, Scaffold会自动填充可用的空间，这通常意味着它将占据整个窗口或屏幕，并且Scaffold会自动适配屏幕。我们的布局就是在Scaffold中进行编写的。
//appBar：用于设置顶部的标题栏。
//body：显示Scaffold的主要内容。
//bottomNavigationBar：用于设置Scaffold的底部导航栏，
//drawer：用于设置抽屉效果。
//floatingActionButton：用于设置位于右下角的按钮。
class MyScaffoldApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Scaffold示例'),
        ),
        body: Padding(
          padding: EdgeInsets.all(30.0),
          child: Text('Scaffold'),
        ),
        bottomNavigationBar: BottomAppBar(
          child: Container(height: 50,),
        ),
        drawer: Drawer(
          child: Center(
            child: Text('抽屉'),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}