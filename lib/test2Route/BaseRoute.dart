
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
              Navigator.push(context, MaterialPageRoute(builder: (context)=>SecondPage()),//注释1处调用了Navigator.push，将新建的路由添加到Navigator管理的route堆栈的栈顶，这个路由我们可以自定义，但是建议使用MaterialPageRoute，它是一个模态路由，可以自适应各个平台进行页面替换，并提供了相应的页面切换动画。在Android平台时，页面进入动画是向上滑动并淡出，退出是相反的动画，如果是在iOS平台 ，页面进入动画是从右侧滑入，退出是相反的动画。
                  //点击’跳转到第二页’按钮时会跳转到SecondPage。
              );
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
              Navigator.pop(context);//注释2处的Navigator.pop用于弹出route堆栈最顶层的Route。效果如下两个图所示。
            }),
      ),
    );
  }
}