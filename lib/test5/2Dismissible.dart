//滑动删除这个操作很常见，比如在一个列表中，我们向左滑动，就会直接删除一个条目或者给出删除提示选项。Flutter提供了Dismissible来帮助我们实现滑动删除。

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()=>runApp(DismissibleWidget(
  items: new List<String>.generate(300, (i) => "第$i行"),
));

class DismissibleWidget extends StatelessWidget{
  final List<String> items;
  DismissibleWidget({@required this.items});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Dismissible',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Dismissible示例'),
        ),
        body: ListView.builder(itemCount:items.length,itemBuilder: (context,index){
          final item=items[index];
          return Dismissible(
            key:Key(item),
            onDismissed: (direction){
              items.removeAt(index);
              print(index);
            },
            child: ListTile(
              leading: Icon(Icons.access_time),
              title: Text('${items[index]}'),
            ),
          );
        }),
      ),
    );
  }

}