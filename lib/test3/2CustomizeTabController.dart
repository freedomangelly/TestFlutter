//TabBar用于显示水平的选项卡，和Android中的TabLayout类似。TabBar通常需要配合TabBarView和TabController。
// 其中TabBarView用于显示与当前所选的选项卡对应的Widget视图；
// TabController顾名思义就是TabBarView和TabBar的控制器，是这两个Widget的桥梁。
// 实现TabController有两种方式，一种是用系统的DefaultTabController，另一种是自定义TabController。

//使用DefaultTabController
//DefaultTabController这种方式方便快捷，直接新建一个DefaultTabController就可以了。

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()=>runApp(MyApp());
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
//      home: MyTabController(),//默认
      home: MyStatefulWidget(),//自定义
    );
  }

}

class MyTabController extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(length: 3, child: Scaffold(
      appBar: AppBar(
        title: Text('DefaultTabController示例'),
        bottom: TabBar(
          tabs: <Widget>[
            Tab(
              text:'热点'
            ),            Tab(
              text:'体育'
            ),            Tab(
              text:'科技'
            ),
          ],
        ),
      ),
      body: TabBarView(
        children: <Widget>[
          Center(child: Text('热点')),
          Center(child: Text('体育')),
          Center(child: Text('科技'))
        ],
      ),
    )
    );
  }
}


//如果想要切换动画或者监听切换的交互，可以自定义TabController，需要实现SingleTickerProviderStateMixin。
class MyStatefulWidget extends StatefulWidget{
  MyStatefulWidget({Key key}):super(key:key);
  @override
 _MyStatefulWidgetState createState() {
    // TODO: implement createState
    return _MyStatefulWidgetState();
  }
}
class _MyStatefulWidgetState extends State<MyStatefulWidget>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 3);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('自定义TabController'),
        bottom: TabBar(
          tabs: <Widget>[
            Tab(
              text: '热点',
            ),
            Tab(
              text: '体育',
            ),
            Tab(
              text: '科技',
            ),
          ],
          controller: _tabController,//1在注释1处将TabBar的controller设置为新建的TabController。
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          Center(child: Text('热点')),
          Center(child: Text('体育')),
          Center(child: Text('科技')),
        ],
      ),
    );
  }
  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}