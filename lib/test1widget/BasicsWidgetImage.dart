import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyTwoApp());
//          child: new Image.asset(
//            'Resource/image/1270469-1ea1fcd785abc314.webp',
//            width: 260,
//            height: 260,
//            fit: BoxFit.fill,
//          ),
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
          child: new Image.asset(
            'Resource/image/1270469-1ea1fcd785abc314.webp',
            width: 260,
            height: 260,
            fit: BoxFit.fill,
          ),
//          child: Image.network(
//            "https://upload-images.jianshu.io/upload_images/1417629-53f7d0902457cbe6.jpg?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240",
//            width: 260,
//            height: 260,
//            fit: BoxFit.fill,
//          ),
        ),
      ),
    );
  }
}
