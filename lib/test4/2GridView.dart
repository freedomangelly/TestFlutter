

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()=>runApp(
    MyApp(items: new List<String>.generate(299, (i)=>"第$i行"))
);

class MyApp extends StatelessWidget{
  final List<String> items;
  MyApp({@required this.items});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: new Text('GridView示例'),
        ),
        body: GridView.builder(itemCount:items.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 1,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5
        ), itemBuilder: (context,index){
          return ListTile(
            leading: Icon(Icons.access_time),
            title: Text('${items[index]}'),
          );
        },
        )
      ),
    );
  }

}