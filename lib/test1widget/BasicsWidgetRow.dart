import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyTwoApp());
/**
 * Row用于在水平方向显示数组中的子元素Widget。
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
          child: Row(
            children: <Widget>[
              Icon(Icons.access_alarm),
              Icon(Icons.add_a_photo),
              Icon(Icons.add_call),
              Expanded(
                child: FittedBox(
                  fit: BoxFit.contain,
                  child: const FlutterLogo(),
                ),
                flex: 2,
              ),
              Expanded(
                child: Text(
                  "占剩余部分的三分之一"
                ),
                flex: 1,
              )
            ],
          )
        ),
      ),
    );
  }
}
