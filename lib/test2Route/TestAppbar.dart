

//AppBar由toolbar和其他的可选Widget组成，比如TabBar和FlexibleSpaceBar。
//AppBar会在顶部显示leading、title、actions等内容，底部bottom通常显示TabBar，下图展示了这些内容的位置分布。

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()=>runApp(MyAppbarApp());

class MyAppbarApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: MyScaffld(),
    );
  }
}

class MyScaffld extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('AppBar示例'),
        leading: FlutterLogo(colors: Colors.lightGreen,),
        actions: <Widget>[IconButton(
          icon: Icon(Icons.share),
          onPressed: (){
            print('添加按钮');
          },
        )],
      ),
    );
  }
}