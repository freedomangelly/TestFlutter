

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()=>runApp(
//    MyApp()
    MyApp3(items: new List<String>.generate(300, (i)=>"第$i行"))
);

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title:'Flutter',
      home: Scaffold(
        appBar: AppBar(
          title:Text('Listview示例')
        ),
        body: ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.access_time),
              title:Text('第1行')
            ),
            ListTile(
              leading: Icon(Icons.access_time),
              title:Text('第2行')
            ),
          ],
        ),
      ),
    );
  }
}

/**
 * 如果要展示大量列表项，可以使用ListView.builder。
 */
class MyApp2 extends StatelessWidget{
  final List<String> items;

  MyApp2({@required this.items});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title:'Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('ListView示例'),
        ),
        body: ListView.builder(itemCount:items.length,itemBuilder: (context,index){
          return ListTile(
            leading: Icon(Icons.access_time),
            title: Text('${items[index]}'),
          );
        }),
      ),
    );
  }

}

// ListView.separated创建
class MyApp3 extends StatelessWidget{
  final List<String> items;

  MyApp3({@required this.items});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title:'Test',
      home: Scaffold(
        appBar: AppBar(
          title: Text('ListView示例'),
        ),
        body: ListView.separated(itemCount:items.length,itemBuilder: (context,index){
          return ListTile(
            leading: Icon(Icons.access_time),
            title: Text('${items[index]}'),
          );
        },
        separatorBuilder: (context,index){
          return Container(
            constraints: BoxConstraints.tightForFinite(height: 1),
            color: Colors.black45,
          );
      },
        ),
      ),
    );
  }

}
