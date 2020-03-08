import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyTwoApp());

/**
 * 一个便利的容器Widget，可以设置Widget的背景、尺寸、定位。描述起来有些抽象，可以理解它和Android中的ViewGroup差不多。
 */
class MyTwoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      //注释1处的MaterialApp属于Material Components类别中的Widget，MaterialApp中包含了实现Material Design的应用程序所需要的Widget。
      title: 'Welcome to flutter',
      theme: ThemeData(primarySwatch: Colors.green),
      home: Scaffold(
        //2注释2和3处的Scaffold和AppBar同样也是Material Components类别中的Widget，Scaffold实现了Material Design布局结构，AppBar是Material Design的应用栏
        appBar: AppBar(
          //3
          title: Text('Basics widget'),
        ),
        body: Padding(
          padding: EdgeInsets.all(40.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.lightGreen
            ),
            child: Text('Container'),
            padding: EdgeInsets.all(36.0),
            margin: EdgeInsets.all(10.0),
          )
        ),
      ),
    );
  }
}
