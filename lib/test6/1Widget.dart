import 'package:flutter/material.dart';

void main() => runApp(FlexWidget());
//1.线性布局Widget
//线性布局类似于Android中的LinearLayout，可以垂直也可以水平排列，Flutter的线性布局有两个：
//
//Row：水平方向的线性布局。
//Column：垂直方向的线性布局。
class RowWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Row示例"),
        ),
        body: Padding(
          padding: EdgeInsets.all(40.0),
          child: Column(
            children: <Widget>[
              Text("Android进阶之光"),
              Text("Android进阶解密"),
            ],
          ),
        ),
      ),
    );
  }
}
/**
//2.流式布局Widget
//流式布局就是把超出屏幕显示范围的控件自动换行，在Android中并没有现成的流式布局控件，都是开发人员自己封装的，比如鸿洋封装的FlowLayout。Flutter中提供了Wrap来实现流式布局。
Wrap({
  Key key,
  this.direction = Axis.horizontal, //1
  this.alignment = WrapAlignment.start,//2
  this.spacing = 0.0,
  this.runAlignment = WrapAlignment.start,
  this.runSpacing = 0.0,
  this.crossAxisAlignment = WrapCrossAlignment.start,
  this.textDirection,
  this.verticalDirection = VerticalDirection.down,
  List<Widget> children = const <Widget>[],
}) : super(key: key, children: children);


 *
    参数名称	参数类型	含义
    direction	Axis	主轴的方向
    alignment	WrapAlignment	子Widget 在主轴上的对齐方式
    runAlignment	WrapAlignment	每行或每列的对齐方式
    runSpacing	double	每行或每列之间的间距
    crossAxisAlignment	WrapCrossAlignment	子Widget在交叉轴上的对齐方式
    textDirection	TextDirection	子Widget在主轴方向上的布局顺序
    verticalDirection	VerticalDirection	子Widget在交叉轴方向上的布局顺序
 */
class ChipWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter",
      home: Scaffold(
        appBar: AppBar(
          title: Text("流式布局示例"),
        ),
        body: Padding(
          padding: EdgeInsets.all(20.0),
          child: Wrap(
            direction: Axis.horizontal, //主轴的方向
            spacing: 8.0, // 主轴方向的间距
            runSpacing: 12.0, // 交叉轴方向的间距
            children: <Widget>[
              Chip(//1注释1处的Chip意为碎片，实际上是一个标签Widget，这个例子中定义了三个标签来体现流式布局。
                avatar: CircleAvatar(
                    backgroundColor: Colors.blue, child: Text('1')),
                label: Text('Android进阶之光'),
              ),
              Chip(
                avatar: CircleAvatar(
                    backgroundColor: Colors.blue, child: Text('2')),
                label: Text('Android进阶解密'),
              ),
              Chip(
                avatar: CircleAvatar(
                    backgroundColor: Colors.blue, child: Text('3')),
                label: Text('Android进阶？'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/**层式布局Widget
    层式布局类似于Android的FrameLayout，在Flutter可以通过Stack来实现层式布局，其子Widget 会按照添加顺序确定显示层级，后面添加的会覆盖在前面添加的Widget上面。
    为了确定子Widget到父容器四个角的位置，Stack将子Widget分为两类：

    positioned：Positioned嵌套的子Widget，Positioned可以控制子Widget到父容器四个边的距离。
    non-positioned ：没有用Positioned嵌套起来的子Widget，使用Stack的alignment属性来控制自身在父容器里的位置。
    */
class StackWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter",
      home: Scaffold(
        appBar: AppBar(
          title: Text("层式布局示例"),
        ),
        body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Positioned(
              left: 90.0,
              top: 120.0,
              child: Image.asset(
                "images/decode.png",
                width: 200.0,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              child: Text('Android进阶三部曲第二部',
                  style: TextStyle(
                      color: Colors.lightBlue, fontSize: 20.0)),
              height: 50.0,
              width: 100.0,
              alignment: Alignment.center,
            )
          ],
        ),
      ),
    );
  }
}
//上面的代码中，Stack分为两个部分，一个是Positioned Widget，用于显示一个图片，一个是non-positioned Widget，嵌套在Container中，用于显示一行文字。效果如下图所示。

//4.弹性布局Widget
class FlexWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter",
      home: Scaffold(
        appBar: AppBar(
          title: Text("弹性布局示例"),
        ),
        body: Flex(
          direction: Axis.horizontal,//1注释1处的direction属性，用于设置主轴的方向，这是必须要设置的。Flex的子Widget是三个Expanded，每个Expanded负责显示一个矩形色块，用flex来设置弹性系数，三个矩形色块的比例为1
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(
                height: 60.0,
                width: 30.0,
                color: Colors.red,
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                height: 60.0,
                width: 30.0,
                color: Colors.yellow,
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                height: 60.0,
                width: 30.0,
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}