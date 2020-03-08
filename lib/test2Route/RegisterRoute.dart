
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()=>runApp(MyRouteApp());

class MyRouteApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Material Components',
      home: FirstPage(),
      routes: <String,WidgetBuilder>{//通过注释1处的routes用于初始化一个路由列表，当推送路由时，将在routes中查找路径名称，如果名称存在，则关联的WidgetBuilder用于构造MaterialPageRoute
        '/first':(BuildContext context)=>FirstPage(),
        '/second':(BuildContext context)=>SecondPage(),
      },
      initialRoute: '/first',
    );
  }
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('第一页'),
      ),
      body: Padding(
        padding: EdgeInsets.all(30.0),
        child:RaisedButton(
            child: Text('跳转第二页'),
            onPressed:(){
              Navigator.pushNamed(context, '/second');//注释2处的Navigator.pushNamed和Navigator.push作用类似，只不过pushNamed的参数为路由的名称。
            }
        )

      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('第二页'),
      ),
      body: Padding(
        padding: EdgeInsets.all(30.0),
        child: RaisedButton(
            child: Text('回到上一页'),
            onPressed: () {
              Navigator.of(context).pop();
            }),
      ),
    );
  }
}