import 'package:flutter/material.dart';

class ContactDetail extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("详情页面",style: TextStyle(color: Colors.yellow),),
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Text('详情页面'),
      ),
    );
  }
}
/*
* Flutter将StatefulWidget设计成了两个类：

也就是你创建StatefulWidget时必须创建两个类：
一个类继承自StatefulWidget，作为Widget树的一部分；
一个类继承自State，用于记录StatefulWidget会变化的状态，并且根据状态的变化，构建出新的Widget；
*
*
* Column小部件：之前我们已经用过，当有垂直方向布局时，我们就使用它；
Row小部件：之前也用过，当时水平方向布局时，我们就使用它；
* */
class MyStatefulWidget extends StatefulWidget
{
 @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyState();
  }
}

class MyState extends State<MyStatefulWidget>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return<>;
  }
}