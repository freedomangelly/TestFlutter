//PageView是一个可逐页滚动的列表，和Android中ViewPage类似。
//PageView有三种构造函数：
//
//默认构造函数PageView
//PageView.builder：适用于具有大量（或无限）列表项。
//PageView.custom：提供了自定义子Widget的能力。

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'PageView',
      home: Scaffold(
        appBar: AppBar(
          title: Text('PageView示例'),
        ),
        body: PageView(
          onPageChanged: (index){
            print('当前为第$index 页');
          },
          children: <Widget>[
            ListTile(title: Text('第0页')),
            ListTile(title: Text('第1页')),
            ListTile(title: Text('第2页')),
          ],
        ),
      ),
    );
  }

}

